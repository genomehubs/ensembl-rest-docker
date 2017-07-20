use strict;
use Bio::EnsEMBL::Utils::ConfigRegistry;
use Bio::EnsEMBL::DBSQL::DBAdaptor;
use Bio::EnsEMBL::Variation::DBSQL::DBAdaptor;
my @aliases;

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Acanthocheilonema viteae',
    -group => 'core',
    -dbname => 'acanthocheilonema_viteae_nAv1_core_32_85_1');
@aliases = ('acanthocheilonema_viteae_nAv1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Acanthocheilonema viteae',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Anisakis simplex',
    -group => 'core',
    -dbname => 'anisakis_simplex_asv1_core_32_85_1');
@aliases = ('anisakis_simplex_asv1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Anisakis simplex',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Ascaris suum',
    -group => 'core',
    -dbname => 'ascaris_suum_asu2_core_32_85_1');
@aliases = ('ascaris_suum_asu2');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Ascaris suum',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Bicyclus anynana',
    -group => 'core',
    -dbname => 'bicyclus_anynana_v1x2_core_32_85_1');
@aliases = ('bicyclus_anynana_v1x2');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Bicyclus anynana',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Dictyocaulus viviparus',
    -group => 'core',
    -dbname => 'dictyocaulus_viviparus_ndv1_core_32_85_1');
@aliases = ('dictyocaulus_viviparus_ndv1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Dictyocaulus viviparus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Hypsibius dujardini',
    -group => 'core',
    -dbname => 'hypsibius_dujardini_nhd301_core_32_85_1');
@aliases = ('hypsibius_dujardini_nhd301');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Hypsibius dujardini',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Lymnaea stagnalis',
    -group => 'core',
    -dbname => 'lymnaea_stagnalis_gls1_core_32_85_1');
@aliases = ('lymnaea_stagnalis_gls1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Lymnaea stagnalis',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Onchocerca gutturosa',
    -group => 'core',
    -dbname => 'onchocerca_gutturosa_nog1x1_core_32_85_1');
@aliases = ('onchocerca_gutturosa_nog1x1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Onchocerca gutturosa',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Oscheius tipulae',
    -group => 'core',
    -dbname => 'oscheius_tipulae_not2_core_32_85_1');
@aliases = ('oscheius_tipulae_not2');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Oscheius tipulae',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Plectus murrayi',
    -group => 'core',
    -dbname => 'plectus_murrayi_npm2_core_32_85_1');
@aliases = ('plectus_murrayi_npm2');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Plectus murrayi',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Ramazzottius varieornatus',
    -group => 'core',
    -dbname => 'ramazzottius_varieornatus_v1_core_32_85_1');
@aliases = ('ramazzottius_varieornatus_v1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Ramazzottius varieornatus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'genomehubs-mysql',
    -user => 'anonymous',
    -port =>  3306,
    -species => 'Setaria labiatopapillosa',
    -group => 'core',
    -dbname => 'setaria_labiatopapillosa_nsl1x1_core_32_85_1');
@aliases = ('setaria_labiatopapillosa_nsl1x1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Setaria labiatopapillosa',
    -alias => \@aliases);

1;
