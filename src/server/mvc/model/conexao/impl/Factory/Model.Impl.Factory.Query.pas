unit Model.Impl.Factory.Query;

interface

uses
  Model.Impl.Query.Firedac,
  Model.Conexao.Interfaces,
  Model.Factory.Query.Interfaces,
  Model.Query.Interfaces;

type
  TFactoryQuery = class(TInterfacedObject, iFactoryQuery)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iFactoryQuery;

      function Query(Connection : iConexao) : iQuery;
  end;

implementation

{ TClassePadrao }

constructor TFactoryQuery.Create;
begin
  //
end;

destructor TFactoryQuery.Destroy;
begin
  //
  inherited;
end;

class function TFactoryQuery.New: iFactoryQuery;
begin
  Result := Self.Create;
end;

function TFactoryQuery.Query(Connection : iConexao) : iQuery;
begin
  Result := TQuery.New(Connection);
end;

end.
