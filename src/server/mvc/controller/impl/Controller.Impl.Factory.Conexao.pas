unit Controller.Impl.Factory.Conexao;

interface

uses
  Model.Factory.Conexao.Interfaces,
  Controller.Factory.Conexao.Interfaces,
  Model.Impl.Factory.Conexao;

type
  TControllerConexaoFactory = class(TInterfacedObject, iControllerFactoryConexao)
    private
      FConexao : iFactoryConexao;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerFactoryConexao;

      function Conexao : iFactoryConexao;
  end;

implementation

{ TClassePadrao }

constructor TControllerConexaoFactory.Create;
begin
  //
end;

destructor TControllerConexaoFactory.Destroy;
begin
  //
  inherited;
end;

class function TControllerConexaoFactory.New: iControllerFactoryConexao;
begin
  Result := Self.Create;
end;

function TControllerConexaoFactory.Conexao: iFactoryConexao;
begin
  if not Assigned(FConexao) then
    FConexao := TFactoryConexao.New;

  Result := FConexao;
end;

end.
