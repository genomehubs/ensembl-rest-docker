# ensembl-rest-docker
Docker container for setting up an Ensembl REST server

Following instruuctions at https://github.com/Ensembl/ensembl-rest/wiki/REST-Installation-and-Development

These were the testing instructions, which will be converted to a Dockerfile in this repo:

```
sudo lxc launch ubuntu:16.04 resttest -p default
sudo lxc exec resttest bash

export home=/home/ubuntu
export user=ubuntu
export ENSEMBL_VERSION=85

# Install APT dependencies
echo 'deb http://gb.archive.ubuntu.com/ubuntu/ xenial-updates main restricted' >> /etc/apt/sources.list
echo 'deb http://gb.archive.ubuntu.com/ubuntu/ xenial-updates universe'        >> /etc/apt/sources.list
echo 'deb http://gb.archive.ubuntu.com/ubuntu/ xenial-updates multiverse'      >> /etc/apt/sources.list
apt-get update
apt-get upgrade -y
apt-get install -y git vim libxml2-dev cpanminus libxml-libxml-perl libxml-simple-perl \
  libxml-writer-perl libdbi-perl libdbd-mysql-perl build-essential libtest-differences-perl \
  libtest-json-perl libtest-xml-simple-perl zlib1g-dev htslib-test libhts-dev libhts1 libtabixpp-dev \
  tabix samtools \
  libbz2-dev libbz2-1.0 liblzma-dev

wget https://github.com/samtools/htslib/releases/download/1.4/htslib-1.4.tar.bz2
tar xf htslib-1.4.tar.bz2
cd htslib-1.4
make install

# Clean up
apt-get clean

# Go for catalyst & main dependencies from CPAN
cpanm Module::Install Catalyst Catalyst::Devel Hash::Merge Catalyst::Plugin::ConfigLoader \
  Catalyst::Plugin::Static::Simple Catalyst::Plugin::Session::Store::FastMmap \
  Catalyst::Component::InstancePerContext Catalyst::View::JSON Log::Log4perl::Catalyst \
  Catalyst::Plugin::Cache Parse::RecDescent Catalyst::Controller::REST Catalyst::View::TT \
  Catalyst::Plugin::Authentication Catalyst::Plugin::Cache Catalyst::Action::RenderView \
  CHI CHI::Driver::Memcached::Fast \
  Test::XPath Test::XML::Simple \
  Devel::Peek Devel::Cycle Error IO::String PadWalker Test::Builder::Module \

# Install Ensembl Git Tools
if [ -d $home/programs ]; then
  rm -rf $home/programs
fi
mkdir $home/programs
cd $home/programs
git clone https://github.com/Ensembl/ensembl-git-tools.git
cd $home

# Install BioPerl
mkdir -p $home/src
cd $home/src
wget https://github.com/bioperl/bioperl-live/archive/bioperl-release-1-6-9.tar.gz
tar zxf bioperl-release-1-6-9.tar.gz
mv bioperl-live-bioperl-release-1-6-9 bioperl-1.6.9

# Install Ensembl APIs using shallow clone & move onto the release branch
cd $home/src
$home/programs/ensembl-git-tools/bin/git-ensembl --clone rest ensembl-test
$home/programs/ensembl-git-tools/bin/git-ensembl --checkout --branch "release/$ENSEMBL_VERSION" rest ensembl-test

export PERL5LIB=/home/ubuntu/src/bioperl-1.6.9/
cpanm Bio::DB::HTS

wget -O /home/ubuntu/.profile https://raw.githubusercontent.com/andrewyatz/vagrant_machines/master/ensembl/rest/settings/profile
chown -R $user:$user $home/.profile $home/src $home/programs
perl -i -plne 's/use Catalyst qw\//use Catalyst qw\/\n  -Debug\nSession::Store::FastMmap/' $home/src/ensembl-rest/lib/EnsEMBL/REST.pm
perl    -plne 's|reg.pm|/home/ubuntu/src/ensembl-rest/reg.pm|' /home/ubuntu/src/ensembl-rest/ensembl_rest.conf.default > /home/ubuntu/src/ensembl-rest/ensembl_rest.conf
```

Test installation:
```
# login as ubuntu
source ~/.profile
cd ~/src/
perl ensembl/misc-scripts/ping_ensembl.pl
# Installation is good. Connection to Ensembl works and you can query the human core database
cd ~/src/ensembl-rest
./script/ensembl_rest_server.pl
```

Now test with lepbase mysql server:
```
cd ~/src/ensembl-rest
cp ensembl_rest.conf.default ensembl_rest.conf
nano ensembl_rest.conf
  host = mysql.lepbase.org
  port = 3307

  version = 85
  ###### Registry file settings
  # The file to use as a registry file passed into Bio::EnsEMBL::Registry::load_all()
  file = /home/ubuntu/src/ensembl-rest/reg.pm
```

Needs reg.pm - Currently looks like this (needs to be automated based on species in GenomeHubs)
```
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
```

Run like this:
```
cd ~/src/ensembl-rest
./script/ensembl_rest_server.pl
```

Test by visiting http://0:3000
```
curl "http://0:3000/lookup/id/DPOGS200009?content-type=application/json"

{"strand":1,"biotype":"protein_coding","id":"DPOGS200009","end":19144,"start":18185,"seq_region_name":"DPSCF300420","object_type":"Gene","db_type":"core","assembly_name":"v3","logic_name":"OGS2","source":"Reppert Lab","species":"Danaus_plexippus_v3"}
```
