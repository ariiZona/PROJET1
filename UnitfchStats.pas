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
    { Déclarations privées }

    TabNotesSta : TTabLesEval; {un tableau des notes des évaluations et notes
                                finales de chaque élève du groupe}

    NbElevesSta : integer; // le nombre d'élèves dans le groupe
  public
    { Déclarations publiques }
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
  TAB_NOMS_STAT : TTabNomsStat= ('Moyenne', 'Écart-type', 'Minimum', 'Maximum');
                                        (* Tableau des noms des statistiques *)
end.
