unit u_data;

interface

uses
  System.SysUtils, System.Classes, Sparkle.HttpServer.Module,
  Sparkle.HttpServer.Context, Sparkle.Comp.Server,
  Sparkle.Comp.HttpSysDispatcher, Aurelius.Drivers.Interfaces,
  Aurelius.Comp.Connection, XData.Comp.ConnectionPool, XData.Server.Module,
  XData.Comp.Server, XData.OpenAPI.Service, svc.login, svc.course, svc.training;

type
  TServerContainer = class(TDataModule)
    SparkleHttpSysDispatcher: TSparkleHttpSysDispatcher;
    XDataServer: TXDataServer;
    XDataConnectionPool: TXDataConnectionPool;
    AureliusConnection: TAureliusConnection;
  end;

var
  ServerContainer: TServerContainer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

initialization

TLoginService.ClassName; // 强制链接器包含 LoginService 单元
TCourseService.ClassName;
TTrainingService.ClassName;

end.
