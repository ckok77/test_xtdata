unit svc.login;

interface

uses
  XData.Service.Common;

type
  [ServiceContract]
  ILoginService = interface(IInvokable)
    ['{A1B2C3D4-E5F6-47A8-9B0C-123456789ABC}']
    function Login(User, Pass: string): Boolean;
  end;

  [ServiceImplementation]
  TLoginService = class(TInterfacedObject, ILoginService)
  public
    function Login(User, Pass: string): Boolean;
  end;

implementation

uses
  System.SysUtils;

function TLoginService.Login(User, Pass: string): Boolean;
begin
  Result := (User = 'admin') and (Pass = '123');
end;

initialization
  RegisterServiceType(TypeInfo(ILoginService));

end.

