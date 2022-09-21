program ServerERP;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  ServerMethodsUnit1 in 'src\server\mvc\view\entidade\ServerMethodsUnit1.pas' {ServerMethods1: TDSServerModule},
  ufrmServerERP in 'src\server\mvc\view\ufrmServerERP.pas' {frmServerERP},
  Model.Conexao.Configuracao.Interfaces in 'src\server\mvc\model\conexao\interfaces\Model.Conexao.Configuracao.Interfaces.pas',
  Model.Conexao.Interfaces in 'src\server\mvc\model\conexao\interfaces\Model.Conexao.Interfaces.pas',
  Model.Impl.Conexao.Configuracao in 'src\server\mvc\model\conexao\impl\Model.Impl.Conexao.Configuracao.pas',
  Model.Impl.Conexao.Firedac.MySQL in 'src\server\mvc\model\conexao\impl\Model.Impl.Conexao.Firedac.MySQL.pas',
  Model.Factory.Conexao.Interfaces in 'src\server\mvc\model\conexao\interfaces\Factory\Model.Factory.Conexao.Interfaces.pas',
  Model.Impl.Factory.Conexao in 'src\server\mvc\model\conexao\impl\Factory\Model.Impl.Factory.Conexao.pas',
  Controller.Factory.Conexao.Interfaces in 'src\server\mvc\controller\controller\Controller.Factory.Conexao.Interfaces.pas',
  Controller.Impl.Factory.Conexao in 'src\server\mvc\controller\impl\Controller.Impl.Factory.Conexao.pas',
  Model.Query.Interfaces in 'src\server\mvc\model\conexao\interfaces\Model.Query.Interfaces.pas',
  Model.Factory.Query.Interfaces in 'src\server\mvc\model\conexao\interfaces\Factory\Model.Factory.Query.Interfaces.pas',
  Controller.Factory.Query.Interfaces in 'src\server\mvc\controller\controller\Controller.Factory.Query.Interfaces.pas',
  Controller.Impl.Factory.Query in 'src\server\mvc\controller\impl\Controller.Impl.Factory.Query.pas',
  Model.DAO.Entidade.Interfaces in 'src\server\mvc\model\DAO\interfaces\Model.DAO.Entidade.Interfaces.pas',
  Model.Impl.DAO.Entidade.Pessoa in 'src\server\mvc\model\DAO\impl\Model.Impl.DAO.Entidade.Pessoa.pas',
  Model.Impl.Entidade.Pessoa in 'src\server\mvc\model\entidade\impl\Model.Impl.Entidade.Pessoa.pas',
  Model.DAO.Entidade.Factory.Interfaces in 'src\server\mvc\model\DAO\interfaces\Factory\Model.DAO.Entidade.Factory.Interfaces.pas',
  Model.Impl.Factory.Entidade.DAO in 'src\server\mvc\model\DAO\impl\Factory\Model.Impl.Factory.Entidade.DAO.pas',
  Model.Impl.Factory.DAO in 'src\server\mvc\model\DAO\impl\Factory\Model.Impl.Factory.DAO.pas',
  Model.Entidade.Pessoa.Interfaces in 'src\server\mvc\model\entidade\interfaces\Model.Entidade.Pessoa.Interfaces.pas',
  Controller.Factory.Entidade.DAO.Interfaces in 'src\server\mvc\controller\controller\Controller.Factory.Entidade.DAO.Interfaces.pas',
  Controller.Impl.Factory.Entidade.DAO in 'src\server\mvc\controller\impl\Controller.Impl.Factory.Entidade.DAO.pas',
  Model.Impl.Query.Firedac in 'src\server\mvc\model\conexao\impl\Model.Impl.Query.Firedac.pas',
  Model.Impl.Factory.Query in 'src\server\mvc\model\conexao\impl\Factory\Model.Impl.Factory.Query.pas',
  WebModuleUnit1 in 'src\server\mvc\WebModuleUnit1.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TfrmServerERP, frmServerERP);
  Application.Run;
end.
