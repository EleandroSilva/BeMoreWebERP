unit Model.Impl.Factory.DAO;

interface

uses
  System.SysUtils,
  Model.DAO.Entidade.Factory.Interfaces,
  Model.Impl.Factory.Entidade.DAO;

type
  TFactoryDAO = class(TInterfacedObject, iDAOFactory)
    private
      FEntidade : iFactoryEntidade;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOFactory;

      function Entidade: iFactoryEntidade;
  end;

implementation

{ TClassePadrao }

constructor TFactoryDAO.Create;
begin
  //
end;

destructor TFactoryDAO.Destroy;
begin
  //
  inherited;
end;

class function TFactoryDAO.New: iDAOFactory;
begin
  Result := Self.Create;
end;

function TFactoryDAO.Entidade: iFactoryEntidade;
begin
 if not Assigned(FEntidade) then
   FEntidade := TFactoryEntidadeDAO.New;

 Result := FEntidade;
end;

end.
