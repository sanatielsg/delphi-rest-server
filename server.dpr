program server;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UServerMethods in 'UServerMethods.pas',
  UServerContainer in 'UServerContainer.pas' {ServerContainer: TDataModule},
  UWebModule in 'UWebModule.pas' {WebModule1: TWebModule},
  UPessoa in 'UPessoa.pas',
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
