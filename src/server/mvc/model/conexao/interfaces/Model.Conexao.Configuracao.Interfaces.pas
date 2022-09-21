unit Model.Conexao.Configuracao.Interfaces;

interface

type
  iConfiguracao = interface
    ['{C602C6AB-F0A2-4546-9B03-6FC774DDDB22}']
    function DriverID    : String;
    function Database    : String;
    function UserName    : String;
    function Password    : String;
    function Port        : String;
    function ServerHost  : String;
    function Schema      : String;
    function Locking     : String;
    function LibraryName : String;
    function VendorHome  : String;
end;

implementation

end.
