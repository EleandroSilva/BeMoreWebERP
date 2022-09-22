unit View.Entidade.Pessoa;

interface

uses
  System.JSON,

  View.Entidade.Pessoa.Interfaces,
  Controller.Factory.Entidade.DAO.Interfaces;

{$METHODINFO ON}

type
  TPessoa = class(TInterfacedObject, iViewEntidade)
    private
      FController : iControllerFactoryEntidadeDAO;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iViewEntidade;

      function Entidade(const Key : String) : TJsonArray;
  end;

{$METHODINFO OFF}

implementation

{ TClassePadrao }

constructor TPessoa.Create;
begin
  //
end;

destructor TPessoa.Destroy;
begin
  //
  inherited;
end;

class function TPessoa.New: iViewEntidade;
begin
  Result := Self.Create;
end;

function TPessoa.Entidade(const Key: String): TJsonArray;
begin
  Result := FController
                  .DAOFactoryEntidade
                   .Entidade
                    .Pessoa
                     .Get(Key);
end;

end.
