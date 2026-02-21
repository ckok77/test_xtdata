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
var
  C1, C2: TCourse;
begin
  SetLength(Result, 2);

  C1 := TCourse.Create;
  C1.Id := 1;
  C1.Name := '基础课程';
  Result[0] := C1;

  C2 := TCourse.Create;
  C2.Id := 2;
  C2.Name := '进阶课程';
  Result[1] := C2;
end;

initialization
  RegisterServiceType(TypeInfo(ICourseService));
  OutputDebugString('CourseService initialization executed');

end.

