use strict;
use Bio::EnsEMBL::Utils::ConfigRegistry;
use Bio::EnsEMBL::DBSQL::DBAdaptor;
use Bio::EnsEMBL::Variation::DBSQL::DBAdaptor;
use Bio::EnsEMBL::Compara::DBSQL::DBAdaptor;

my @aliases;

new Bio::EnsEMBL::Compara::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -dbname => 'lepbase_compara_32_85',
);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Amyelois transitella',
    -group => 'core',
    -dbname => 'amyelois_transitella_v1_core_32_85_1');
@aliases = ('amyelois_transitella_v1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Amyelois transitella',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Bicyclus anynana',
    -group => 'core',
    -dbname => 'bicyclus_anynana_v1x2_core_32_85_1');
@aliases = ('bicyclus_anynana_v1x2');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Bicyclus anynana',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Bicyclus anynana',
    -group => 'core',
    -dbname => 'bicyclus_anynana_nba01_core_32_85_1');
@aliases = ('bicyclus_anynana_nba01');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Bicyclus anynana',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Bombyx mori',
    -group => 'core',
    -dbname => 'bombyx_mori_asm15162v1_core_32_85_1');
@aliases = ('bombyx_mori_asm15162v1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Bombyx mori',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Bombyx',
    -group => 'core',
    -dbname => 'bombyx_mori_core_32_85_1');
@aliases = ('bombyx_mori');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Bombyx',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Calycopis cecrops',
    -group => 'core',
    -dbname => 'calycopis_cecrops_v1x1_core_32_85_1');
@aliases = ('calycopis_cecrops_v1x1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Calycopis cecrops',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Chilo suppressalis',
    -group => 'core',
    -dbname => 'chilo_suppressalis_csuogs1_core_32_85_1');
@aliases = ('chilo_suppressalis_csuogs1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Chilo suppressalis',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Danaus plexippus',
    -group => 'core',
    -dbname => 'danaus_plexippus_v3_core_32_85_1');
@aliases = ('danaus_plexippus_v3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Danaus plexippus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Danaus',
    -group => 'core',
    -dbname => 'danaus_plexippus_core_32_85_1');
@aliases = ('danaus_plexippus');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Danaus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius erato demophoon',
    -group => 'core',
    -dbname => 'heliconius_erato_demophoon_v1_core_32_85_1');
@aliases = ('heliconius_erato_demophoon_v1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius erato demophoon',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius erato lativitta',
    -group => 'core',
    -dbname => 'heliconius_erato_lativitta_v1_core_32_85_1');
@aliases = ('heliconius_erato_lativitta_v1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius erato lativitta',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius melpomene melpomene',
    -group => 'core',
    -dbname => 'heliconius_melpomene_melpomene_hmel2_core_32_85_1');
@aliases = ('heliconius_melpomene_melpomene_hmel2');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius melpomene melpomene',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius',
    -group => 'core',
    -dbname => 'heliconius_melpomene_core_32_85_1');
@aliases = ('heliconius_melpomene');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Junonia coenia',
    -group => 'core',
    -dbname => 'junonia_coenia_jc10_core_32_85_1');
@aliases = ('junonia_coenia_jc10');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Junonia coenia',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Lerema accius',
    -group => 'core',
    -dbname => 'lerema_accius_v1x1_core_32_85_1');
@aliases = ('lerema_accius_v1x1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Lerema accius',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Limnephilus lunatus',
    -group => 'core',
    -dbname => 'limnephilus_lunatus_v1_core_32_85_1');
@aliases = ('limnephilus_lunatus_v1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Limnephilus lunatus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Manduca sexta',
    -group => 'core',
    -dbname => 'manduca_sexta_msex1_core_32_85_1');
@aliases = ('manduca_sexta_msex1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Manduca sexta',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Melitaea',
    -group => 'core',
    -dbname => 'melitaea_cinxia_core_32_85_1');
@aliases = ('melitaea_cinxia');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Melitaea',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Operophtera brumata',
    -group => 'core',
    -dbname => 'operophtera_brumata_v1_core_32_85_1');
@aliases = ('operophtera_brumata_v1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Operophtera brumata',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Papilio glaucus',
    -group => 'core',
    -dbname => 'papilio_glaucus_v1x1_core_32_85_1');
@aliases = ('papilio_glaucus_v1x1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Papilio glaucus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Papilio machaon',
    -group => 'core',
    -dbname => 'papilio_machaon_papma1_core_32_85_1');
@aliases = ('papilio_machaon_papma1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Papilio machaon',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Papilio polytes',
    -group => 'core',
    -dbname => 'papilio_polytes_ppol1_core_32_85_1');
@aliases = ('papilio_polytes_ppol1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Papilio polytes',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Papilio polytes ppol1',
    -group => 'core',
    -dbname => 'papilio_polytes_ppol1_refseq_core_32_85_1');
@aliases = ('papilio_polytes_ppol1_refseq');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Papilio polytes ppol1',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Papilio xuthus',
    -group => 'core',
    -dbname => 'papilio_xuthus_papxu1_core_32_85_1');
@aliases = ('papilio_xuthus_papxu1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Papilio xuthus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Papilio xuthus',
    -group => 'core',
    -dbname => 'papilio_xuthus_pxut1_core_32_85_1');
@aliases = ('papilio_xuthus_pxut1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Papilio xuthus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Papilio xuthus pxut1',
    -group => 'core',
    -dbname => 'papilio_xuthus_pxut1_refseq_core_32_85_1');
@aliases = ('papilio_xuthus_pxut1_refseq');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Papilio xuthus pxut1',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Phoebis sennae',
    -group => 'core',
    -dbname => 'phoebis_sennae_v1x1_core_32_85_1');
@aliases = ('phoebis_sennae_v1x1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Phoebis sennae',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Pieris napi',
    -group => 'core',
    -dbname => 'pieris_napi_pnv1x1_core_32_85_1');
@aliases = ('pieris_napi_pnv1x1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Pieris napi',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Pieris rapae',
    -group => 'core',
    -dbname => 'pieris_rapae_pr1hirise_core_32_85_1');
@aliases = ('pieris_rapae_pr1hirise');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Pieris rapae',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Plodia interpunctella',
    -group => 'core',
    -dbname => 'plodia_interpunctella_v1_core_32_85_1');
@aliases = ('plodia_interpunctella_v1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Plodia interpunctella',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Plutella xylostella',
    -group => 'core',
    -dbname => 'plutella_xylostella_pacbiov1_core_32_85_1');
@aliases = ('plutella_xylostella_pacbiov1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Plutella xylostella',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Plutella xylostella',
    -group => 'core',
    -dbname => 'plutella_xylostella_dbmfjv1x1_core_32_85_1');
@aliases = ('plutella_xylostella_dbmfjv1x1');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Plutella xylostella',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Agraulis vanillae',
    -group => 'core',
    -dbname => 'agraulis_vanillae_helico3_core_32_85_1');
@aliases = ('agraulis_vanillae_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Agraulis vanillae',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Dryas iulia',
    -group => 'core',
    -dbname => 'dryas_iulia_helico3_core_32_85_1');
@aliases = ('dryas_iulia_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Dryas iulia',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Eueides tales',
    -group => 'core',
    -dbname => 'eueides_tales_helico3_core_32_85_1');
@aliases = ('eueides_tales_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Eueides tales',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius besckei',
    -group => 'core',
    -dbname => 'heliconius_besckei_helico3_core_32_85_1');
@aliases = ('heliconius_besckei_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius besckei',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius burneyi',
    -group => 'core',
    -dbname => 'heliconius_burneyi_helico3_core_32_85_1');
@aliases = ('heliconius_burneyi_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius burneyi',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius cydno',
    -group => 'core',
    -dbname => 'heliconius_cydno_helico3_core_32_85_1');
@aliases = ('heliconius_cydno_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius cydno',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius demeter',
    -group => 'core',
    -dbname => 'heliconius_demeter_helico3_core_32_85_1');
@aliases = ('heliconius_demeter_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius demeter',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius elevatus',
    -group => 'core',
    -dbname => 'heliconius_elevatus_helico3_core_32_85_1');
@aliases = ('heliconius_elevatus_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius elevatus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius erato mother',
    -group => 'core',
    -dbname => 'heliconius_erato_mother_helico3_core_32_85_1');
@aliases = ('heliconius_erato_mother_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius erato mother',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius erato x himera f1',
    -group => 'core',
    -dbname => 'heliconius_erato_x_himera_f1_helico3_core_32_85_1');
@aliases = ('heliconius_erato_x_himera_f1_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius erato x himera f1',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius hecale',
    -group => 'core',
    -dbname => 'heliconius_hecale_helico3_core_32_85_1');
@aliases = ('heliconius_hecale_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius hecale',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius hecale old',
    -group => 'core',
    -dbname => 'heliconius_hecale_old_helico3_core_32_85_1');
@aliases = ('heliconius_hecale_old_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius hecale old',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius hecalesia',
    -group => 'core',
    -dbname => 'heliconius_hecalesia_helico3_core_32_85_1');
@aliases = ('heliconius_hecalesia_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius hecalesia',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius himera',
    -group => 'core',
    -dbname => 'heliconius_himera_helico3_core_32_85_1');
@aliases = ('heliconius_himera_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius himera',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius himera father',
    -group => 'core',
    -dbname => 'heliconius_himera_father_helico3_core_32_85_1');
@aliases = ('heliconius_himera_father_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius himera father',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius melpomene',
    -group => 'core',
    -dbname => 'heliconius_melpomene_helico3_core_32_85_1');
@aliases = ('heliconius_melpomene_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius melpomene',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius numata',
    -group => 'core',
    -dbname => 'heliconius_numata_helico3_core_32_85_1');
@aliases = ('heliconius_numata_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius numata',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius pardalinus',
    -group => 'core',
    -dbname => 'heliconius_pardalinus_helico3_core_32_85_1');
@aliases = ('heliconius_pardalinus_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius pardalinus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius sara',
    -group => 'core',
    -dbname => 'heliconius_sara_helico3_core_32_85_1');
@aliases = ('heliconius_sara_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius sara',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius telesiphe',
    -group => 'core',
    -dbname => 'heliconius_telesiphe_helico3_core_32_85_1');
@aliases = ('heliconius_telesiphe_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius telesiphe',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius telesiphe contaminated',
    -group => 'core',
    -dbname => 'heliconius_telesiphe_contaminated_helico3_core_32_85_1');
@aliases = ('heliconius_telesiphe_contaminated_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius telesiphe contaminated',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Heliconius timareta',
    -group => 'core',
    -dbname => 'heliconius_timareta_helico3_core_32_85_1');
@aliases = ('heliconius_timareta_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Heliconius timareta',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Laparus doris',
    -group => 'core',
    -dbname => 'laparus_doris_helico3_core_32_85_1');
@aliases = ('laparus_doris_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Laparus doris',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Neruda aoede contaminated',
    -group => 'core',
    -dbname => 'neruda_aoede_contaminated_helico3_core_32_85_1');
@aliases = ('neruda_aoede_contaminated_helico3');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Neruda aoede contaminated',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Callimorpha dominula',
    -group => 'core',
    -dbname => 'callimorpha_dominula_k41_core_32_85_1');
@aliases = ('callimorpha_dominula_k41');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Callimorpha dominula',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Cameraria ohridella',
    -group => 'core',
    -dbname => 'cameraria_ohridella_k51_core_32_85_1');
@aliases = ('cameraria_ohridella_k51');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Cameraria ohridella',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Glyphotaelius pellucidus',
    -group => 'core',
    -dbname => 'glyphotaelius_pellucidus_k51_core_32_85_1');
@aliases = ('glyphotaelius_pellucidus_k51');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Glyphotaelius pellucidus',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Hepialus sylvina',
    -group => 'core',
    -dbname => 'hepialus_sylvina_k41_core_32_85_1');
@aliases = ('hepialus_sylvina_k41');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Hepialus sylvina',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Pararge aegeria',
    -group => 'core',
    -dbname => 'pararge_aegeria_k51_core_32_85_1');
@aliases = ('pararge_aegeria_k51');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Pararge aegeria',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Polygonia c album',
    -group => 'core',
    -dbname => 'polygonia_c_album_k51_core_32_85_1');
@aliases = ('polygonia_c_album_k51');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Polygonia c album',
    -alias => \@aliases);

new Bio::EnsEMBL::DBSQL::DBAdaptor(
    -host => 'mysql.lepbase.org',
    -user => 'anonymous',
    -port =>  3307,
    -species => 'Spodoptera frugiperda',
    -group => 'core',
    -dbname => 'spodoptera_frugiperda_v2_core_32_85_1');
@aliases = ('spodoptera_frugiperda_v2');
Bio::EnsEMBL::Utils::ConfigRegistry->add_alias(
    -species => 'Spodoptera frugiperda',
    -alias => \@aliases);

1;
