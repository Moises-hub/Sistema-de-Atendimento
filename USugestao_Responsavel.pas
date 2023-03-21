unit USugestao_Responsavel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.DBCtrls, Vcl.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSugestao_Responsavel = class(TForm)
    Label16: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sugestao_Responsavel: TSugestao_Responsavel;

implementation

{$R *.dfm}

uses UDM, UFrm_Sugestoes;

procedure TSugestao_Responsavel.RzBitBtn1Click(Sender: TObject);
VAR
q : TFDQuery;
begin

      q:=TFDQuery.Create(nil);
      q.Connection:=dm.Conexao;
      q.SQL.Text:='update COL_SUGESTOES set responsavel_empresa =:E where  ID_COLSUGESTOES =:a';
      q.Params[0].AsInteger:= DBLookupComboBox1.KeyValue;
      q.Params[1].AsInteger:=Frm_Sugestao.Query_SugestoesID_COLSUGESTOES.AsInteger;
      q.ExecSQL;

      q.Free;
      close;

end;

procedure TSugestao_Responsavel.RzBitBtn2Click(Sender: TObject);
begin
close;
end;

end.
