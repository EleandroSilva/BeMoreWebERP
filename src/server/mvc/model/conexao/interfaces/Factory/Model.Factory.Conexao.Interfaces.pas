unit Model.Factory.Conexao.Interfaces;

interface

uses
  Model.Conexao.Interfaces;


type
  iFactoryConexao = interface
    ['{78FC6D34-458F-4001-80E2-850A9B047DD9}']
    function FactoryConexao : iConexao;
  end;

implementation

end.
