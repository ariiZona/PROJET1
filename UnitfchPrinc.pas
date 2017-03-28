unit UnitfchPrinc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, ExtCtrls, Grids, UnitDeclarations;

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
  public
    { Déclarations publiques }
  end;

var
  fchPrinc: TfchPrinc;

implementation

uses UnitfchAjout, UnitfchOptionsTri, UnitfchSuppression, UnitfchStats;

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
