unit Model.Impl.Entidade.Logradouro;

interface

uses
  Model.Entidade.Logradouro.Interfaces,
  Model.DAO.Entidade.Interfaces;

type
  TEntidadeLogradouro = class(TInterfacedObject, iEntidadeLogradouro)
    private
      [Weak]
      FParent : iDAOEntidade<iEntidadeLogradouro>;

      FID     : Integer;
      FCep    : String;
      FIBGE   : Integer;
      FNome   : String;
      FBairro : String;
      FResultadoGet : Boolean;
    public
      constructor Create(Parent :iDAOEntidade<iEntidadeLogradouro>);
      destructor Destroy; override;
      class function New(Parent : iDAOEntidade<iEntidadeLogradouro>) : iEntidadeLogradouro;

      function ID(Value : Integer)     : iEntidadeLogradouro; overload;
      function ID : Integer;                                  overload;
      function Cep(Value : String)     : iEntidadeLogradouro; overload;
      function Cep : String;                                  overload;
      function IBGE(Value : Integer)   : iEntidadeLogradouro; overload;
      function IBGE   : Integer;                              overload;
      function Nome(Value : String)    : iEntidadeLogradouro; overload;
      function Nome : String;                                 overload;
      function Bairro (Value : String) : iEntidadeLogradouro; overload;
      function Bairro : String;                               overload;

      function &End                    : iDAOEntidade<iEntidadeLogradouro>;
  end;

implementation

{ TClassePadrao }
constructor TEntidadeLogradouro.Create(Parent :iDAOEntidade<iEntidadeLogradouro>);
begin
  FParent := Parent;
end;

destructor TEntidadeLogradouro.Destroy;
begin
  //
  inherited;
end;


class function TEntidadeLogradouro.New(Parent : iDAOEntidade<iEntidadeLogradouro>) : iEntidadeLogradouro;
begin
  Result := Self.Create(Parent);
end;

function TEntidadeLogradouro.ID(Value: Integer): iEntidadeLogradouro;
begin
  Result := Self;
  FID    := Value;
end;

function TEntidadeLogradouro.ID: Integer;
begin
  Result := FID;
end;

function TEntidadeLogradouro.Cep(Value: String): iEntidadeLogradouro;
begin
  Result := Self;
  FCep   := Value;
end;

function TEntidadeLogradouro.Cep: String;
begin
  Result := FCep;
end;

function TEntidadeLogradouro.IBGE(Value: Integer): iEntidadeLogradouro;
begin
  Result := Self;
  FIBGE  := Value;
end;

function TEntidadeLogradouro.IBGE: Integer;
begin
  Result := FIBGE;
end;

function TEntidadeLogradouro.Nome(Value: String): iEntidadeLogradouro;
begin
  Result := Self;
  FNome  := Value;
end;

function TEntidadeLogradouro.Nome: String;
begin
  Result := FNome;
end;

function TEntidadeLogradouro.Bairro(Value: String): iEntidadeLogradouro;
begin
  Result  := Self;
  FBairro := Value;
end;

function TEntidadeLogradouro.Bairro: String;
begin
  Result := FBairro;
end;

function TEntidadeLogradouro.&End: iDAOEntidade<iEntidadeLogradouro>;
begin
  Result := FParent;
end;

end.
