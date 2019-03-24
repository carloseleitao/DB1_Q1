program Questao1;

uses
  Forms,
  UMain in 'UMain.pas' {fmMain},
  UGeradorSQL in 'UGeradorSQL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
