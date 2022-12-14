unit Model.DAO.Entidade.Interfaces;

interface

uses
  Data.DB,
  System.JSON;

type
  iDAOEntidade<T> = interface
    ['{125B169A-B56F-49BF-A92B-303B2F79D0CF}']
    function Get   (const Key : String= '')                    : TJsonArray;
    function Put   (const Key : String; jObject : TJsonObject) :iDAOEntidade<T>;
    function Post  (const Key : String; jObject : TJsonObject) :iDAOEntidade<T>;
    function Delete(const Key : String)                        :iDAOEntidade<T>;

    function This : T;
  end;

implementation

end.
