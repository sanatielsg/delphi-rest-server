unit UPessoa;

interface

type
TPessoa = class
  private
    FSeq : Integer;
    FNome: string;
    FDtCriacao : string;
  public
    property Seq : Integer read FSeq write FSeq;
    property Nome : string read FNome write FNome;
    property DtCriacao : string read FDtCriacao write FDtCriacao;
end;

implementation

end.
