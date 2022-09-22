unit Model.Impl.DAO.Entidade.Pessoa;

interface

uses
  System.JSON,
  Data.DB,

  DataSetConverter4D.Helper,
  DataSetConverter4D.Impl,


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

      function Listar(Value : TDataSource)      : iDAOEntidade<iEntidadePessoa>;
      function ListarTodos                      : iDAOEntidade<iEntidadePessoa>;
      function ListarPor(Value: Variant)        : iDAOEntidade<iEntidadePessoa>;
      function Excluir                          : iDAOEntidade<iEntidadePessoa>;
      function Atualizar                        : iDAOEntidade<iEntidadePessoa>;
      function Inserir                          : iDAOEntidade<iEntidadePessoa>;
      function Get(const Key    : String = '')    : TJsonArray;
      function Put(const Key    : String; jObject : TJsonObject) :iDAOEntidade<iEntidadePessoa>;
      function Post(const Key   : String; jObject : TJsonObject) :iDAOEntidade<iEntidadePessoa>;
      function Delete(const Key : String)                        :iDAOEntidade<iEntidadePessoa>;
      function This: iEntidadePessoa;
  end;

implementation

{ TClassePadrao }
constructor TDAOEntidadePessoa.Create;
begin
  FPessoa                 := TEntidadePessoa.New(Self);
  FControllerFactoryQuery := TControllerFactoryQuery.New;
  FQuery := FControllerFactoryQuery.FactoryQuery.Query(nil);
end;

destructor TDAOEntidadePessoa.Destroy;
begin
  inherited;
end;

class function TDAOEntidadePessoa.New: iDAOEntidade<iEntidadePessoa>;
begin
  Result := Self.Create;
end;

function TDAOEntidadePessoa.Get(const Key : String = ''):TJsonArray;
begin
  if Key='' then
    FQuery.SQL(FSQL) else
    FQuery.SQL(FSQL+' WHERE ID='+ Key);

  FQuery.Open;
  Result:= FQuery.DataSet.AsJSONArray;
end;

function TDAOEntidadePessoa.Put(const Key: string; jObject: TJsonObject): iDAOEntidade<iEntidadePessoa>;
begin
  Result := Self;
  FQuery.SQL(FSQL+' WHERE 1 = 2 ');
  FQuery.Open;
  FQuery.DataSet.FromJSONObject(jObject);
  FQuery.ApplyUpdates;
end;

function TDAOEntidadePessoa.Post(const Key: string; jObject: TJsonObject): iDAOEntidade<iEntidadePessoa>;
begin
  Result := Self;
  FQuery.SQL(FSQL+' WHERE ID= :ID');
  FQuery.Params('ID', Key);
  FQuery.Open;
  FQuery.DataSet.RecordFromJSONObject(jObject);
  FQuery.ApplyUpdates;
end;

function TDAOEntidadePessoa.Delete(const Key : String): iDAOEntidade<iEntidadePessoa>;
begin
  Result := Self;
  FQuery.SQL('DELETE FROM PESSOA WHERE ID= :ID');
  FQuery.Params('ID', Key);
  FQuery.ExecSQL;
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

function TDAOEntidadePessoa.Listar(Value: TDataSource): iDAOEntidade<iEntidadePessoa>;
begin
  Result := Self;
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
