unit Model.Impl.Configuracao.Conexao;

interface

uses
  System.IniFiles,
  System.SysUtils,
  Model.Conexao.Configuracao.Interfaces;

type
  TConfigurcaoConexao = class(TInterfacedObject, iConfiguracaoConexao)
    private
      FArquivoIni : TIniFile;
      FDiretorio  : String;

      FVariavel : iConfiguracaoConexao;
      FDriverID : String;
      FDatabase : String;
      FUserName : String;
      FPassword : String;
      FPort     : String;
      FServerHost : String;
      FSchema   : String;
      FLocking  : String;
      FLibraryName : String;
      FVendorHome  : String;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConfiguracaoConexao;

      function DriverID(Value : String) : iConfiguracaoConexao; overload;
      function DriverID                 : String;               overload;
      function Database(Value : String) : iConfiguracaoConexao; overload;
      function Database                 : String;               overload;
      function UserName(Value : String) : iConfiguracaoConexao; overload;
      function UserName                 : String;               overload;
      function Password(Value : String) : iConfiguracaoConexao; overload;
      function Password                 : String;               overload;
      function Port    (Value : String) : iConfiguracaoConexao; overload;
      function Port                     : String;               overload;
      function ServerHost(Value : String) : iConfiguracaoConexao; overload;
      function ServerHost               : String;               overload;
      function Schema  (Value : String) : iConfiguracaoConexao; overload;
      function Schema                   : String;               overload;
      function Locking (Value : String) : iConfiguracaoConexao; overload;
      function Locking                  : String;               overload;
      function LibraryName(Value: String) : iConfiguracaoConexao; overload;
      function LibraryName                : String;               overload;
      function VendorHome(Value: String)  : iConfiguracaoConexao; overload;
      function VendorHome                 : String;               overload;
  end;

implementation

{ TClassePadrao }

constructor TConfigurcaoConexao.Create;
begin
  FDiretorio  := ExtractFilePath(ParamStr(0)) + 'ConfiguracaoMySQL.ini';
  FArquivoIni := TIniFile.Create(FDiretorio);
end;

destructor TConfigurcaoConexao.Destroy;
begin
  FreeAndNil(FArquivoIni);
  inherited;
end;

class function TConfigurcaoConexao.New: iConfiguracaoConexao;
begin
  Result := Self.Create;
end;

function TConfigurcaoConexao.DriverID(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FDriverID := FArquivoIni.ReadString('ConfiguracaoMySQL', 'DriverID', Value);
end;

function TConfigurcaoConexao.DriverID: String;
begin
  Result := FDriverID;
end;

function TConfigurcaoConexao.Database(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FDatabase := FArquivoIni.ReadString('ConfiguracaoMySQL', 'Database', Value);
end;

function TConfigurcaoConexao.Database: String;
begin
  Result :=FDatabase;
end;

function TConfigurcaoConexao.UserName(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FUserName := FArquivoIni.ReadString('ConfiguracaoMySQL', 'UserName', Value);
end;

function TConfigurcaoConexao.UserName: String;
begin
  Result := FUserName;
end;

function TConfigurcaoConexao.Password(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FPassword := FArquivoIni.ReadString('ConfiguracaoMySQL', 'Password', Value);
end;

function TConfigurcaoConexao.Password: String;
begin
  Result := FPassword;
end;

function TConfigurcaoConexao.Port(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FPort := FArquivoIni.ReadString('ConfiguracaoMySQL', 'Port', Value);
end;

function TConfigurcaoConexao.Port: String;
begin
  Result := FPort;
end;

function TConfigurcaoConexao.ServerHost(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FServerHOst := FArquivoIni.ReadString('ConfiguracaoMySQL', 'ServerHost', Value);
end;

function TConfigurcaoConexao.ServerHost: String;
begin
  Result := FServerHost;
end;

function TConfigurcaoConexao.Schema(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FServerHost := FArquivoIni.ReadString('ConfiguracaoMySQL', 'ServerHost', Value);
end;

function TConfigurcaoConexao.Schema: String;
begin
  Result := Schema;
end;

function TConfigurcaoConexao.Locking(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FLocking := FArquivoIni.ReadString('ConfiguracaoMySQL', 'Locking', Value);
end;

function TConfigurcaoConexao.Locking: String;
begin
  Result := FLocking;
end;

function TConfigurcaoConexao.LibraryName(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FLibraryName := FArquivoIni.ReadString('ConfiguracaoMySQL', 'LibraryName', Value);
end;

function TConfigurcaoConexao.LibraryName: String;
begin
  Result := FLibraryName;
end;

function TConfigurcaoConexao.VendorHome(Value: String): iConfiguracaoConexao;
begin
  Result := Self;
  FVendorHome := FArquivoIni.ReadString('ConfiguracaoMySQL', 'VendorHome', Value);
end;

function TConfigurcaoConexao.VendorHome: String;
begin
  Result := FVendorHome;
end;

end.
