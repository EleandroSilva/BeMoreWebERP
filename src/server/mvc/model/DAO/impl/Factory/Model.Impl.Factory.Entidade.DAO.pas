unit Model.Impl.Factory.Entidade.DAO;

interface

uses
  Model.DAO.Entidade.Factory.Interfaces,
  Model.DAO.Entidade.Interfaces,
  Model.Entidade.Pessoa.Interfaces,
  Model.Impl.DAO.Entidade.Pessoa,
  Model.Entidade.Logradouro.Interfaces,
  Model.Impl.DAO.Entidade.Logradouro;

type
  TFactoryEntidadeDAO = class(TInterfacedObject, iFactoryEntidade)
    private
      FPessoa     : iDAOEntidade<iEntidadePessoa>;
      FLogradouro : iDAOEntidade<iEntidadeLogradouro>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iFactoryEntidade;

      function Pessoa     : iDAOEntidade<iEntidadePessoa>;
      function Logradouro : iDAOEntidade<iEntidadeLogradouro>;
  end;

implementation

{ TClassePadrao }

constructor TFactoryEntidadeDAO.Create;
begin
  //
end;

destructor TFactoryEntidadeDAO.Destroy;
begin
  //
  inherited;
end;

class function TFactoryEntidadeDAO.New: iFactoryEntidade;
begin
  Result := Self.Create;
end;

function TFactoryEntidadeDAO.Pessoa: iDAOEntidade<iEntidadePessoa>;
begin
  if not Assigned(FPessoa) then
    FPessoa := TDAOEntidadePessoa.New;

  Result := FPessoa;
end;

function TFactoryEntidadeDAO.Logradouro: iDAOEntidade<iEntidadeLogradouro>;
begin
  if Assigned(FLogradouro) then
    FLogradouro := TDAOEntidadeLogradouro.New;

  Result := FLogradouro;
end;

end.
