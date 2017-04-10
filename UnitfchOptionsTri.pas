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
    { Déclarations privées }

    CleTriOpt : integer; // la clé de tri des informations sur les élèves

    OrdreTriOpt : Boolean; // l'ordre de tri des informations sur les élèves

  public
    { Déclarations publiques }
  end;

var
  fchOptionsTri: TfchOptionsTri;

implementation

{$R *.dfm}

end.
