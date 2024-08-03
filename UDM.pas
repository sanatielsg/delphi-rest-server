unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.IBBase, UPessoa, System.Generics.Collections;

type
  TDM = class(TDataModule)
    Con: TFDConnection;
    Qry: TFDQuery;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetPessoa(ASeq: Integer): TPessoa;
//    function GetListPessoa():
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

function TDM.GetPessoa(ASeq: Integer): TPessoa;
  var VSQL : string;
      VPessoa : TPessoa;
begin
  VPessoa := Nil;
  VSQL := 'SELECT FIRST 1 * FROM PESSOA WHERE PES_SEQ = :pes_seq';

  try
    with Qry do
    begin
      SQL.Clear;
      SQL.Add(VSQL);
      ParamByName('pes_seq').AsInteger := ASeq;
      Open();
      if Qry.RecordCount > 0 then
      begin
        VPessoa := TPessoa.Create;
        with VPessoa do
        begin
          Seq := FieldByName('pes_seq').AsInteger;
          Nome := FieldByName('pes_nome').AsString;
          DtCriacao := FieldByName('pes_dt_criacao').AsString;
        end;
      end;
    end;
  finally
    Result := VPessoa;
  end;
end;

end.
