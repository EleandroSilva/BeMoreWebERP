unit Model.DAO.Entidade.Interfaces;

interface

uses
  Data.DB;

type
  iDAOEntidade<T> = interface
    ['{125B169A-B56F-49BF-A92B-303B2F79D0CF}']
    function Listar(Value : TDataSource) : iDAOEntidade<T>;
    function ListarTodos                 : iDAOEntidade<T>;
    function ListarPor(Value: Variant)   : iDAOEntidade<T>;
    function Excluir                     : iDAOEntidade<T>;
    function Atualizar                   : iDAOEntidade<T>;
    function Inserir                     : iDAOEntidade<T>;
    function Get                         : iDAOEntidade<T>;
    function Put                         : iDAOEntidade<T>;
    function This: T;
  end;

implementation

end.
