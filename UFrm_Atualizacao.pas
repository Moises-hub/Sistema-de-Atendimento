unit UFrm_Atualizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, RzLabel, RzPanel, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzCmboBx, Vcl.Grids,
  Vcl.DBGrids, System.Actions, Vcl.ActnList, Vcl.Buttons, RzButton,
  System.ImageList, Vcl.ImgList, DosMove;

type
  TFrm_Atualizacao = class(TForm)
    DS_VersaoResumo: TDataSource;
    ActionList2: TActionList;
    Act_Salvar: TAction;
    Act_Sair: TAction;
    DosMove1: TDosMove;
    ImageList1: TImageList;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    Panel2: TPanel;
    Label6: TLabel;
    RzComboBox3: TRzComboBox;
    Label4: TLabel;
    Panel4: TPanel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure RzComboBox1Select(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    PROCEDURE VERSAO;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Atualizacao: TFrm_Atualizacao;

implementation

{$R *.dfm}

uses UDM, UFrm_Principal, UFrm_Atendimento;

procedure TFrm_Atualizacao.Act_SairExecute(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_Atualizacao.Act_SalvarExecute(Sender: TObject);
begin
if RzComboBox1.ItemIndex = -1 then
   begin
     MessageDlg('selecione o software!',mtWarning,[mbOK],0);
     RzComboBox1.SetFocus;
   end
   else
    if RzComboBox2.ItemIndex = -1 then
       begin
         MessageDlg('selecione a versão!',mtWarning,[mbOK],0);
         RzComboBox2.SetFocus;
       end
       else
       begin
        dm.Proc_Atualiza.Params[1].AsInteger:=Frm_Atendimento.Query_atendID_CLIENTE.AsInteger;
        dm.Proc_Atualiza.Params[2].AsString:=RzComboBox2.Text;
        dm.Proc_Atualiza.Params[3].AsString:=RzComboBox1.Text;
        dm.Proc_Atualiza.Params[4].AsInteger:=Frm_Atendimento.Query_atendID_ATENDIMENTO.AsInteger;
        dm.Proc_Atualiza.Params[5].AsInteger:=StrToInt(RzComboBox3.Value);
        dm.Proc_Atualiza.ExecProc;
        close;
       end;

end;

procedure TFrm_Atualizacao.FormShow(Sender: TObject);
begin
if Frm_Atendimento.Query_atendID_STATUS.AsInteger<>2 then
   Act_Salvar.Enabled:=FALSE
   ELSE
  Act_Salvar.Enabled:=TRUE;
end;

procedure TFrm_Atualizacao.RzComboBox1Select(Sender: TObject);
BEGIN
  VERSAO;
end;

procedure TFrm_Atualizacao.VERSAO;
VAR
VERSAO : TFDQuery;
begin
      VERSAO:=TFDQuery.Create(SELF);
      VERSAO.Connection:=DM.Conexao;
      VERSAO.Close;
      VERSAO.SQL.TEXT:='     SELECT * FROM controle_versao ' +
                       '     WHERE SOFTWARE =:F order by id desc';
      VERSAO.PARAMS[0].AsString:=RzComboBox1.Text;
      VERSAO.Open();

      VERSAO.First;
      RzComboBox2.Items.Clear;
      while NOT VERSAO.EOF do
      BEGIN
      RzComboBox2.Items.Add(VERSAO.FieldByName('VERSAO').AsString);
    //  RzComboBox2.ValueS.Add(VERSAO.FieldByName('ID').AsString);
      VERSAO.Next;
      END;
      RzComboBox2.ItemIndex:=0;
      VERSAO.Free;
end;

end.
