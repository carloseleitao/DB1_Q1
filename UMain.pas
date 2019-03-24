unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfmMain = class(TForm)
    mmoColunas: TMemo;
    lblColunas: TLabel;
    mmoTabelas: TMemo;
    lblTabelas: TLabel;
    mmoCondicoes: TMemo;
    lblCondocoes: TLabel;
    btnGerar: TButton;
    mmoSQL: TMemo;
    lblSQL: TLabel;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

uses
  UGeradorSQL;

{$R *.dfm}

procedure TfmMain.btnGerarClick(Sender: TObject);
var oGeradorSQL: TGeradorSQL;
begin
  oGeradorSQL:= TGeradorSQL.Create;
  try
    oGeradorSQL.AdicionarColuna(mmoColunas);
    oGeradorSQL.AdicionarTabelas(mmoTabelas);
    oGeradorSQL.AdicionarCondicoes(mmoCondicoes);
    oGeradorSQL.GerarSQL;
    mmoSQL.Text:=oGeradorSQL.vResultado;
  finally
    FreeAndNil(oGeradorSQL);
  end;
end;

end.
