unit UnitfchSuppression;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitDeclarations, UnitUtils;

type
  TfchSuppression = class(TForm)
    lstNom: TListBox;
    cmdSupprimer: TButton;
    Label1: TLabel;
  private
    { Déclarations privées }

    TabNomsSup : TTabNomsEleves; {un tableau du nom de chacun des élèves du
                                  groupe}

    TabEvalSup : TTabLesEval; {Un tableau 2D des notes des évaluations et notes
                               finales de chaque élève du groupe}

    NbElevesSup : integer; // le nombre d'élèves dans le groupe

    IndSup : boolean; // indiquer s'il y a eu ou non des suppressions d'élèves.

  public
    { Déclarations publiques }
  end;

var
  fchSuppression: TfchSuppression;

implementation

{$R *.dfm}

end.
