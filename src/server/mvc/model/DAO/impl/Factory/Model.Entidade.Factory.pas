unit Model.Entidade.Factory;

interface

uses
  Model.Entidade.Factory.Interfaces,
  Model.Entidade.Interfaces,

  Model.Entidade.Impl.Pessoa;

type
  TEntidadeFactory = class(TInterfacedObject, iEntidadeFactory)
    private
    public
      FEntidade : iEntidade;
      constructor Create;
      destructor Destroy; override;
      class function New : iEntidadeFactory;

      function Entidade : iEntidade;
  end;

implementation

{ TEntidadeFactory }

constructor TEntidadeFactory.Create;
begin
  //
end;

destructor TEntidadeFactory.Destroy;
begin
  inherited;
end;

class function TEntidadeFactory.New: iEntidadeFactory;
begin
  Result := Self.Create;
end;

function TEntidadeFactory.Entidade: iEntidade;
begin
  if not Assigned(FEntidade) then
    FEntidade := TEntidadePessoa.New;

  Result := FEntidade;
end;

end.
