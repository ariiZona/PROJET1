unit UnitfchStats;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, UnitDeclarations, UnitUtils;

type
  TfchStats = class(TForm)
    grlStats: TStringGrid;
    lstNomNotes: TListBox;
    Label1: TLabel;
    cmdFermer: TButton;
  private
    { D�clarations priv�es }

    TabNotesSta : TTabLesEval; {un tableau des notes des �valuations et notes
                                finales de chaque �l�ve du groupe}

    NbElevesSta : integer; // le nombre d'�l�ves dans le groupe
  public
    { D�clarations publiques }
  end;

var
  fchStats: TfchStats;

implementation

{$R *.dfm}

const
  NB_STAT = 4;

type
  TTabNomsStat = array [0..NB_STAT-1] of string; (*Struct. de stockage des noms
                                                   des statistiques *)
const
  TAB_NOMS_STAT : TTabNomsStat= ('Moyenne', '�cart-type', 'Minimum', 'Maximum');
                                        (* Tableau des noms des statistiques *)
end.
