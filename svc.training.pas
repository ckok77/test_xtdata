unit svc.training;

interface

uses
  XData.Service.Common;

type
  TTrainingRecord = class
  public
    TrainId: Integer;
    User: string;
    Score: Integer;
  end;

  [ServiceContract]
  ITrainingService = interface(IInvokable)
    ['{ABCDEF12-3456-7890-ABCD-1234567890AB}']
    function StartTraining(User: string): Integer;
    function SaveTraining(RecordData: TTrainingRecord): Boolean;
  end;

  [ServiceImplementation]
  TTrainingService = class(TInterfacedObject, ITrainingService)
  public
    function StartTraining(User: string): Integer;
    function SaveTraining(RecordData: TTrainingRecord): Boolean;
  end;

implementation

uses
  System.SysUtils;

function TTrainingService.StartTraining(User: string): Integer;
begin
  // 简单模拟：返回一个随机训练号
  Result := Random(100000);
end;

function TTrainingService.SaveTraining(RecordData: TTrainingRecord): Boolean;
begin
  // 这里你可以写入数据库，现在先模拟成功
  Result := True;
end;

initialization
  RegisterServiceType(TypeInfo(ITrainingService));

end.

