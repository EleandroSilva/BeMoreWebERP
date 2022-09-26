unit View.Entidade.Factory;

interface

uses
  View.Entidade.Fatory.Interfaces,
  View.Entidade.Pessoa,
  View.Entidade.Logradouro;

type
  TViewEntidadeFactory = class(TInterfacedObject, iViewEntidadeFactory)
    private
      FPessoa : TPessoa;
      FLogradouro : TLogradouro;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iViewEntidadeFactory;

      function Pessoa     : TPessoa;
      function Logradouro : TLogradouro;
  end;

implementation

{ TViewEntidadeFactory }

constructor TViewEntidadeFactory.Create;
begin
  //
end;

destructor TViewEntidadeFactory.Destroy;
begin
  FPessoa.DisposeOf;
  FLogradouro.DisposeOf;
  inherited;
end;

class function TViewEntidadeFactory.New: iViewEntidadeFactory;
begin
  Result := Self.Create;
end;

function TViewEntidadeFactory.Pessoa: TPessoa;
begin
  if not Assigned(FPessoa) then
    FPessoa := TPessoa.Create(nil);

  Result := FPessoa;
end;

function TViewEntidadeFactory.Logradouro: TLogradouro;
begin
  if not Assigned(FLogradouro) then
    FLogradouro := TLogradouro.Create(nil);

  Result := FLogradouro;
end;

end.
