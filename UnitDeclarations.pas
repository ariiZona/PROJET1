unit UnitDeclarations;

interface

const
NB_MAX_ELEVES = 25; (* Nombre maximum d'�l�ves *)
NB_EVAL = 4;


type
TTabNomsEleves = array [0..NB_MAX_ELEVES-1] of string;
(* Tableau des noms des �l�ves *)

TTabUnIndex = array [0..NB_MAX_ELEVES-1] of integer;
(* 1D : Tableau d�index sur les d'�l�ves *)

TTabLesIndex = array [0.. NB_EVAL+1] of TTabUnIndex;
(* 2D : Tableau de tableaux d'index sur les �l�ves, le premier indice repr�sente
 les diff�rentes fa�ons de trier: nom,examen1,�,finale et le 2e les �l�ves
 NB_EVAL+1 repr�sente examen finale*)

TTabUneEval = array [0..NB_MAX_ELEVES-1] of integer;
(* 1D : Tableau des notes des �l�ves d'une �valuation ou notes finales*)

TTabLesEval = array [0..NB_EVAL] of TTabUneEval;
(* 2D : Tableau des notes des �valuations et des notes finales des �l�ves*)

TTabPctEval = array [0..NB_EVAL-1] of single;
(* Tableau des pourcentages (pond�ration) des �valuations *)

TTabNomsInfo = array [0..NB_EVAL+1] of string;
(* Tableau des noms des informations sur les �l�ves *)

const
TAB_PCT_EVAL : TTabPctEval= (0.25, 0.3, 0.2, 0.25);
(* Tableau des pourcentages des �valuations *)

TAB_NOMS_INFO : TTabNomsInfo (* Tableau des noms des informations sur *)
= ('Nom de l''�l�ve', 'Examen #1', 'Examen #2', (* les �l�ves *)
'Travail #1', 'Travail #2', 'Finale');

implementation
end.
