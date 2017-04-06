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
    { D�clarations priv�es }

    TabNomsSup : TTabNomsEleves; {un tableau du nom de chacun des �l�ves du
                                  groupe}

    TabEvalSup : TTabLesEval; {Un tableau 2D des notes des �valuations et notes
                               finales de chaque �l�ve du groupe}

    NbElevesSup : integer; // le nombre d'�l�ves dans le groupe

    IndSup : boolean; // indiquer s'il y a eu ou non des suppressions d'�l�ves.

  public
    { D�clarations publiques }
  end;

var
  fchSuppression: TfchSuppression;

implementation

{$R *.dfm}

end.
