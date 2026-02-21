program svr;

uses
  Vcl.Forms,
  u_data in 'u_data.pas' {ServerContainer: TDataModule},
  u_main in 'u_main.pas' {MainForm},
  svc.login in 'svc.login.pas',
  svc.course in 'svc.course.pas',
  svc.training in 'svc.training.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
