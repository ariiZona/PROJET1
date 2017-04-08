program Project1;

uses
  Forms,
  UnitfchPrinc in 'UnitfchPrinc.pas' {fchPrinc},
  UnitfchOptionsTri in 'UnitfchOptionsTri.pas' {fchOptionsTri},
  UnitfchSuppression in 'UnitfchSuppression.pas' {fchSuppression},
  UnitfchStats in 'UnitfchStats.pas' {fchStats},
  UnitUtils in 'UnitUtils.pas',
  UnitDeclarations in 'UnitDeclarations.pas',
  UnitfchAjout in 'UnitfchAjout.pas' {fchAjout};

{$R *.res}

begin
  Application.Initialize;
 // Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfchPrinc, fchPrinc);
  Application.CreateForm(TfchOptionsTri, fchOptionsTri);
  Application.CreateForm(TfchSuppression, fchSuppression);
  Application.CreateForm(TfchStats, fchStats);
  Application.CreateForm(TfchAjout, fchAjout);
  Application.Run;
end.
