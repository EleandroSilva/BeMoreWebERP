unit Model.Factory.Query.Interfaces;

interface

uses
  Model.Conexao.Interfaces,
  Model.Query.Interfaces;



type
  iFactoryQuery = interface
    ['{5610756B-E786-47F8-9CBD-87D9A6D6B99F}']
    function Query(Connection : iConexao) : iQuery;
  end;

implementation

end.
