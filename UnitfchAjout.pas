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
    { D�clarations priv�es }

  TabNomsAjt : TTabNomsEleves;//Un tableau du nom de chacun des �l�ves du groupe

  TabEvalAjt : TTabLesEval;{2D un tableau des notes des �valuations et notes
  finales de chaque �l�ve du groupe(les notes finales seront calcul�e plus tard}

  NbElevesAjt : integer; //le nombre d'�l�ves dans le groupe

  IndAjt : boolean; {bool�en utilis� pour indiquer s'il y a eu ou non des ajouts
   d'�l�ves.}

  public
    { D�clarations publiques }
  end;

var
  fchAjout: TfchAjout;

implementation

{$R *.dfm}

end.
