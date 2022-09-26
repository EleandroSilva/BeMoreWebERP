unit View.Entidade.Logradouro;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON,

  Controller.Factory.Entidade.DAO.Interfaces,
  Controller.Impl.Factory.Entidade.DAO;


{$METHODINFO ON}

type
  TLogradouro = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FController : iControllerFactoryEntidadeDAO;

  public
    { Public declarations }
    function  Logradouro(const Key : String)               : TJsonArray;
    procedure acceptLogradouro(const Key : String; jObject : TJsonObject);
    procedure updateLogradouro(const Key : String; jObject : TJsonObject);
    procedure cancelLogradouro(const Key : String);
  end;
{$METHODINFO OFF}

var
  Logradouro : TLogradouro;
  FResultadoGet : Boolean;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
procedure TLogradouro.DataModuleCreate(Sender: TObject);
begin
   FController := TControllerFactoryEntidadeDAO.New;
end;

function TLogradouro.Logradouro(const Key: String): TJsonArray;
begin
  Result := FController
                  .DAOFactoryEntidade
                   .Entidade
                    .Logradouro
                     .Get(Key);
  FResultadoGet:= True;
end;

procedure TLogradouro.acceptLogradouro(const Key: String; jObject: TJsonObject);
begin

end;

procedure TLogradouro.cancelLogradouro(const Key: String);
begin

end;

procedure TLogradouro.updateLogradouro(const Key: String; jObject: TJsonObject);
begin

end;

end.
