unit UnitUtils;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, Buttons, ComCtrls, ExtCtrls, Grids, UnitDeclarations, Math;

Procedure CalculerNotesFinales (var tabLesEval : TTabLesEval; tabPctEval : TTabPctEval);
Function DeterminerIndNomEleve () : integer;  // ??? Indirection ???
Procedure CopierTabChDansListe (tabChSource : array of string; tabChCible : array of string);
function CalculerMoyTabEntPos (TabEnt: array of integer): single;
function CalculerEcartTabEnt (TabEnt: array of integer): single;
function DeterminerMinTabEntPos (TabEnt: array of integer): integer;
function DeterminerMaxTabEntPos (TabEnt: array of integer): integer;


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
//Calculer et retourner la moyenne des éléments d'un tableau d'entiers

{TODO: Peut etre ajouter une variable de plus (NbEleves) pour contenir
       compte le nombre d'éléments du tableau}

var
  Somme,          //Somme de tous les éléments
  indI: integer;  //Infice

begin
  //Init Somme
  Somme := 0;     

  //Si le tableau est vide, retourner -1
  if Length(TabEnt) < 1 then          
    Result := -1                      
  else
    begin
      //Pacrourir le tableau et ajouter l'élément courant à Somme
      for indI := Low(TabEnt) to High(TabEnt) do   
        Somme := Somme + TabEnt[indI];            


      //Retourner la moyenne
      Result := Somme / Length(TabEnt);
    end;
end;


function CalculerEcartTabEnt (TabEnt: array of integer): single;
//Calculer et retourner l'écart type d'un tableau d'entiers

{TODO: Peut etre ajouter une variable de plus (NbEleves) pour contenir
       compte le nombre d'éléments du tableau}

var
  indI,               //Indice
  Somme: single;      //Somme de tous les elements
  Variance: single;   //Résultat de la variance

begin
  //Init Somme
  Somme := 0;

  //Si le tableau est vide, retourner -1
  if Length(TabEnt) < 1 then
    Result := -1
  else
    begin

      //Pacrourir le tableau et ajouter l'élément courant à Somme
      for indI := Low(TabEnt) to High(TabEnt) do
        Somme := Somme + (TabEnt[indI] - CalculerMoyTabEntPos(TabEnt));

      //Calcul de la variance
      Variance := Power(Somme, 2) / Length(TabEnt);
      
      //Calcul de l'écart type
      Result := Sqrt(Variance);
    end;
end;


function DeterminerMinTabEntPos (TabEnt: array of integer): integer;
//Trouver et retourner la valeur min d'un tableau d'entiers

{TODO: Peut etre ajouter une variable de plus (NbEleves) pour contenir
       compte le nombre d'éléments du tableau}

var
  ValMin,            //Valeur min trouvée
  indI: integer;     //Indice

begin
  //lolwut
  ValMin := 100;
  
  //Si le tableau est vide, retourner -1
  if Length(TabEnt) < 1 then
    Result := -1
  else
    begin

      //Parcourir le tableau
      for indI := High(TabEnt) downto Low(TabEnt) do  
        {Ajouter la valeur si elle est plus petite que la ValMin actuelle}
        if TabEnt[indI] < ValMin then
          ValMin := TabEnt[indI];

      //Retourner la valeur min
      Result := ValMin
    end;
end;


function DeterminerMaxTabEntPos (TabEnt: array of integer): integer;
//Trouver et retourner la valeur max d'un tableau d'entiers

{TODO: Peut etre ajouter une variable de plus (NbEleves) pour contenir
       compte le nombre d'éléments du tableau}

var
  ValMax,              //Valeur max trouvée
  indI: integer;       //Indice

begin
  //Si le tableau est vide, il ne contient que des 0
  ValMax := 0;  

  //Si le tableau est vide, retourner -1
  if Length(TabEnt) < 1 then
    Result := -1
  else
    begin

      //Parcourir le tableau
      for indI := Low(TabEnt) to High(TabEnt) do  
        {Ajouter la valeur si elle est plus grande que la ValMax actuelle}
        if TabEnt[indI] > ValMax then
          ValMax := TabEnt[indI];

      //Retourner la veleur max
      Result := ValMax
    end;
end;

end.
