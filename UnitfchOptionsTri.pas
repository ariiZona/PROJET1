unit UnitfchOptionsTri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitDeclarations, UnitUtils;

type
  TfchOptionsTri = class(TForm)
    lstClesTri: TListBox;
    Label1: TLabel;
    grpOrdresTri: TGroupBox;
    optCroissant: TRadioButton;
    optDecroissant: TRadioButton;
    cmdOK: TButton;
    cmdAnnuler: TButton;
  private
    { D�clarations priv�es }

    CleTriOpt : integer; // la cl� de tri des informations sur les �l�ves

    OrdreTriOpt : Boolean; // l'ordre de tri des informations sur les �l�ves

  public
    { D�clarations publiques }
  end;

var
  fchOptionsTri: TfchOptionsTri;

implementation

{$R *.dfm}

end.
