unit Model.Entidade.Impl.Factory;

interface

uses
  Model.Entidade.Factory.Interfaces,
  Model.Entidade.Pessoa.Interfaces,
  Model.Impl.Entidade.Pessoa,
  Model.DAO.Entidade.Interfaces;

type
  TFactoryEntidade = class(TInterfacedObject, iFactoryEntidade)
    private
      FParent         : iDAOEntidade<iEntidadePessoa>;
      FEntidadePessoa : iEntidadePessoa;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iFactoryEntidade;

      function EntidadePessoa(Parent: iDAOEntidade<iEntidadePessoa>) : iEntidadePessoa;
  end;

implementation

{ TClassePadrao }

constructor TFactoryEntidade.Create;
begin
  //
end;

destructor TFactoryEntidade.Destroy;
begin
  //
  inherited;
end;

class function TFactoryEntidade.New: iFactoryEntidade;
begin
  Result := Self.Create;
end;

function TFactoryEntidade.EntidadePessoa(Parent: iDAOEntidade<iEntidadePessoa>) : iEntidadePessoa;
begin
  FParent := Parent;
  if not Assigned(FEntidadePessoa) then
    FEntidadePessoa := TEntidadePessoa.New(Parent);

  Result := FEntidadePessoa;
end;

end.
