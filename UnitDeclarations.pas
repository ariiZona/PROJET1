unit UnitDeclarations;

interface

const
NB_MAX_ELEVES = 25; (* Nombre maximum d'élèves *)
NB_EVAL = 4;


type
TTabNomsEleves = array [0..NB_MAX_ELEVES-1] of string;
(* Tableau des noms des élèves *)

TTabUnIndex = array [0..NB_MAX_ELEVES-1] of integer;
(* 1D : Tableau d’index sur les d'élèves *)

TTabLesIndex = array [0.. NB_EVAL+1] of TTabUnIndex;
(* 2D : Tableau de tableaux d'index sur les élèves, le premier indice représente
 les différentes façons de trier: nom,examen1,…,finale et le 2e les élèves
 NB_EVAL+1 représente examen finale*)

TTabUneEval = array [0..NB_MAX_ELEVES-1] of integer;
(* 1D : Tableau des notes des élèves d'une évaluation ou notes finales*)

TTabLesEval = array [0..NB_EVAL] of TTabUneEval;
(* 2D : Tableau des notes des évaluations et des notes finales des élèves*)

TTabPctEval = array [0..NB_EVAL-1] of single;
(* Tableau des pourcentages (pondération) des évaluations *)

TTabNomsInfo = array [0..NB_EVAL+1] of string;
(* Tableau des noms des informations sur les élèves *)

const
TAB_PCT_EVAL : TTabPctEval= (0.25, 0.3, 0.2, 0.25);
(* Tableau des pourcentages des évaluations *)

TAB_NOMS_INFO : TTabNomsInfo (* Tableau des noms des informations sur *)
= ('Nom de l''élève', 'Examen #1', 'Examen #2', (* les élèves *)
'Travail #1', 'Travail #2', 'Finale');

implementation
end.
