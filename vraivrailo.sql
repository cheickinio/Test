/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     02/11/2018 11:36:07                          */
/*==============================================================*/


drop table if exists Activite;

drop table if exists Association;

drop table if exists Bourse;

drop table if exists Departement;

drop table if exists DetailChefDepartement;

drop table if exists DetailChefDirection;

drop table if exists DetailChefEquipe;

drop table if exists DetailChefUnite;

drop table if exists DetailCoAuteur;

drop table if exists DetailDiplomeExterne;

drop table if exists DetailDiplomeInterne;

drop table if exists DetailPartenariatTechnique;

drop table if exists DetailStatutProjet;

drop table if exists Direction;

drop table if exists Equipe;

drop table if exists EquipementAquis;

drop table if exists Evenement;

drop table if exists Examen;

drop table if exists Experience;

drop table if exists ExperienceProfessionnelle;

drop table if exists ExperienceSpecifique;

drop table if exists FormationAcademique;

drop table if exists FormationEnCours;

drop table if exists IdeeProjet;

drop table if exists Image;

drop table if exists InfoExamen;

drop table if exists Institution;

drop table if exists Laboratoire;

drop table if exists Langue;

drop table if exists NiveauLangueExterne;

drop table if exists NiveauLangueInterne;

drop table if exists Objectif;

drop table if exists PersonneExterne;

drop table if exists PersonneInterne;

drop table if exists Perspectives;

drop table if exists PrestationDeService;

drop table if exists Projet;

drop table if exists Publication;

drop table if exists Qualification;

drop table if exists Reference;

drop table if exists Resultat;

drop table if exists Section;

drop table if exists Societe;

drop table if exists Statut;

drop table if exists TypeDiplome;

drop table if exists TypeFormationEnCours;

drop table if exists TypeInstitution;

drop table if exists TypePublication;

drop table if exists UniteRecherche;

drop table if exists associeExterne;

drop table if exists associeInterne;

drop table if exists chefLaboratoire;

drop table if exists coInvestigateurExterne;

drop table if exists coInvestigateurInterne;

drop table if exists investigateurExterne;

drop table if exists investigateurInterne;

drop table if exists personneAssociation;

drop table if exists qualificationPersonneExterne;

drop table if exists qualificationPersonneInterne;

/*==============================================================*/
/* Table: Activite                                              */
/*==============================================================*/
create table Activite
(
   identifiantActivite  int not null,
   Pro_codeMuraz        int not null,
   contenu              varchar(254),
   dateActivite         datetime,
   primary key (identifiantActivite)
);

/*==============================================================*/
/* Table: Association                                           */
/*==============================================================*/
create table Association
(
   identifiantAssociation int not null,
   numeroPv             int,
   nomAssociation       varchar(254),
   typeAsssociation     varchar(254),
   but                  varchar(254),
   corpsProffesorale    varchar(254),
   primary key (identifiantAssociation)
);

/*==============================================================*/
/* Table: Bourse                                                */
/*==============================================================*/
create table Bourse
(
   identifiantBourse    int not null,
   Pro_codeMuraz        int,
   Per_identifiantPersonne int,
   libelletBourse       varchar(254),
   primary key (identifiantBourse)
);

/*==============================================================*/
/* Table: Departement                                           */
/*==============================================================*/
create table Departement
(
   identifiantDepartement int not null,
   Dir_idenfiantDirection int not null,
   nomDepartement       varchar(254),
   descriptionDepartement varchar(254),
   objectifDepartement  int,
   primary key (identifiantDepartement)
);

/*==============================================================*/
/* Table: DetailChefDepartement                                 */
/*==============================================================*/
create table DetailChefDepartement
(
   Dep_identifiantDepartement int not null,
   Per_identifiantPersonne int not null,
   debutMandant         datetime,
   finMandant           datetime,
   primary key (Dep_identifiantDepartement, Per_identifiantPersonne)
);

/*==============================================================*/
/* Table: DetailChefDirection                                   */
/*==============================================================*/
create table DetailChefDirection
(
   Per_identifiantPersonne int not null,
   Dir_idenfiantDirection int not null,
   debutMandant         datetime,
   finMandant           datetime,
   primary key (Per_identifiantPersonne, Dir_idenfiantDirection)
);

/*==============================================================*/
/* Table: DetailChefEquipe                                      */
/*==============================================================*/
create table DetailChefEquipe
(
   Per_identifiantPersonne int not null,
   Equ_identifiantEquipe int not null,
   debutMandat          datetime,
   finMandat            datetime,
   primary key (Per_identifiantPersonne, Equ_identifiantEquipe)
);

/*==============================================================*/
/* Table: DetailChefUnite                                       */
/*==============================================================*/
create table DetailChefUnite
(
   Per_identifiantPersonne int not null,
   Uni_identifientUnite int not null,
   dateDebut            datetime,
   dateFin              datetime,
   primary key (Per_identifiantPersonne, Uni_identifientUnite)
);

/*==============================================================*/
/* Table: DetailCoAuteur                                        */
/*==============================================================*/
create table DetailCoAuteur
(
   Per_identifiantPersonne int not null,
   Pub_identifiantPublication int not null,
   ordreDimplication    int,
   descriptionParticipation varchar(254),
   primary key (Per_identifiantPersonne, Pub_identifiantPublication)
);

/*==============================================================*/
/* Table: DetailDiplomeExterne                                  */
/*==============================================================*/
create table DetailDiplomeExterne
(
   Per_identifiantPersonne int not null,
   Typ_identifiantDiplome int not null,
   numeroDiplome        int,
   dateDoptention       datetime,
   primary key (Per_identifiantPersonne, Typ_identifiantDiplome)
);

/*==============================================================*/
/* Table: DetailDiplomeInterne                                  */
/*==============================================================*/
create table DetailDiplomeInterne
(
   Per_identifiantPersonne int not null,
   Typ_identifiantDiplome int not null,
   numeroDiplome        int,
   dateDoptention       datetime,
   primary key (Per_identifiantPersonne, Typ_identifiantDiplome)
);

/*==============================================================*/
/* Table: DetailPartenariatTechnique                            */
/*==============================================================*/
create table DetailPartenariatTechnique
(
   Ins_identifiantInstitution int not null,
   Pro_codeMuraz        int not null,
   descriptionPartenariat varchar(254),
   primary key (Ins_identifiantInstitution, Pro_codeMuraz)
);

/*==============================================================*/
/* Table: DetailStatutProjet                                    */
/*==============================================================*/
create table DetailStatutProjet
(
   Sta_identifiantStatut int not null,
   Pro_codeMuraz        int not null,
   dateDebutStatut      datetime,
   dateFinStatut        datetime,
   primary key (Sta_identifiantStatut, Pro_codeMuraz)
);

/*==============================================================*/
/* Table: Direction                                             */
/*==============================================================*/
create table Direction
(
   idenfiantDirection   int not null,
   nomDirection         varchar(254),
   primary key (idenfiantDirection)
);

/*==============================================================*/
/* Table: Equipe                                                */
/*==============================================================*/
create table Equipe
(
   identifiantEquipe    int not null,
   Dep_identifiantDepartement int not null,
   nomEquipe            varchar(254),
   descriptionEquipe    varchar(254),
   objectifEquipe       varchar(254),
   primary key (identifiantEquipe)
);

/*==============================================================*/
/* Table: EquipementAquis                                       */
/*==============================================================*/
create table EquipementAquis
(
   identifiantEquipement int not null,
   Pro_codeMuraz        int not null,
   typeEquipement       varchar(254),
   valeurEquipement     numeric(8,0),
   description          varchar(254),
   primary key (identifiantEquipement)
);

/*==============================================================*/
/* Table: Evenement                                             */
/*==============================================================*/
create table Evenement
(
   identifiantEvenement int not null,
   libelleEvenement     int,
   dateDebut            datetime,
   dateFin              datetime,
   primary key (identifiantEvenement)
);

/*==============================================================*/
/* Table: Examen                                                */
/*==============================================================*/
create table Examen
(
   identifiantExamen    int not null,
   libelleExamen        varchar(254),
   primary key (identifiantExamen)
);

/*==============================================================*/
/* Table: Experience                                            */
/*==============================================================*/
create table Experience
(
   identifiantExperience int not null,
   Per_identifiantPersonne int not null,
   dateDebutExperience  datetime,
   dateFinExperience    datetime,
   pays                 varchar(254),
   primary key (identifiantExperience)
);

/*==============================================================*/
/* Table: ExperienceProfessionnelle                             */
/*==============================================================*/
create table ExperienceProfessionnelle
(
   Exp_identifiantExperience int not null,
   Soc_identifiantSociete int not null,
   posteOccupe          varchar(254),
   description          varchar(254),
   primary key (Exp_identifiantExperience)
);

/*==============================================================*/
/* Table: ExperienceSpecifique                                  */
/*==============================================================*/
create table ExperienceSpecifique
(
   Exp_identifiantExperience int not null,
   resume               varchar(254),
   primary key (Exp_identifiantExperience)
);

/*==============================================================*/
/* Table: FormationAcademique                                   */
/*==============================================================*/
create table FormationAcademique
(
   identifiantFormationAcademique int not null,
   Per_identifiantPersonne int not null,
   nomFormationAcademique varchar(254),
   dateFormationAcademique datetime,
   lieuFormationAcademique varchar(254),
   primary key (identifiantFormationAcademique)
);

/*==============================================================*/
/* Table: FormationEnCours                                      */
/*==============================================================*/
create table FormationEnCours
(
   identifiantFormation int not null,
   Typ_identifiantTypeFormationEncours int not null,
   libelleFormation     varchar(254),
   lieuFormation        varchar(254),
   primary key (identifiantFormation)
);

/*==============================================================*/
/* Table: IdeeProjet                                            */
/*==============================================================*/
create table IdeeProjet
(
   identifiantIdeeProjet int not null,
   Ins_identifiantInstitution int,
   Ins_identifiantInstitution2 int not null,
   Pro_codeMuraz        int,
   Per_identifiantPersonne int,
   Per_identifiantPersonne2 int,
   cheminProtocole      varchar(254),
   dateSoumission       varchar(254),
   primary key (identifiantIdeeProjet)
);

/*==============================================================*/
/* Table: Image                                                 */
/*==============================================================*/
create table Image
(
   identifiantImage     int not null,
   Eve_identifiantEvenement int not null,
   imageEvenement       varchar(254),
   cheminImage          varchar(254),
   descriptionImage     varchar(254),
   primary key (identifiantImage)
);

/*==============================================================*/
/* Table: InfoExamen                                            */
/*==============================================================*/
create table InfoExamen
(
   Sec_identifiatUnite  int not null,
   Exa_identifiantExamen int not null,
   anneeExamen          date not null,
   nombreExamen         int,
   primary key (Sec_identifiatUnite, Exa_identifiantExamen, anneeExamen)
);

/*==============================================================*/
/* Table: Institution                                           */
/*==============================================================*/
create table Institution
(
   identifiantInstitution int not null,
   Typ_identifiantInstituion int not null,
   nomInstitution       varchar(254),
   emailInstitution     varchar(254),
   adresseInstitution   varchar(254),
   paysInstitution      varchar(254),
   primary key (identifiantInstitution)
);

/*==============================================================*/
/* Table: Laboratoire                                           */
/*==============================================================*/
create table Laboratoire
(
   identifiantLaboratoire int not null,
   Dep_identifiantDepartement int not null,
   nomLaboratoire       varchar(254),
   primary key (identifiantLaboratoire)
);

/*==============================================================*/
/* Table: Langue                                                */
/*==============================================================*/
create table Langue
(
   idLangue             int not null,
   intituleLangue       varchar(254),
   primary key (idLangue)
);

/*==============================================================*/
/* Table: NiveauLangueExterne                                   */
/*==============================================================*/
create table NiveauLangueExterne
(
   Per_identifiantPersonne int not null,
   Lan_idLangue         int not null,
   niveauLu             int,
   niveauParle          int,
   niveauEcrit          int,
   primary key (Per_identifiantPersonne, Lan_idLangue)
);

/*==============================================================*/
/* Table: NiveauLangueInterne                                   */
/*==============================================================*/
create table NiveauLangueInterne
(
   Per_identifiantPersonne int not null,
   Lan_idLangue         int not null,
   niveauLu             int,
   niveauParle          int,
   niveauEcrit          int,
   primary key (Per_identifiantPersonne, Lan_idLangue)
);

/*==============================================================*/
/* Table: Objectif                                              */
/*==============================================================*/
create table Objectif
(
   identifiantObectif   int not null,
   Pro_codeMuraz        int not null,
   intiule              varchar(254),
   description          varchar(254),
   typeObjectif         varchar(254),
   primary key (identifiantObectif)
);

/*==============================================================*/
/* Table: PersonneExterne                                       */
/*==============================================================*/
create table PersonneExterne
(
   identifiantPersonne  int not null,
   Ins_identifiantInstitution int not null,
   posteOccupe          varchar(254),
   nom                  varchar(254),
   prenom               varchar(254),
   dateNaissance        datetime,
   lieuNaissance        varchar(254),
   nationalite          varchar(254),
   email                varchar(254),
   residence            varchar(254),
   login                varchar(254),
   motDePasse           varchar(254),
   primary key (identifiantPersonne)
);

/*==============================================================*/
/* Table: PersonneInterne                                       */
/*==============================================================*/
create table PersonneInterne
(
   identifiantPersonne  int not null,
   Equ_identifiantEquipe int,
   Uni_identifientUnite int,
   For_identifiantFormation int,
   poste                varchar(254),
   nom                  varchar(254),
   prenom               varchar(254),
   dateNaissance        datetime,
   lieuNaissance        varchar(254),
   nationalite          varchar(254),
   email                varchar(254),
   residence            varchar(254),
   login                varchar(254),
   motDePasse           varchar(254),
   primary key (identifiantPersonne)
);

/*==============================================================*/
/* Table: Perspectives                                          */
/*==============================================================*/
create table Perspectives
(
   identifiantPerspective int not null,
   Pro_codeMuraz        int not null,
   contenu              varchar(254),
   primary key (identifiantPerspective)
);

/*==============================================================*/
/* Table: PrestationDeService                                   */
/*==============================================================*/
create table PrestationDeService
(
   identifiantPrestation int not null,
   Ins_identifiantInstitution int not null,
   Equ_identifiantEquipe int,
   nomDescription       varchar(254),
   typePrestation       varchar(254),
   primary key (identifiantPrestation)
);

/*==============================================================*/
/* Table: Projet                                                */
/*==============================================================*/
create table Projet
(
   codeMuraz            int not null,
   Uni_identifientUnite int,
   Equ_identifiantEquipe int,
   Ide_identifiantIdeeProjet int,
   Ins_identifiantInstitution int,
   intitule             varchar(254),
   dureeProjet          varchar(254),
   resumeProjet         varchar(254),
   budgetProjet         varchar(254),
   siteDeMiseEnOeuvre   varchar(254),
   contexteProjet       varchar(254),
   nombreEmploi         int,
   fraisIndirectverseCM int,
   typeProjet           varchar(254),
   volumeProjetFinance  int,
   anneeFinancementProjet datetime,
   questionDeRecherche  varchar(254),
   resumeDesMethodeEtude varchar(254),
   beneficeNational     varchar(254),
   beneficeInstitutionnel varchar(254),
   Pro_beneficeNational varchar(254),
   beneficeInstitutionnelle varchar(254),
   primary key (codeMuraz)
);

/*==============================================================*/
/* Table: Publication                                           */
/*==============================================================*/
create table Publication
(
   identifiantPublication int not null,
   Typ_identifiantTypePublication int not null,
   Eve_identifiantEvenement int,
   Pro_codeMuraz        int,
   Per_identifiantPersonne int not null,
   libellePublication   varchar(254),
   description          varchar(254),
   datePublication      datetime,
   sourcePublication    varchar(254),
   media                varchar(254),
   primary key (identifiantPublication)
);

/*==============================================================*/
/* Table: Qualification                                         */
/*==============================================================*/
create table Qualification
(
   identifiantQualification int not null,
   nomQualification     varchar(254),
   descriptionQualification varchar(254),
   typeQualification    varchar(254),
   primary key (identifiantQualification)
);

/*==============================================================*/
/* Table: Reference                                             */
/*==============================================================*/
create table Reference
(
   identifiantRessource int not null,
   Per_identifiantPersonne int not null,
   nomRessource         varchar(254),
   prenomRessource      varchar(254),
   emailRessource       varchar(254),
   telephoneRessource   int,
   primary key (identifiantRessource)
);

/*==============================================================*/
/* Table: Resultat                                              */
/*==============================================================*/
create table Resultat
(
   identifiantResultat  int not null,
   Ide_identifiantIdeeProjet int not null,
   Pro_codeMuraz        int not null,
   contenu              varchar(254),
   dateRealisation      datetime,
   detailResutltat      varchar(254),
   realiseOuPAs         bool,
   primary key (identifiantResultat)
);

/*==============================================================*/
/* Table: Section                                               */
/*==============================================================*/
create table Section
(
   identifiatUnite      int not null,
   Lab_identifiantLaboratoire int not null,
   nomUnite             varchar(254),
   primary key (identifiatUnite)
);

/*==============================================================*/
/* Table: Societe                                               */
/*==============================================================*/
create table Societe
(
   identifiantSociete   int not null,
   nomSociete           varchar(254),
   adresseSociete       varchar(254),
   emailSociete         varchar(254),
   primary key (identifiantSociete)
);

/*==============================================================*/
/* Table: Statut                                                */
/*==============================================================*/
create table Statut
(
   identifiantStatut    int not null,
   intituleStatut       varchar(254),
   descuiptionStatut    varchar(254),
   primary key (identifiantStatut)
);

/*==============================================================*/
/* Table: TypeDiplome                                           */
/*==============================================================*/
create table TypeDiplome
(
   identifiantDiplome   int not null,
   libelleDiplome       varchar(254),
   niveauDiplome        int,
   primary key (identifiantDiplome)
);

/*==============================================================*/
/* Table: TypeFormationEnCours                                  */
/*==============================================================*/
create table TypeFormationEnCours
(
   identifiantTypeFormationEncours int not null,
   intituleTypeFormation varchar(254),
   primary key (identifiantTypeFormationEncours)
);

/*==============================================================*/
/* Table: TypeInstitution                                       */
/*==============================================================*/
create table TypeInstitution
(
   identifiantInstituion int not null,
   intituleType         varchar(254),
   primary key (identifiantInstituion)
);

/*==============================================================*/
/* Table: TypePublication                                       */
/*==============================================================*/
create table TypePublication
(
   identifiantTypePublication int not null,
   intituleType         varchar(254),
   descriptionType      varchar(254),
   primary key (identifiantTypePublication)
);

/*==============================================================*/
/* Table: UniteRecherche                                        */
/*==============================================================*/
create table UniteRecherche
(
   identifientUnite     int not null,
   Lab_identifiantLaboratoire int,
   nomUnite             varchar(254),
   primary key (identifientUnite)
);

/*==============================================================*/
/* Table: associeExterne                                        */
/*==============================================================*/
create table associeExterne
(
   Per_identifiantPersonne int not null,
   Equ_identifiantEquipe int not null,
   primary key (Per_identifiantPersonne, Equ_identifiantEquipe)
);

/*==============================================================*/
/* Table: associeInterne                                        */
/*==============================================================*/
create table associeInterne
(
   Per_identifiantPersonne int not null,
   Equ_identifiantEquipe int not null,
   primary key (Per_identifiantPersonne, Equ_identifiantEquipe)
);

/*==============================================================*/
/* Table: chefLaboratoire                                       */
/*==============================================================*/
create table chefLaboratoire
(
   Per_identifiantPersonne int not null,
   Lab_identifiantLaboratoire int not null,
   primary key (Per_identifiantPersonne, Lab_identifiantLaboratoire)
);

/*==============================================================*/
/* Table: coInvestigateurExterne                                */
/*==============================================================*/
create table coInvestigateurExterne
(
   Per_identifiantPersonne int not null,
   Pro_codeMuraz        int not null,
   primary key (Per_identifiantPersonne, Pro_codeMuraz)
);

/*==============================================================*/
/* Table: coInvestigateurInterne                                */
/*==============================================================*/
create table coInvestigateurInterne
(
   Per_identifiantPersonne int not null,
   Pro_codeMuraz        int not null,
   primary key (Per_identifiantPersonne, Pro_codeMuraz)
);

/*==============================================================*/
/* Table: investigateurExterne                                  */
/*==============================================================*/
create table investigateurExterne
(
   Per_identifiantPersonne int not null,
   Pro_codeMuraz        int not null,
   primary key (Per_identifiantPersonne, Pro_codeMuraz)
);

/*==============================================================*/
/* Table: investigateurInterne                                  */
/*==============================================================*/
create table investigateurInterne
(
   Per_identifiantPersonne int not null,
   Pro_codeMuraz        int not null,
   primary key (Per_identifiantPersonne, Pro_codeMuraz)
);

/*==============================================================*/
/* Table: personneAssociation                                   */
/*==============================================================*/
create table personneAssociation
(
   Per_identifiantPersonne int not null,
   Ass_identifiantAssociation int not null,
   primary key (Per_identifiantPersonne, Ass_identifiantAssociation)
);

/*==============================================================*/
/* Table: qualificationPersonneExterne                          */
/*==============================================================*/
create table qualificationPersonneExterne
(
   Per_identifiantPersonne int not null,
   Qua_identifiantQualification int not null,
   primary key (Per_identifiantPersonne, Qua_identifiantQualification)
);

/*==============================================================*/
/* Table: qualificationPersonneInterne                          */
/*==============================================================*/
create table qualificationPersonneInterne
(
   Per_identifiantPersonne int not null,
   Qua_identifiantQualification int not null,
   primary key (Per_identifiantPersonne, Qua_identifiantQualification)
);

alter table Activite add constraint FK_activitesMene foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table Bourse add constraint FK_bourseProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table Bourse add constraint FK_personneInterneBourse foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table Departement add constraint FK_affectationDepartement foreign key (Dir_idenfiantDirection)
      references Direction (idenfiantDirection) on delete restrict on update restrict;

alter table DetailChefDepartement add constraint FK_chefDepartementPersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table DetailChefDepartement add constraint FK_chefDepartementDepartement foreign key (Dep_identifiantDepartement)
      references Departement (identifiantDepartement) on delete restrict on update restrict;

alter table DetailChefDirection add constraint FK_directeurDirection foreign key (Dir_idenfiantDirection)
      references Direction (idenfiantDirection) on delete restrict on update restrict;

alter table DetailChefDirection add constraint FK_directeurPersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table DetailChefEquipe add constraint FK_chefEquipeEquipe foreign key (Equ_identifiantEquipe)
      references Equipe (identifiantEquipe) on delete restrict on update restrict;

alter table DetailChefEquipe add constraint FK_chefEquipePersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table DetailChefUnite add constraint FK_chefSectionUniteRecherche foreign key (Uni_identifientUnite)
      references UniteRecherche (identifientUnite) on delete restrict on update restrict;

alter table DetailChefUnite add constraint FK_chefSectionPersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table DetailCoAuteur add constraint FK_coAuteurPublication foreign key (Pub_identifiantPublication)
      references Publication (identifiantPublication) on delete restrict on update restrict;

alter table DetailCoAuteur add constraint FK_coAuteurPersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table DetailDiplomeExterne add constraint FK_diplomePersonnePersonneExterne foreign key (Per_identifiantPersonne)
      references PersonneExterne (identifiantPersonne) on delete restrict on update restrict;

alter table DetailDiplomeExterne add constraint FK_diplomePersonneExterneTypeDiplome foreign key (Typ_identifiantDiplome)
      references TypeDiplome (identifiantDiplome) on delete restrict on update restrict;

alter table DetailDiplomeInterne add constraint FK_diplomePersonnePersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table DetailDiplomeInterne add constraint FK_diplomePersonneInterneTypeDiplome foreign key (Typ_identifiantDiplome)
      references TypeDiplome (identifiantDiplome) on delete restrict on update restrict;

alter table DetailPartenariatTechnique add constraint FK_partenariatTechniqueInstitution foreign key (Ins_identifiantInstitution)
      references Institution (identifiantInstitution) on delete restrict on update restrict;

alter table DetailPartenariatTechnique add constraint FK_partenariatTechniqueProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table DetailStatutProjet add constraint FK_statutProjetProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table DetailStatutProjet add constraint FK_statutProjetStatut foreign key (Sta_identifiantStatut)
      references Statut (identifiantStatut) on delete restrict on update restrict;

alter table Equipe add constraint FK_equipeDepartement foreign key (Dep_identifiantDepartement)
      references Departement (identifiantDepartement) on delete restrict on update restrict;

alter table EquipementAquis add constraint FK_EquipementAquis foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table Experience add constraint FK_experiencePersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table ExperienceProfessionnelle add constraint FK_genExperienceProfesionnelle foreign key (Exp_identifiantExperience)
      references Experience (identifiantExperience) on delete restrict on update restrict;

alter table ExperienceProfessionnelle add constraint FK_societeExperience foreign key (Soc_identifiantSociete)
      references Societe (identifiantSociete) on delete restrict on update restrict;

alter table ExperienceSpecifique add constraint FK_genExperienceSpecifique foreign key (Exp_identifiantExperience)
      references Experience (identifiantExperience) on delete restrict on update restrict;

alter table FormationAcademique add constraint FK_formationAcaEffectie foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table FormationEnCours add constraint FK_typageFormation foreign key (Typ_identifiantTypeFormationEncours)
      references TypeFormationEnCours (identifiantTypeFormationEncours) on delete restrict on update restrict;

alter table IdeeProjet add constraint FK_ideeProjetLiaisonProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table IdeeProjet add constraint FK_ideeProposeParInstitution foreign key (Ins_identifiantInstitution)
      references Institution (identifiantInstitution) on delete restrict on update restrict;

alter table IdeeProjet add constraint FK_ideeProposeParUnePersonneExterne foreign key (Per_identifiantPersonne2)
      references PersonneExterne (identifiantPersonne) on delete restrict on update restrict;

alter table IdeeProjet add constraint FK_ideeProposeParUnePersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table IdeeProjet add constraint FK_sponsorSouhaite foreign key (Ins_identifiantInstitution2)
      references Institution (identifiantInstitution) on delete restrict on update restrict;

alter table Image add constraint FK_imageEvenement foreign key (Eve_identifiantEvenement)
      references Evenement (identifiantEvenement) on delete restrict on update restrict;

alter table InfoExamen add constraint FK_sectionExamenExamen foreign key (Exa_identifiantExamen)
      references Examen (identifiantExamen) on delete restrict on update restrict;

alter table InfoExamen add constraint FK_sectionExamenSection foreign key (Sec_identifiatUnite)
      references Section (identifiatUnite) on delete restrict on update restrict;

alter table Institution add constraint FK_typageInstitution foreign key (Typ_identifiantInstituion)
      references TypeInstitution (identifiantInstituion) on delete restrict on update restrict;

alter table Laboratoire add constraint FK_affectationLaboratoire foreign key (Dep_identifiantDepartement)
      references Departement (identifiantDepartement) on delete restrict on update restrict;

alter table NiveauLangueExterne add constraint FK_languePersonneLangueExterne foreign key (Lan_idLangue)
      references Langue (idLangue) on delete restrict on update restrict;

alter table NiveauLangueExterne add constraint FK_languePersonneExterne foreign key (Per_identifiantPersonne)
      references PersonneExterne (identifiantPersonne) on delete restrict on update restrict;

alter table NiveauLangueInterne add constraint FK_languePersonneLangueInterne foreign key (Lan_idLangue)
      references Langue (idLangue) on delete restrict on update restrict;

alter table NiveauLangueInterne add constraint FK_languePersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table Objectif add constraint FK_projObectifet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table PersonneExterne add constraint FK_provenanceExterne foreign key (Ins_identifiantInstitution)
      references Institution (identifiantInstitution) on delete restrict on update restrict;

alter table PersonneInterne add constraint FK_formationEnCoursPersonneInterne foreign key (For_identifiantFormation)
      references FormationEnCours (identifiantFormation) on delete restrict on update restrict;

alter table PersonneInterne add constraint FK_membreEquipe foreign key (Equ_identifiantEquipe)
      references Equipe (identifiantEquipe) on delete restrict on update restrict;

alter table PersonneInterne add constraint FK_membreUniteRecherche foreign key (Uni_identifientUnite)
      references UniteRecherche (identifientUnite) on delete restrict on update restrict;

alter table Perspectives add constraint FK_perpectiveProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table PrestationDeService add constraint FK_demandeurService foreign key (Ins_identifiantInstitution)
      references Institution (identifiantInstitution) on delete restrict on update restrict;

alter table PrestationDeService add constraint FK_serviceRendu foreign key (Equ_identifiantEquipe)
      references Equipe (identifiantEquipe) on delete restrict on update restrict;

alter table Projet add constraint FK_ideeProjetLiaisonIdeeProjet foreign key (Ide_identifiantIdeeProjet)
      references IdeeProjet (identifiantIdeeProjet) on delete restrict on update restrict;

alter table Projet add constraint FK_partenariatFinancier foreign key (Ins_identifiantInstitution)
      references Institution (identifiantInstitution) on delete restrict on update restrict;

alter table Projet add constraint FK_projetEffectuer foreign key (Equ_identifiantEquipe)
      references Equipe (identifiantEquipe) on delete restrict on update restrict;

alter table Projet add constraint FK_sectionProjet foreign key (Uni_identifientUnite)
      references UniteRecherche (identifientUnite) on delete restrict on update restrict;

alter table Publication add constraint FK_auteurPersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table Publication add constraint FK_evenementPublication foreign key (Eve_identifiantEvenement)
      references Evenement (identifiantEvenement) on delete restrict on update restrict;

alter table Publication add constraint FK_publicationProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table Publication add constraint FK_typagePublication foreign key (Typ_identifiantTypePublication)
      references TypePublication (identifiantTypePublication) on delete restrict on update restrict;

alter table Reference add constraint FK_referencePersonne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table Resultat add constraint FK_resultatAttenduProjet foreign key (Ide_identifiantIdeeProjet)
      references IdeeProjet (identifiantIdeeProjet) on delete restrict on update restrict;

alter table Resultat add constraint FK_resultatObtnuProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table Section add constraint FK_laboratoire foreign key (Lab_identifiantLaboratoire)
      references Laboratoire (identifiantLaboratoire) on delete restrict on update restrict;

alter table UniteRecherche add constraint FK_affectationSection foreign key (Lab_identifiantLaboratoire)
      references Laboratoire (identifiantLaboratoire) on delete restrict on update restrict;

alter table associeExterne add constraint FK_associeEquipeExterne foreign key (Equ_identifiantEquipe)
      references Equipe (identifiantEquipe) on delete restrict on update restrict;

alter table associeExterne add constraint FK_associePersonneExterne foreign key (Per_identifiantPersonne)
      references PersonneExterne (identifiantPersonne) on delete restrict on update restrict;

alter table associeInterne add constraint FK_associeEquipeInterne foreign key (Equ_identifiantEquipe)
      references Equipe (identifiantEquipe) on delete restrict on update restrict;

alter table associeInterne add constraint FK_associePersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table chefLaboratoire add constraint FK_chefLaboratoireLaboratoire foreign key (Lab_identifiantLaboratoire)
      references Laboratoire (identifiantLaboratoire) on delete restrict on update restrict;

alter table chefLaboratoire add constraint FK_chefLaboratoirePersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table coInvestigateurExterne add constraint FK_coInvestigateurPersonneExterne foreign key (Per_identifiantPersonne)
      references PersonneExterne (identifiantPersonne) on delete restrict on update restrict;

alter table coInvestigateurExterne add constraint FK_coInvestigateurExterneProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table coInvestigateurInterne add constraint FK_coInvestigateurPersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table coInvestigateurInterne add constraint FK_coInvestigateurInterneProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table investigateurExterne add constraint FK_investigateurPersonneExterne foreign key (Per_identifiantPersonne)
      references PersonneExterne (identifiantPersonne) on delete restrict on update restrict;

alter table investigateurExterne add constraint FK_investigateurExterneProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table investigateurInterne add constraint FK_investigateurPersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table investigateurInterne add constraint FK_investigateurInterneProjet foreign key (Pro_codeMuraz)
      references Projet (codeMuraz) on delete restrict on update restrict;

alter table personneAssociation add constraint FK_personneAssociationAssociation foreign key (Ass_identifiantAssociation)
      references Association (identifiantAssociation) on delete restrict on update restrict;

alter table personneAssociation add constraint FK_personneAssociationPersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table qualificationPersonneExterne add constraint FK_qualificationPersonnePersonneExterne foreign key (Per_identifiantPersonne)
      references PersonneExterne (identifiantPersonne) on delete restrict on update restrict;

alter table qualificationPersonneExterne add constraint FK_qualificationPersonneExterneQualification foreign key (Qua_identifiantQualification)
      references Qualification (identifiantQualification) on delete restrict on update restrict;

alter table qualificationPersonneInterne add constraint FK_qualificationPersonnePersonneInterne foreign key (Per_identifiantPersonne)
      references PersonneInterne (identifiantPersonne) on delete restrict on update restrict;

alter table qualificationPersonneInterne add constraint FK_qualificationPersonneInterneQualification foreign key (Qua_identifiantQualification)
      references Qualification (identifiantQualification) on delete restrict on update restrict;

