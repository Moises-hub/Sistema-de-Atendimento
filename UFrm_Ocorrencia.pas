unit UFrm_Ocorrencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DosMove, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Buttons,
  RzButton, FireDAC.Comp.Client, RzCmboBx, RzEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet;

type
  TFrm_Ocorrencia = class(TForm)
    DosMove1: TDosMove;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Salvar: TAction;
    Act_Sair: TAction;
    Label6: TLabel;
    RzComboBox2: TRzComboBox;
    Label2: TLabel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    RzMemo1: TRzMemo;
    Label4: TLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RzComboBox1: TRzComboBox;
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure alimentacombo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    cadastro : integer;
    atend : integer;

  end;

var
  Frm_Ocorrencia: TFrm_Ocorrencia;

implementation

{$R *.dfm}

uses UDM, UFrm_Atendimento, UFrm_List_Agendamento;



procedure TFrm_Ocorrencia.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_Ocorrencia.Act_SalvarExecute(Sender: TObject);
BEGIN
if length(RzComboBox1.Text)=0 then
   begin
   ShowMessage('a descrição não pode ser em Branco!');
   RzComboBox1.Text;
   end
   else
   begin


       dm.Proc_LancaOcorrencia.params[1].AsInteger := atend;
       dm.Proc_LancaOcorrencia.params[2].AsMemo := RzMemo1.Text;
       dm.Proc_LancaOcorrencia.params[3].Asstring := RzComboBox1.Text;
       dm.Proc_LancaOcorrencia.params[4].Asstring :=ComboBox1.Text;
       dm.Proc_LancaOcorrencia.params[5].AsInteger := cadastro;
       if Frm_List_Agendamento <> nil then
       dm.Proc_LancaOcorrencia.params[6].AsInteger := dm.Query_AtendimentoID_CLIENTE.AsInteger
       else
       dm.Proc_LancaOcorrencia.params[6].AsInteger := Frm_Atendimento.Query_atendID_CLIENTE.AsInteger;
       dm.Proc_LancaOcorrencia.params[7].AsInteger := StrToInt(RzComboBox2.Value);

       dm.Proc_LancaOcorrencia.ExecProc;
       dm.FDTransaction1.Commit;
       close;
   end;

end;

procedure TFrm_Ocorrencia.alimentacombo;
begin

fdquery1.Open();
FDQuery1.First;
RzComboBox1.Items.Clear;
fdquery1.First;
while not fdquery1.Eof do
   begin
   RzComboBox1.Items.Add(fdquery1.FieldByName('descricao').AsString);
   FDQuery1.Next;
   end;

   FDQuery1.Close;
end;

procedure TFrm_Ocorrencia.FormCreate(Sender: TObject);
begin
alimentacombo;
end;

procedure TFrm_Ocorrencia.FormShow(Sender: TObject);
var
soft: TFDQuery;

begin
    soft:=TFDQuery.Create(self);
     soft.Connection:=dm.Conexao;
     soft.SQL.TEXT:='SELECT (select ''COLISEU GESTAO'' from controle_software where controle_software.coliseu_gestao = 1 and controle_software.id_cliente =:i)as coliseu, ' +
               '       (select ''COLISEU FISCAL'' from controle_software where controle_software.coliseu_fiscal = 1 and controle_software.id_cliente =:i)as fiscal, ' +
               '       (select ''COLISEU GRAOS'' from controle_software where controle_software.coliseu_graos = 1 and controle_software.id_cliente =:i)as graos, ' +
               '       (select ''COLISEU TRANSPORTE'' from controle_software where controle_software.coliseu_transporte = 1 and controle_software.id_cliente =:i)as transporte, ' +
               '       (select ''COLISEU WEB'' from controle_software where controle_software.coliseu_web = 1 and controle_software.id_cliente =:i)as WEB, ' +
               '       (select ''SILENUS PDV'' from controle_software where controle_software.SILENUS_PDV = 1 and controle_software.id_cliente =:i)as PDV,  ' +
               '       (select ''APP'' from controle_software where controle_software.app = 1 and controle_software.id_cliente =:i)as APP  ' +
               '         FROM controle_software ' +
               '         WHERE controle_software.id_cliente =:i';
    soft.Params[0].AsInteger:=dm.Query_ClientesID_CLIENTE.AsInteger;
    soft.Open();
    if soft.RecordCount<>0 then
       begin
          ComboBox1.Clear;
       if LENGTH(SOFT.FieldByName('APP').AsSTRING)<>0 then
          ComboBox1.Items.Add('APP');
       if LENGTH(SOFT.FieldByName('COLISEU').AsSTRING)<>0 then
          ComboBox1.Items.Add('COLISEU GESTAO');
       if LENGTH(SOFT.FieldByName('FISCAL').AsSTRING)<>0 then
          ComboBox1.Items.Add('COLISEU FISCAL');
       if LENGTH(SOFT.FieldByName('GRAOS').AsSTRING)<>0 then
          ComboBox1.Items.Add('COLISEU GRAOS');
       if LENGTH(SOFT.FieldByName('PDV').AsSTRING)<>0 then
          ComboBox1.Items.Add('SILENUS PDV');
       if LENGTH(SOFT.FieldByName('TRANSPORTE').AsSTRING)<>0 then
          ComboBox1.Items.Add('COLISEU TRANSPORTE');
       if LENGTH(SOFT.FieldByName('WEB').AsSTRING)<>0 then
          ComboBox1.Items.Add('COLISEU WEB');
       end;



    if cadastro = 2 then
        ComboBox1.ItemIndex:= ComboBox1.Items.IndexOf(DM.Query_OcorrenciasSOFTWARE.AsString);

      if Frm_Atendimento <> nil then
         begin
           if Frm_Atendimento.Query_AtendID_STATUS.AsInteger<>2 then
           Act_Salvar.Enabled:=FALSE
           ELSE
          Act_Salvar.Enabled:=TRUE;
         end;


end;

end.
