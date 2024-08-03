unit UServerMethods;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
System.JSON, System.Generics.Collections, UPessoa, UDM, REST.Json;

type
{$METHODINFO ON}
  TServerMethods = class(TComponent)
  private
    { Private declarations }
  public
    { Public declarations }
    function GetPessoa(ASeq : Integer): TJSONValue;
  end;
{$METHODINFO OFF}

implementation

{ TServerMethods }

function TServerMethods.GetPessoa(ASeq : Integer): TJSONValue;
  var VPessoa : TPessoa;
begin
  Result := Nil;
  try
    VPessoa := DM.GetPessoa(ASeq);
    if VPessoa <> Nil then
    begin
      Result := TJson.ObjectToJsonObject(VPessoa);
    end;
  finally
    FreeAndNil(VPessoa);
  end;
end;


end.

