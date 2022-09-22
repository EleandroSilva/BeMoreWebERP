unit View.Entidade.Pessoa.Interfaces;

interface

uses
  System.JSON;

type
  iViewEntidade = interface
    ['{64E01761-2F2B-4D68-A0BB-85837DAB8AD8}']
    function Entidade(const Key : String) : TJsonArray;
  end;

implementation

end.
