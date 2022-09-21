unit Controller.Impl.Factory.Entidade.DAO;

interface

uses
  Model.DAO.Entidade.Factory.Interfaces,
  Controller.Factory.Entidade.DAO.Interfaces,
  Model.Impl.Factory.DAO;


type
  TControllerFactoryEntidadeDAO = class(TInterfacedObject, iControllerFactoryEntidadeDAO)
    private
      FDAOFactoryEntidade : iDAOFactory;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerFactoryEntidadeDAO;

      function DAOFactoryEntidade : iDAOFactory;
  end;

implementation

{ TClassePadrao }

constructor TControllerFactoryEntidadeDAO.Create;
begin
  //
end;

destructor TControllerFactoryEntidadeDAO.Destroy;
begin
  //
  inherited;
end;

class function TControllerFactoryEntidadeDAO.New: iControllerFactoryEntidadeDAO;
begin
  Result := Self.Create;
end;

function TControllerFactoryEntidadeDAO.DAOFactoryEntidade: iDAOFactory;
begin
  if not Assigned(FDAOFactoryEntidade) then
    FDAOFactoryEntidade := TFactoryDAO.New;

  Result := FDAOFactoryEntidade;
end;

end.
