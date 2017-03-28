unit UnitfchStats;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, UnitDeclarations;

type
  TfchStats = class(TForm)
    grlStats: TStringGrid;
    lstNomNotes: TListBox;
    Label1: TLabel;
    cmdFermer: TButton;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  fchStats: TfchStats;

implementation

{$R *.dfm}

end.
