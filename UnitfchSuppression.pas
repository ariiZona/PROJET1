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
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  fchSuppression: TfchSuppression;

implementation

{$R *.dfm}

end.
