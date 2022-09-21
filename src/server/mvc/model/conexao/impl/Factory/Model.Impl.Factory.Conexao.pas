unit Model.Impl.Factory.Conexao;

interface

uses
  System.SysUtils,

  Model.Factory.Conexao.Interfaces,

  Model.Conexao.Interfaces,
  Model.Impl.Conexao.Firedac.MySQL;

type
  TFactoryConexao = class(TInterfacedObject, iFactoryConexao)
    private
      FFactoryConexao : iConexao;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iFactoryConexao;

      function FactoryConexao : iConexao;
  end;

implementation

{ TClassePadrao }

constructor TFactoryConexao.Create;
begin
  //
end;

destructor TFactoryConexao.Destroy;
begin
  //
  inherited;
end;

class function TFactoryConexao.New: iFactoryConexao;
begin
  Result := Self.Create;
end;

function TFactoryConexao.FactoryConexao : iConexao;
begin
  if not Assigned(FFactoryConexao) then
    FFactoryConexao := TFiredacMySQL.New;

  Result := FFactoryConexao;
end;

end.
