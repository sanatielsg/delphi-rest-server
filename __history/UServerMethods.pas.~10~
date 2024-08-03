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
  var vPessoa : TPessoa;
      vResult : TJSONValue;
begin
  vResult := Nil;
  vPessoa := DM.GetPessoa(1);
  if vPessoa <> Nil then
  begin
    vResult := TJson.ObjectToJsonObject(vPessoa);
  end;
  Result := vResult;
end;


end.

