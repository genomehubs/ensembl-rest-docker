use strict;
use Bio::EnsEMBL::Utils::ConfigRegistry;
use Bio::EnsEMBL::DBSQL::DBAdaptor;
use Bio::EnsEMBL::Variation::DBSQL::DBAdaptor;

my @aliases;

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'flowers.bio.ed.ac.uk',
    -user => 'anonymous',
    -port => 3307,
    -species => 'Danaus plexippus',
    -group => 'core',
    -dbname => 'danaus_plexippus_v3_core_32_85_1');

@aliases = ('danaus', 'monarch', 'danaus_plexippus_v3_core_32_85_1', 'danaus_plexippus_v3');

Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => "Danaus plexippus",
    -alias => \@aliases);

1;
