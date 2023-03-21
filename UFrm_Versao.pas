unit UFrm_Versao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzButton,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList;

type
  TFrm_Versao = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    RzBitBtn3: TRzBitBtn;
    RzComboBox1: TRzComboBox;
    Edit1: TEdit;
    RzBitBtn2: TRzBitBtn;
    ActionList1: TActionList;
    Act_Salvar: TAction;
    Act_Cancelar: TAction;
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Versao: TFrm_Versao;

implementation

{$R *.dfm}

uses UFrm_CadVersao, UDM;

procedure TFrm_Versao.Act_CancelarExecute(Sender: TObject);
begin
    RzComboBox1.ItemIndex:=-1;
     RzComboBox1.Enabled:=true;
     Edit1.clear;

     Frm_CadVersao.cadastro :=0;
     close;
end;

procedure TFrm_Versao.Act_SalvarExecute(Sender: TObject);
var
query_cadastro : Tfdquery;
begin
         if RzComboBox1.ItemIndex=-1 then
            begin
              ShowMessage('selecione o software!');
              RzComboBox1.SetFocus;
            end
            else
            if length(Edit1.Text)=0 then
              begin
              ShowMessage('digite o numero da versão');
              Edit1.SetFocus;
              end
              else
              begin
                  if Frm_CadVersao.cadastro = 0 then
                  begin
                   query_cadastro:=TFDQuery.Create(self);
                   query_cadastro.Connection:=DM.Conexao;
                   query_cadastro.SQL.Text:='insert into CONTROLE_VERSAO(id,software,versao,data_cadastro) ' +
                                            'values((select gen_id(CONTROLE_VERSAO_ID,1)from rdb$database), ' +
                                            '       :S, ' +
                                            '       :V, ' +
                                            'current_date) ';
                   query_cadastro.params[0].AsString:=RzComboBox1.Text;
                   query_cadastro.params[1].AsString:=Edit1.Text;
                   query_cadastro.ExecSQL;
                   Frm_CadVersao.Query_Versao.Refresh;
                  end
                  else
                   if Frm_CadVersao.cadastro = 0 then
                      begin
                       query_cadastro:=TFDQuery.Create(self);
                       query_cadastro.Connection:=DM.Conexao;
                       query_cadastro.SQL.Text:='update CONTROLE_VERSAO set software =:S, versao :V ' +
                                                'where id =:i ';
                       query_cadastro.params[0].AsString:=RzComboBox1.Text;
                       query_cadastro.params[1].AsString:=Edit1.Text;
                       query_cadastro.params[2].AsInteger:=Frm_CadVersao.id;
                       query_cadastro.ExecSQL;
                      end;
                 query_cadastro.Free;
              end;

              Frm_CadVersao.Query_Versao.Refresh;
              Frm_CadVersao.Query_Versao.Locate('software',RzComboBox1.text,[loCaseInsensitive]);
              RzComboBox1.ItemIndex:=-1;
              Edit1.Clear;
              close;
end;

end.
