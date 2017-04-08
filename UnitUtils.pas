unit UnitUtils;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, Buttons, ComCtrls, ExtCtrls, Grids, UnitDeclarations;


//                        4 l'UNIT� DES UTILITAIRES                           //

Procedure CalculerNotesFinales (var tabLesEval : TTabLesEval; tabPctEval :
TTabPctEval);

Function DeterminerIndNomEleve (NomEleve : String; tableauCh : TStrings) : integer;

Procedure CopierTabChDansListe (tabChSource : array of string; ListeCible :
Tstrings);

Procedure TrierTabNoms (var tabUnIndex : TTabUnIndex; tabNomsEleves :
TTabNomsEleves);

Procedure TrierTabUneEval (var tabLesIndex : TTabLesIndex; tabLesEval :
TTabLesEval; indEval : integer);

Procedure TrierTabFinal (var tabLesIndex : TTabLesIndex; tabLesEval :
TTabLesEval);

Procedure MettreAJourLesIndex();

implementation

Procedure CalculerNotesFinales (var tabLesEval : TTabLesEval; tabPctEval :
TTabPctEval);
{Objectif : Calculer les notes finales de chacun des �l�ves du groupe.}

Var
  indEtu,            // Indice de l'�tudiant
  indEval : integer; // indice de l'�valuation

  NoteFin : single; // accumule le r�sultats de la note final

begin

  for indEtu := low(tabLesEval) to high(tabLesEval) do
  begin

    //Initier la note Finale
    NoteFin := 0;

    // Boucle sur chaque �valuations
    for indEval := low(tabPctEval) to high(tabPctEval) do
    begin
       NoteFin := NoteFin + (tabLesEval[indEval][indEtu] * tabPctEval[indEval]);
    end;

    // Inscrit la note final
    tabLesEval[indEtu][5] := Round(NoteFin);
  end;

end;

Function DeterminerIndNomEleve (NomEleve : String; tableauCh : TStrings) : integer;
{Objectif : l'indice de l'�l�ve dont le nom est re�u en param�tre. Si on ne
trouve pas le nom, retourner l'indice du premier �l�ment du tableau � 1}

var
  iMin,
  iMax,
  iMilieu,
  Transit : integer;

  Trouver : boolean;

begin

  // Initier L'indice Minimum
  iMin := 0;
  iMax := tableauCh.Count-1;
  iMilieu := iMax div 2;
  Trouver := tableauCh[iMilieu] = NomEleve;

  while (iMin <= iMax) and not(Trouver) do
  begin
    iMilieu := iMin + iMax div 2;

    if tableauCh[iMilieu] = NomEleve then
      Trouver := True
    else
      if NomEleve < tableauCh[iMilieu] then
        iMax := iMilieu -1
      else
        iMin := iMilieu + 1;
  end;

  Result := iMilieu;

end;

Procedure CopierTabChDansListe (tabChSource : array of string; ListeCible :
Tstrings);
{Objectif : Copier tous les �l�ments du tableau de cha�nes re�us en param�tre
 dans la liste de cha�nes cible.}

Var
  indI : integer;

begin

  for indI := low(tabChSource) to high(tabChSource) do
      ListeCible.Add(tabChSource[indI]);
  
end;

Procedure TrierTabNoms (var tabUnIndex : TTabUnIndex; tabNomsEleves :
TTabNomsEleves);
{Objectif : En utilisant un tri simple I, trier par indirection les �l�ments
 d'un tableau de noms d'un groupe d'�l�ves.}

Var
  indEtu, // Premier indice d'�tudiant
  indEtu2, // Second indice d'�tudiant
  Transit : integer;

begin

  for indEtu := Low(tabUnIndex) to high(tabUnIndex) do
  begin

    // Initier le Tableau d'index
    tabUnIndex[indEtu] := indEtu;
  end;

  for indEtu := low(tabNomsEleves) to high(tabNomsEleves) - 1 do
  begin

    for indEtu2 := indEtu + 1 to high(tabNomsEleves) do
    begin

      if tabNomsEleves[tabUnIndex[indEtu]] > tabNomsEleves[tabUnIndex[indEtu]] then
        {D�terminer l'indice de la plus petit valeur et �changer dans le tableau
         avec l'indice du premier �l�ment non trier}
        Transit := tabUnIndex[indEtu2];
        tabUnIndex[indEtu2] := tabUnIndex[indEtu];
        tabUnIndex[indEtu] := Transit;

    end;
  end;

end;

Procedure TrierTabUneEval (var tabLesIndex : TTabLesIndex;
tabLesEval : TTabLesEval; indEval : integer);
{Objectif : En utilisant un tri simple II, trier par indirection les �l�ments
 d'un tableau contenant les notes d'une �valuation pour un groupe d'�l�ves.}

Var
  indEtu, // Premier indice d'�tudiant
  indEtu2, // Second indice d'�tudiant

  Transit : integer; // Pour effectuer les �change d'informations

begin

  // V�rifier si l'indice de l'�valuation � trier est valide
  if indEval in [1..NB_EVAL] then
  begin

    //Initier Tableau d'indexs
    for indEtu := low(tabLesIndex[indEval]) to High(tabLesIndex[indEval]) do
      tabLesIndex[indEval][indEtu] := indEtu;

    for indEtu := Low(tabLesEval) to high(tabLesEval) - 1 do
    begin

      for indEtu2 := high(tabLesEval[indEval]) downto indEtu + 1  do
      begin

        if tabLesEval[tabLesIndex[indEval][indEtu]][indEtu] >
           tabLesEval[tabLesIndex[indEval][indEtu2]][indEtu2] then

          // D�terminer l'indice de la plus petit valeur
          Transit := tabLesIndex[indEval][indEtu2];
          tabLesIndex[indEval][indEtu2] := tabLesIndex[indEval][indEtu];
          tabLesIndex[indEval][indEtu] := Transit;

      end;
    end;
  end;
end;

Procedure TrierTabFinal (var tabLesIndex : TTabLesIndex; tabLesEval :
TTabLesEval);
{Objectif : En utilisant un �Straight Selection Sort�, trier par indirection les
 �l�ments d'un tableau contenant les notes finales pour un groupe d'�l�ves.}

Var
  indEtu,
  indEtu2,
  iMin,
  Transit : integer;

begin

  // Initialiser les indices du tableau d'index des notes Finales
  for indEtu := low(tabLesIndex[5]) to high(tabLesIndex[5]) do
    tabLesIndex[5][indEtu] := indEtu;

  for indEtu := low(tabLesEval) to high(tabLesEval) - 1 do
  begin
    iMin := indEtu;
    for indEtu2 := indEtu + 1 to high(tabLesEval) do
    begin
      if tabLesEval[4][tabLesIndex[5][iMin]] > tabLesEval[4][tabLesIndex[5][indEtu2]]
      then
      begin
        iMin := indEtu2;
      end;
    end;

    Transit := tabLesIndex[5][iMin];
    tabLesIndex[5][iMin] := tabLesIndex[5][indEtu2];
    tabLesIndex[5][indEtu2] := Transit;
  end;

end;

Procedure MettreAJourLesIndex();
{Objectif : Mettre � jour le tableau d'index des noms des �l�ves . Mettre � jour
 le tableau des index des notes des �valuations des �l�ves . Mettre � jour le
 tableau d'index des notes finales des �l�ves.}

Var
  indEvaluation : integer;

  TabNomsEleves : TTabNomsEleves;

  TabUnIndex : TTabUnIndex;
  TabLesIndex : TTabLesIndex;

  TabLesEval : TTabLesEval;


begin

  // Mettre � jour le tableau d'index des noms des �l�ves.
  TrierTabNoms(TabUnIndex, TabNomsEleves);

  //Mettre � jour le tableau des index des notes des �valuations des �l�ves.
  for indEvaluation := 1 to NB_EVAL do
    TrierTabUneEval(TabLesIndex, TabLesEval, indEvaluation);

  //Mettre � jour le tableau d'index des notes finales des �l�ves.
  TrierTabFinal(TabLesIndex, TabLesEval);

end;

end.
