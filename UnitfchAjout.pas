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
  public
    { Déclarations publiques }
  end;

var
  fchAjout: TfchAjout;

implementation

{$R *.dfm}

end.
