unit UnitfchOptionsTri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitDeclarations;

type
  TfchOptionsTri = class(TForm)
    lstClesTri: TListBox;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    optCroissant: TRadioButton;
    optDecroissant: TRadioButton;
    cmdOK: TButton;
    cmdAnnuler: TButton;
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  fchOptionsTri: TfchOptionsTri;

implementation

{$R *.dfm}

end.
