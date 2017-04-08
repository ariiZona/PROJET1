unit UnitUtils;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, Buttons, ComCtrls, ExtCtrls, Grids, UnitDeclarations;


//                        4 l'UNIT� DES UTILITAIRES                           //

Procedure CalculerNotesFinales (var tabLesEval : TTabLesEval);

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

Procedure CalculerNotesFinales (var tabLesEval : TTabLesEval);
{Objectif : Calculer les notes finales de chacun des �l�ves du groupe.}

Var
  indEtu,            // Indice de l'�tudiant
  indEval : integer; // indice de l'�valuation

  NoteFin : single; // accumule le r�sultats de la note final

begin

  // Boucle sur chaque �tudiants
  for indEtu := low(tabLesEval) to high(tabLesEval) do
  begin

    //Initier la note Finale
    NoteFin := 0;

    // Boucle sur chaque �valuations
    for indEval := low(TAB_PCT_EVAL) to high(TAB_PCT_EVAL) do
    begin
    
      //Calcul de la note Final pour un �tudiant
      NoteFin := NoteFin + (tabLesEval[indEval][indEtu] * TAB_PCT_EVAL[indEval]);

    end; // Fin for indEval

    // Inscrit la note final
    tabLesEval[NB_EVAL][indEtu] := Round(NoteFin);

  end; //Fin For indEtu
  
end;

Function DeterminerIndNomEleve (NomEleve : String; tableauCh : TStrings) : integer;
{Objectif : l'indice de l'�l�ve dont le nom est re�u en param�tre. Si on ne
 trouve pas le nom, retourner l'indice du premier �l�ment du tableau � 1.
 Le tableauCh est par d�fault Trier.}

var
  iMin, // Repr�sente l'indice du premier �l�ment de la section ou chercher
  iMax, // Repr�sente l'indice du dernier �l�ment de la section ou chercher
  iMilieu : integer; {Repr�sente un �l�ment probable �quivalent � la valeur
                      chercher}

  Trouver : boolean; {Nous permet de determiner si la valeure chercher est
                      presente dans le tableauCh}
                      
begin

  // Initier L'indice Minimum
  iMin := 0;

  // Initier l'indice iMax au dernier �l�ment du
  iMax := tableauCh.Count-1;
  iMilieu := iMax div 2;
  Trouver := tableauCh[iMilieu] = NomEleve;

  // Parcour tout le tableau j'usquace ce que l'�l�ment chercher soi trouver
  while (iMin <= iMax) and not(Trouver) do
  begin

    // Reinitier la valeur Milieu
    iMilieu := iMin + iMax div 2;

    // V�rifier si la valeur � l'indice iMilieu est egal � la valeur chercher
    if tableauCh[iMilieu] = NomEleve then
      Trouver := True
    else
    
      // Sinon deterrminer la section dan laquelle on doit chercher
      if NomEleve < tableauCh[iMilieu] then
      
        // la valeur chercher est dans la section du haut
        iMax := iMilieu -1
      else

        // la valeur chercher est la section du bas
        iMin := iMilieu + 1;
        
  end; // Fin While

  // V�rifier si le nom chercher � �t� trouver!
  if not(Trouver) then
    iMilieu := -1;

  //Renvoyer l'indice de l'�tudiant
  Result := iMilieu;

end;

Procedure CopierTabChDansListe (tabChSource : array of string; ListeCible :
TStrings);
{Objectif : Copier tous les �l�ments du tableau de cha�nes re�us en param�tre
 dans la liste de cha�nes cible.}

Var
  indI : integer;

begin

  // Effacer tout les �l�ment dans la liste Cible
  ListeCible.Clear;

  // Boucler sur chaque �l�ments du tableau Source
  for indI := low(tabChSource) to high(tabChSource) do

    // Ajouter chaque �l�ment du tableau Source au Liste Cible
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

  Transit := 0;

  // Boucle sur chaque �l�ments de tabUnIndex
  for indEtu := Low(tabUnIndex) to high(tabUnIndex) do
  begin
  
    // Initier le Tableau d'index
    tabUnIndex[indEtu] := indEtu;

  end; //Fin For indEtu

  // Boucle sur chaque �l�ves
  for indEtu := low(tabNomsEleves) to high(tabNomsEleves) - 1 do
  begin

    for indEtu2 := indEtu + 1 to high(tabNomsEleves) do
    begin

      if tabNomsEleves[tabUnIndex[indEtu]] > tabNomsEleves[tabUnIndex[indEtu]] then
      begin

       {D�terminer l'indice de la plus petit valeur et �changer dans le tableau
        avec l'indice du premier �l�ment non trier}
        Transit := tabUnIndex[indEtu2];
        tabUnIndex[indEtu2] := tabUnIndex[indEtu];
        tabUnIndex[indEtu] := Transit;

      end; // Fin if tabNomsEleves1 > tabNomsEleves2

    end; // Fin for indEtu2

  end; // Fin for indEtu

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

    Transit := 0;

    //Initier Tableau d'index pour chaque etudiants
    for indEtu := low(tabLesIndex[indEval]) to High(tabLesIndex[indEval]) do
      tabLesIndex[indEval][indEtu] := indEtu;

    // Boucle sur chaque etudiants
    for indEtu := Low(tabLesEval) to high(tabLesEval) - 1 do
    begin

      for indEtu2 := high(tabLesEval[indEval]) downto indEtu + 1  do
      begin

        if tabLesEval[tabLesIndex[indEval][indEtu]][indEtu] >
           tabLesEval[tabLesIndex[indEval][indEtu2]][indEtu2] then
        begin
          // D�terminer l'indice de la plus petit valeur
          Transit := tabLesIndex[indEval][indEtu2];

          // placer la plus petite valeur trouver non trier
          tabLesIndex[indEval][indEtu2] := tabLesIndex[indEval][indEtu];
          tabLesIndex[indEval][indEtu] := Transit;

        end; // fin if tabLesEval1 >  tabLesEval2

      end; // Fin For indEtu2

    end; // Fin for indEtu

  end; // Fin if Global

end;

Procedure TrierTabFinal (var tabLesIndex : TTabLesIndex; tabLesEval :
TTabLesEval);
{Objectif : En utilisant un �Straight Selection Sort�, trier par indirection les
 �l�ments d'un tableau contenant les notes finales pour un groupe d'�l�ves.}

 // tabLesIndex[5] --> note Finale
 // tabLesEval[4] --> note Finales

Var
  indEtu, // Indice du premier etudiant non trier
  indEtu2, // Indice du second etudiant non trier
  iMin,    // Indice de la plus petite note final non trier
  Transit : integer;

begin

  // Initialiser les indices du tableau d'index des notes Finales
  for indEtu := low(tabLesIndex[NB_EVAL+1]) to high(tabLesIndex[NB_EVAL+1]) do
    tabLesIndex[NB_EVAL+1][indEtu] := indEtu;

  // Boucle sur chaque etudiants
  for indEtu := low(tabLesEval) to high(tabLesEval) - 1 do
  begin
    // Initier l'indice du premier �l�ment non trier
    iMin := indEtu;

    for indEtu2 := indEtu + 1 to high(tabLesEval) do
    begin

      if tabLesEval[NB_EVAL][tabLesIndex[NB_EVAL+1][iMin]] >
      tabLesEval[NB_EVAL][tabLesIndex[NB_EVAL+1][indEtu2]] then
      begin

        // Garder l'indice de la derniere valeur plus petite trouver
        iMin := indEtu2;

      end; // Fin if tabLesEval iMin > tabLesEval indEtu2

    end; // Fin For indEtu2

    // Positionner l'�l�ment le plus petit non Trier de la note Final
    Transit := tabLesIndex[NB_EVAL+1][indEtu];
    tabLesIndex[NB_EVAL+1][indEtu] := tabLesIndex[NB_EVAL+1][iMin];
    tabLesIndex[NB_EVAL+1][iMin] := Transit;

  end; // Fin For indEtu

end;

Procedure MettreAJourLesIndex();
{Objectif : Mettre � jour le tableau d'index des noms des �l�ves . Mettre � jour
 le tableau des index des notes des �valuations des �l�ves . Mettre � jour le
 tableau d'index des notes finales des �l�ves.}

Var
  indEvaluation : integer; // Utiliser pour bouvler sur les 4 �valuations

  TabNomsEleves : TTabNomsEleves; // Tableau des noms des �l�ves

  TabUnIndex : TTabUnIndex; // Tableau d�index sur les d'�l�ves

  TabLesIndex : TTabLesIndex; {Tableau de tableaux d'index sur les �l�ves et des
                               diff�rentes fa�ons de trier}

  TabLesEval : TTabLesEval; {Tableau des notes des �valuations et des notes
                             finales des �l�ves}

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
