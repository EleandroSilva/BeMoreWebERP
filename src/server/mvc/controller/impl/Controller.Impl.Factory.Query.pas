unit Controller.Impl.Factory.Query;

interface

uses
  Controller.Factory.Query.Interfaces,
  Model.Factory.Query.Interfaces,
  Model.Impl.Factory.Query;

type
  TControllerFactoryQuery = class(TInterfacedObject, iControllerFactoryQuery)
    private
      FFactoryQuery : iFactoryQuery;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerFactoryQuery;

      function FactoryQuery : iFactoryQuery;
  end;

implementation

{ TClassePadrao }

constructor TControllerFactoryQuery.Create;
begin
  //
end;

destructor TControllerFactoryQuery.Destroy;
begin
  //
  inherited;
end;

function TControllerFactoryQuery.FactoryQuery: iFactoryQuery;
begin
  if not Assigned(FFactoryQuery) then
    FFactoryQuery := TFactoryQuery.New;

  Result := FFactoryQuery;
end;

class function TControllerFactoryQuery.New: iControllerFactoryQuery;
begin
  Result := Self.Create;
end;

end.
