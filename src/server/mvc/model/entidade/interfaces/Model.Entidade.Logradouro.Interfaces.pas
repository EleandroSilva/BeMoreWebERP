unit Model.Entidade.Logradouro.Interfaces;

interface

uses
  Model.DAO.Entidade.Interfaces;

type
  iEntidadeLogradouro = interface
    ['{768810D7-D6F1-415A-8FC2-A671D950CD2C}']
    function ID(Value : Integer)     : iEntidadeLogradouro; overload;
    function ID     : Integer;                              overload;
    function Cep(Value : String)     : iEntidadeLogradouro; overload;
    function Cep    : String;                               overload;
    function IBGE(Value : Integer)   : iEntidadeLogradouro; overload;
    function IBGE   : Integer;                              overload;
    function Nome(Value : String)    : iEntidadeLogradouro; overload;
    function Nome   : String;                               overload;
    function Bairro (Value : String) : iEntidadeLogradouro; overload;
    function Bairro : String;                               overload;

    function &End                    : iDAOEntidade<iEntidadeLogradouro>;
  end;


implementation

end.
