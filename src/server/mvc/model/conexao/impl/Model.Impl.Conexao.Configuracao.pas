unit Model.Impl.Conexao.Configuracao;

interface

uses
  System.IniFiles,
  System.SysUtils,

  Model.Conexao.Configuracao.Interfaces;

type
  TConfiguracao = class(TInterfacedObject, iConfiguracao)
    private
      FArquivoIni  : TIniFile;
      FDiretorio   : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConfiguracao;

      function DriverID    : String;
      function Database    : String;
      function UserName    : String;
      function Password    : String;
      function Port        : String;
      function ServerHost  : String;
      function Schema      : String;
      function Locking     : String;
      function LibraryName : String;
      function VendorHome  : String;
  end;

implementation

{ TClassePadrao }

constructor TConfiguracao.Create;
begin
  FDiretorio  := ExtractFilePath(ParamStr(0)) + 'ConfiguracaoMySQL.ini';
  FArquivoIni := TIniFile.Create(FDiretorio);
end;

destructor TConfiguracao.Destroy;
begin
  FreeAndNil(FArquivoIni);
  inherited;
end;

class function TConfiguracao.New: iConfiguracao;
begin
  Result := Self.Create;
end;

function TConfiguracao.DriverID: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'DriverID', Result);
end;

function TConfiguracao.Database: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'Database', Result);
end;

function TConfiguracao.UserName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'UserName', Result)
end;

function TConfiguracao.Password: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'Password', Result);
end;

function TConfiguracao.Port: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'Port', Result);
end;


function TConfiguracao.ServerHost: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'ServerHost', Result);
end;

function TConfiguracao.Schema: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'Schema', Result);
end;

function TConfiguracao.Locking: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'Locking', Result);
end;

function TConfiguracao.LibraryName: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'LibraryName', Result);
end;


function TConfiguracao.VendorHome: String;
begin
  Result := FArquivoIni.ReadString('ConfiguracaoMySQL', 'VendorHome', Result);
end;

end.
