unit UnitfchSuppression;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UnitDeclarations;

type
  TfchSuppression = class(TForm)
    lstNom: TListBox;
    cmdSupprimer: TButton;
    Label1: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  fchSuppression: TfchSuppression;

implementation

{$R *.dfm}

end.
