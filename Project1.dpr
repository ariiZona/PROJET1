program Project1;

uses
  Forms,
  UnitfchPrinc in 'UnitfchPrinc.pas' {fchPrinc},
  UnitfchOptionsTri in 'UnitfchOptionsTri.pas' {fchOptionsTri},
  UnitfchAjout in 'UnitfchAjout.pas' {fchAjout},
  UnitfchSuppression in 'UnitfchSuppression.pas' {fchSuppression},
  UnitfchStats in 'UnitfchStats.pas' {fchStats},
  UnitDeclarations in 'UnitDeclarations.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfchPrinc, fchPrinc);
  Application.CreateForm(TfchOptionsTri, fchOptionsTri);
  Application.CreateForm(TfchAjout, fchAjout);
  Application.CreateForm(TfchSuppression, fchSuppression);
  Application.CreateForm(TfchStats, fchStats);
  Application.Run;
end.
