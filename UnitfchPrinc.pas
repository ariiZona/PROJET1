unit UnitfchPrinc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, ExtCtrls, Grids, UnitDeclarations, UnitUtils,
  UnitfchOptionsTri, UnitfchAjout, UnitfchSuppression, UnitfchStats;

type
  TfchPrinc = class(TForm)
    grlEleves: TStringGrid;
    Panel1: TPanel;
    staNbEleves: TStatusBar;
    otlTrier: TSpeedButton;
    otlAjouter: TSpeedButton;
    otlSupprimer: TSpeedButton;
    otlStats: TSpeedButton;
    otlQuitter: TSpeedButton;
    procedure otlTrierClick(Sender: TObject);
    procedure otlAjouterClick(Sender: TObject);
    procedure otlSupprimerClick(Sender: TObject);
    procedure otlStatsClick(Sender: TObject);


  private
    { Déclarations privées }

    TabNomsPri : TTabNomsEleves; {un tableau de noms de chacun des élèves du
                                 groupe}
    TabEvalPri : TTabLesEval; {2D un tableau des notes des évaluations et
                               notes finales de chaque élève groupe  }

    TabIndexPri : TTabLesIndex; {un tableau des tableaux d'index pour chacune
                                 es clés de tri }

    NbElevesPri : integer; // le nombre d'élèves actuellement dans le groupe

    CleTriPri : integer; // la clé de tri courants

    OrdreTriPri : boolean; // l'ordre de tri courants

  public
    { Déclarations publiques }
  end;

var
  fchPrinc: TfchPrinc;

implementation

{$R *.dfm}

procedure TfchPrinc.otlAjouterClick(Sender: TObject);
begin
  fchAjout.ShowModal;
end;

procedure TfchPrinc.otlStatsClick(Sender: TObject);
begin
  fchStats.ShowModal;
end;

procedure TfchPrinc.otlSupprimerClick(Sender: TObject);
begin
  fchSuppression.ShowModal;
end;

procedure TfchPrinc.otlTrierClick(Sender: TObject);
begin
  fchOptionsTri.ShowModal;
end;

end.
