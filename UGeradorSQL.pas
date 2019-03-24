unit UGeradorSQL;

interface
uses SysUtils, Classes, StdCtrls;

type
  TGeradorSQL = class
    constructor Create;
    destructor Destroy;

  public
    VResultado: string;
    procedure AdicionarColuna(const AColunas: TMemo);
    procedure AdicionarTabelas(const ATabelas: TMemo);
    procedure AdicionarCondicoes(const ACondicoes: TMemo);
    procedure GerarSQL;



  private
    TColunas: TStringList;
    TCondicoes: TStringList;
    TTabelas: TStringList;

    procedure Concatenar(var ARetorno: String; AValores: TStringList; ASeparador: string);
  end;

implementation
const SeparadorCondicoes = 'and';
const SeparadorPadrao = ',';


{ TGeradorSQL }

procedure TGeradorSQL.AdicionarColuna(const AColunas: TMemo);
var i: String;
begin
  TColunas.Assign(AColunas.Lines);
end;

procedure TGeradorSQL.AdicionarCondicoes(const ACondicoes: TMemo);
begin
  TCondicoes.Assign(ACondicoes.Lines);
end;

procedure TGeradorSQL.AdicionarTabelas(const ATabelas: TMemo);
begin
  TTabelas.Assign(ATabelas.Lines);
end;

procedure TGeradorSQL.Concatenar(var ARetorno: String;
  AValores: TStringList; ASeparador: string);
var iCount: Integer;
    iCaracteres: Integer;
begin
  for iCount:=0 to AValores.Count-1 do
  begin
    ARetorno:= ARetorno + AValores[iCount] + ' ' + ASeparador;
  end;

  iCaracteres:=3;

  if (ASeparador = SeparadorPadrao) then
    iCaracteres:=1;

  ARetorno:= Copy(ARetorno,1,(Length(ARetorno)-iCaracteres));  
end;

constructor TGeradorSQL.Create;
begin
  TColunas:= TStringList.Create;
  TCondicoes:= TStringList.Create;
  TTabelas:= TStringList.Create;
end;

destructor TGeradorSQL.Destroy;
begin
  FreeAndNil(TColunas);
  FreeAndNil(TCondicoes);
  FreeAndNil(TTabelas);
end;

procedure TGeradorSQL.GerarSQL;
var sRetorno: string;
begin
  sRetorno:='SELECT ';
  Concatenar(sRetorno,TColunas,SeparadorPadrao);
  sRetorno:= sRetorno + ' FROM ';
  Concatenar(sRetorno,TTabelas,SeparadorPadrao);
  sRetorno:= sRetorno + ' WHERE ';
  Concatenar(sRetorno,TCondicoes,SeparadorCondicoes);

  VResultado:=sRetorno;
end;

end.
