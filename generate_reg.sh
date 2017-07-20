#!/bin/bash

# check script was called correctly
INI=$1
if [ -z $INI ]; then
  echo "Usage: './generate_reg.sh <filename.ini>'\n";
  exit 1
fi

REG=reg.pm

# set species core database connection parameters
DB_HOST=$(awk -F "=" '/DB_HOST/ {print $2}' $INI | tr -d ' ')
if [ $DB_HOST = "localhost" ]; then
  DB_HOST=$MYSQL_SERVER_PORT_3306_TCP_ADDR
fi
DB_PORT=$(awk -F "=" '/DB_PORT/ {print $2}' $INI | tr -d ' ')
DB_USER=$(awk -F "=" '/DB_USER/ {print $2}' $INI | tr -d ' ')
DB_PASS=$(awk -F "=" '/DB_PASS/ {print $2}' $INI | tr -d ' ')
SPECIES_DBS=$(perl -lne '$s.=$_;END{if ($s=~m/SPECIES_DBS\s*=\s*\[\s*(.+?)\s*\]/){print $1}}' $INI)

echo $DB_HOST
echo $DB_PORT
echo $DB_USER
echo $DB_PASS
for DB in $SPECIES_DBS
do
  echo $DB
done

##

echo "Generating ensembl REST API registry perl code: $REG"
printf "use strict;\nuse Bio::EnsEMBL::Utils::ConfigRegistry;\nuse Bio::EnsEMBL::DBSQL::DBAdaptor;\nuse Bio::EnsEMBL::Variation::DBSQL::DBAdaptor;\nmy @aliases;\n\n" > $REG
for DB in $SPECIES_DBS
do
  SP_LOWER=`echo $DB | awk -F'_core_' '{print $1}'`
  SP_UC_FIRST="$(tr '[:lower:]' '[:upper:]' <<< ${SP_LOWER:0:1})${SP_LOWER:1}"
  SPECIES_NAME=`echo $DB | perl -lne 's/_/ /g; print uc($1).$2 if /^(.)(.*) \S+? core .*/'`
  printf "new Bio::EnsEMBL::DBSQL::DBAdaptor(\n" >> $REG
  printf "    -host => '$DB_HOST',\n" >> $REG
  printf "    -user => '$DB_USER',\n" >> $REG
  printf "    -port =>  $DB_PORT,\n"  >> $REG
  printf "    -species => '$SPECIES_NAME',\n" >> $REG
  printf "    -group => 'core',\n"     >> $REG
  printf "    -dbname => '$DB');\n"    >> $REG
  printf "@aliases = ('$SP_LOWER');\n" >> $REG
  printf "Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(\n    -species => '$SPECIES_NAME',\n    -alias => \@aliases);\n\n" >> $REG;
done
printf "1;\n"   >> $REG
