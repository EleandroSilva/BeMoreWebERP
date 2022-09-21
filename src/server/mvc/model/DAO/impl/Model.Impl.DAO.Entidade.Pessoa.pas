unit Model.Impl.DAO.Entidade.Pessoa;

interface

uses
  Data.DB,

  Controller.Factory.Query.Interfaces,
  Controller.Impl.Factory.Query,

  Model.DAO.Entidade.Interfaces,
  Model.Entidade.Pessoa.Interfaces,
  Model.Query.Interfaces,

  Model.Impl.Entidade.Pessoa,
  Controller.Factory.Conexao.Interfaces;

type
  TDAOEntidadePessoa = class(TInterfacedObject, iDAOEntidade<iEntidadePessoa>)
    private
      FQuery                  : iQuery;
      FPessoa                 : iEntidadePessoa;
      FControllerFactoryQuery : iControllerFactoryQuery;
    Const
      FSQL=('SELECT * FROM PESSOA');
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOEntidade<iEntidadePessoa>;

      function Listar(Value : TDataSource)     : iDAOEntidade<iEntidadePessoa>;
      function ListarTodos                     : iDAOEntidade<iEntidadePessoa>;
      function ListarPor(Value: Variant)       : iDAOEntidade<iEntidadePessoa>;
      function Excluir                         : iDAOEntidade<iEntidadePessoa>;
      function Atualizar                       : iDAOEntidade<iEntidadePessoa>;
      function Inserir                         : iDAOEntidade<iEntidadePessoa>;
      function Get                             : iDAOEntidade<iEntidadePessoa>;
      function Put                             : iDAOEntidade<iEntidadePessoa>;
      function This: iEntidadePessoa;
  end;

implementation

{ TClassePadrao }
constructor TDAOEntidadePessoa.Create;
begin
  FPessoa                 := TEntidadePessoa.New(Self);
  FControllerFactoryQuery := TControllerFactoryQuery.New;
  FQuery                  := FControllerFactoryQuery
                                              .FactoryQuery
                                             .Query(nil);
end;

destructor TDAOEntidadePessoa.Destroy;
begin
  inherited;
end;

class function TDAOEntidadePessoa.New: iDAOEntidade<iEntidadePessoa>;
begin
  Result := Self.Create;
end;

function TDAOEntidadePessoa.Inserir: iDAOEntidade<iEntidadePessoa>;
begin

end;

function TDAOEntidadePessoa.Atualizar: iDAOEntidade<iEntidadePessoa>;
begin

end;

function TDAOEntidadePessoa.Excluir: iDAOEntidade<iEntidadePessoa>;
begin

end;

function TDAOEntidadePessoa.Get: iDAOEntidade<iEntidadePessoa>;
begin
  //
end;

function TDAOEntidadePessoa.Put: iDAOEntidade<iEntidadePessoa>;
begin
  //
end;

function TDAOEntidadePessoa.Listar(Value: TDataSource): iDAOEntidade<iEntidadePessoa>;
begin
  Result := Self;
  FQuery.Close;
  FQuery.Clear;
  FQuery.SQL(FSQL);
  FQuery.Open;
  Value.DataSet := FQuery.DataSet;
end;

function TDAOEntidadePessoa.ListarTodos: iDAOEntidade<iEntidadePessoa>;
begin

end;

function TDAOEntidadePessoa.ListarPor(Value: Variant): iDAOEntidade<iEntidadePessoa>;
begin

end;

function TDAOEntidadePessoa.This: iEntidadePessoa;
begin
  Result := FPessoa;
end;

end.
