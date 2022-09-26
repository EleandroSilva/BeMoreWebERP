unit View.Entidade.Fatory.Interfaces;

interface

uses
  View.Entidade.Pessoa,
  View.Entidade.Logradouro;

type
  iViewEntidadeFactory = interface
    ['{64E01761-2F2B-4D68-A0BB-85837DAB8AD8}']
    function Pessoa     : TPessoa;
    function Logradouro : TLogradouro;
  end;

implementation

end.
