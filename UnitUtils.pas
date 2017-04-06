unit UnitUtils;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, Buttons, ComCtrls, ExtCtrls, Grids, UnitDeclarations;

Procedure CalculerNotesFinales (var tabLesEval : TTabLesEval; tabPctEval : TTabPctEval);
Function DeterminerIndNomEleve () : integer;  // ??? Indirection ???
Procedure CopierTabChDansListe (tabChSource : array of string; tabChCible : array of string);


implementation

Procedure CalculerNotesFinales (var tabLesEval : TTabLesEval; tabPctEval : TTabPctEval);
{Objectif : Calculer les notes finales de chacun des �l�ves du groupe.}

Var
  indEtu,            // Indice de l'�tudiant
  indEval : integer; // indice de l'�valuation

  NoteFin : integer; // accumule le r�sultats de la note final

begin

  for indEtu := low(tabLesEval) to high(tabLesEval) do
  begin

    //Initier la note Finale
    NoteFin := 0;

    // Boucle sur chaque �valuations
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

end.
