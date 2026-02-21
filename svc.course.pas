unit svc.course;

interface

uses
  winapi.Windows,
  XData.Service.Common;

type
  TCourse = class
  public
    Id: Integer;
    Name: string;
  end;

  [ServiceContract]
  ICourseService = interface(IInvokable)
    ['{F1A2B3C4-D5E6-47A8-9B0C-987654321000}']
    function GetCourses: TArray<TCourse>;
  end;

  [ServiceImplementation]
  TCourseService = class(TInterfacedObject, ICourseService)
  public
    function GetCourses: TArray<TCourse>;
  end;

implementation

uses
  System.SysUtils;

function TCourseService.GetCourses: TArray<TCourse>;
begin
  SetLength(Result, 2);

  Result[0].Id := 1;
  Result[0].Name := '基础课程';

  Result[1].Id := 2;
  Result[1].Name := '进阶课程';
end;

initialization
  RegisterServiceType(TypeInfo(ICourseService));
  OutputDebugString('CourseService initialization executed');

end.

