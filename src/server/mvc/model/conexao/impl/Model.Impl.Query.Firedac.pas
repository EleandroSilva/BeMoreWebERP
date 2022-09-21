unit Model.Impl.Query.Firedac;

interface

uses
  System.SysUtils,
  Data.DB,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  Model.Conexao.Interfaces,
  Model.Query.Interfaces,
  Model.Impl.Conexao.Firedac.MySQL;


type
  TQuery = class(TInterfacedObject, iQuery)
    private
      FParent  : iConexao;
      FQuery   : TFDQuery;
    public
      constructor Create(Parent : iConexao);
      destructor Destroy; override;
      class function New(Parent : iConexao) : iQuery;

      function DataSet             : TDataSet;
      function Close               : iQuery;
      function Open                : iQuery;
      function Clear               : iQuery;
      function SQL(Value : String) : iQuery;
  end;

implementation

uses
  Vcl.Dialogs;

{ TClassePadrao }
constructor TQuery.Create(Parent : iConexao);
begin
  FParent := Parent;
  FQuery  := TFDQuery.Create(nil);

  if not Assigned(FParent) then
    FParent := TFiredacMySQL.New;

  FQuery.Connection := TFDConnection(FParent.Connection); //Fazendo um CAST e criando um OBJETO :)--Top
end;

function TQuery.DataSet: TDataSet;
begin
  Result := FQuery;
end;

destructor TQuery.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

class function TQuery.New(Parent : iConexao) : iQuery;
begin
  Result := Self.Create(Parent);
end;

function TQuery.Close: iQuery;
begin
  Result := Self;
  FQuery.Close;
end;

function TQuery.Clear: iQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
end;

function TQuery.SQL(Value: String): iQuery;
begin
  Result := Self;
  FQuery.SQL.Add(Value);
end;

function TQuery.Open: iQuery;
begin
  Result := Self;
  FQuery.Open;

  if FQuery.IsEmpty then
   showmessage('tabela sem registro');
end;

end.
