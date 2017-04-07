unit UnitUtils;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, Buttons, ComCtrls, ExtCtrls, Grids, UnitDeclarations, Math;

Procedure CalculerNotesFinales (var tabLesEval : TTabLesEval; tabPctEval : TTabPctEval);
Function DeterminerIndNomEleve () : integer;  // ??? Indirection ???
Procedure CopierTabChDansListe (tabChSource : array of string; tabChCible : array of string);


implementation

Procedure CalculerNotesFinales (var tabLesEval : TTabLesEval; tabPctEval : TTabPctEval);
{Objectif : Calculer les notes finales de chacun des élèves du groupe.}

Var
  indEtu,            // Indice de l'étudiant
  indEval : integer; // indice de l'évaluation

  NoteFin : integer; // accumule le résultats de la note final

begin

  for indEtu := low(tabLesEval) to high(tabLesEval) do
  begin

    //Initier la note Finale
    NoteFin := 0;

    // Boucle sur chaque évaluations
    for indEval := low(tabPctEval) to high(tabPctEval) do
    begin
       NoteFin := NoteFin +
                  Round(tabLesEval[indEtu][indEval] * tabPctEval[indEval]);
    end;

    // Inscrit la note final
    tabLesEval[indEtu][4] := NoteFin;
  end;

end;

Function DeterminerIndNomEleve () : integer;
begin
  //
end;

Procedure CopierTabChDansListe (tabChSource : array of string; tabChCible : array of string);

Var 
  indI,
  MaxElem : integer;

begin

  MaxElem := high(tabChCible);
  
  if high(tabChSource) < high(tabChCible) then
    MaxElem := high(tabChSource);

  for indI := low(tabChSource) to MaxElem do
      tabChCible[indI] := tabChSource[indI];
  
end;

function CalculerMoyTabEntPos (TabEnt: array of integer): single;
//
var
  Somme,
  indI: integer;

begin
  Somme := 0;

  if Length(TabEnt) < 1 then
    Result := -1
  else
    begin
      for indI := Low(TabEnt) to High(TabEnt) do
        Somme := Somme + TabEnt[indI];

      Result := Somme / Length(TabEnt);
    end;
end;

function CalculerEcartTabEnt (TabEnt: array of integer): single;
//
var
  indI,
  Somme: integer;
  Variance: single;

begin
  Somme := 0;

  if Length(TabEnt) < 1 then
    Result := -1
  else
    begin
      for indI := Low(TabEnt) to High(TabEnt) do
        Somme := Somme + (TabEnt[indI] - CalculerMoyTabEntPos(TabEnt));

        Variance := Power(Somme, 2) / Length(TabEnt);
        Result := Sqrt(Variance);
    end;
end;

function DeterminerMinTabEntPos (TabEnt: array of integer): integer;
//Trouver et retourner la valeur min d'un tableau d'entiers
var
  ValMin,              //Valeur min trouvée
  indI: integer;     //Indice

begin
  ValMin := 100;  //lolwut

  if Length(TabEnt) < 1 then
    Result := -1
  else
    begin
      for indI := High(TabEnt) downto Low(TabEnt) do  //Parcourir le tableau
        if TabEnt[indI] < ValMin then
          ValMin := TabEnt[indI];

      Result := ValMin
    end;
end;

function DeterminerMaxTabEntPos (TabEnt: array of integer): integer;
//Trouver et retourner la valeur max d'un tableau d'entiers
var
  ValMax,              //Valeur max trouvée
  indI: integer;       //Indice

begin
  ValMax := 0;  //Si le tableau est vide, il ne contient que des 0


  if Length(TabEnt) < 1 then
    Result := -1
  else
    begin
      for indI := Low(TabEnt) to High(TabEnt) do  //Parcourir le tableau
        if TabEnt[indI] > ValMax then
          ValMax := TabEnt[indI];

      Result := ValMax
    end;
end;

end.
