unit UnitfchAjout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, UnitDeclarations, UnitUtils;

type
  TfchAjout = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtNom: TEdit;
    txtEval1: TEdit;
    txtEval2: TEdit;
    txtEval3: TEdit;
    txtEval4: TEdit;
    cmdConfirmer: TButton;
    cmdAnnuler: TButton;
    fchAjout: TStatusBar;

  private
    { Déclarations privées }

  TabNomsAjt : TTabNomsEleves;//Un tableau du nom de chacun des élèves du groupe

  TabEvalAjt : TTabLesEval;{2D un tableau des notes des évaluations et notes
  finales de chaque élève du groupe(les notes finales seront calculée plus tard}

  NbElevesAjt : integer; //le nombre d'élèves dans le groupe

  IndAjt : boolean; {booléen utilisé pour indiquer s'il y a eu ou non des ajouts
   d'élèves.}

  public
    { Déclarations publiques }
  end;

var
  fchAjout: TfchAjout;

implementation

{$R *.dfm}

end.
