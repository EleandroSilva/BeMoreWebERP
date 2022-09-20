program ServerERP;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  ServerMethodsUnit1 in 'src\server\mvc\view\entidade\ServerMethodsUnit1.pas' {ServerMethods1: TDSServerModule},
  WebModuleUnit1 in 'src\server\mvc\model\conexao\WebModuleUnit1.pas' {WebModule1: TWebModule},
  ufrmServerERP in 'src\server\mvc\view\ufrmServerERP.pas' {frmServerERP},
  Model.Conexao.Interfaces in 'src\server\mvc\model\conexao\interfaces\Model.Conexao.Interfaces.pas',
  Model.Conexao.Configuracao.Interfaces in 'src\server\mvc\model\conexao\interfaces\Model.Conexao.Configuracao.Interfaces.pas',
  Model.Impl.Configuracao.Conexao in 'src\server\mvc\model\conexao\impl\Model.Impl.Configuracao.Conexao.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TfrmServerERP, frmServerERP);
  Application.Run;
end.
