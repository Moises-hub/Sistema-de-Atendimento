unit UFrm_Atendimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, RzPanel, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzCmboBx, RzButton, System.ImageList, Vcl.ImgList, RzStatus, RzDBStat,
  RzDBGrid, RzLabel, RzDBLbl;

type
  TFrm_Atendimento = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    ActionList1: TActionList;
    Act_Ocorrencia: TAction;
    Act_Atualizacao: TAction;
    RzGroupBox4: TRzGroupBox;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    RzGroupBox3: TRzGroupBox;
    DBText1: TDBText;
    DBText10: TDBText;
    DBText2: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RzGroupBox1: TRzGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Act_Atender: TAction;
    Act_Pendencia: TAction;
    Act_Finalizar: TAction;
    Query: TFDQuery;
    RzGroupBox5: TRzGroupBox;
    Panel7: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit2: TEdit;
    RzComboBox1: TRzComboBox;
    RzComboBox4: TRzComboBox;
    RzComboBox2: TRzComboBox;
    Act_Cancelar: TAction;
    Panel4: TPanel;
    Act_Close: TAction;
    RzGroupBox6: TRzGroupBox;
    DBGrid1: TDBGrid;
    RzGroupBox7: TRzGroupBox;
    DBGrid2: TDBGrid;
    RzStatusBar1: TRzStatusBar;
    RzDBStateStatus1: TRzDBStateStatus;
    Query_atend: TFDQuery;
    Query_atendICO_CANAL: TStringField;
    Query_atendCANAL: TIntegerField;
    Query_atendDATA_HORA: TSQLTimeStampField;
    Query_atendCLIENTE: TStringField;
    Query_atendID_CLIENTE: TIntegerField;
    Query_atendID_ATENDIMENTO: TIntegerField;
    Query_atendATENDENTE: TStringField;
    Query_atendID_ATENDENTE: TIntegerField;
    Query_atendDESCRICAO: TStringField;
    Query_atendSTATUS: TStringField;
    Query_atendID_STATUS: TIntegerField;
    Query_atendRESPONSAVEL: TStringField;
    Query_atendID_RESPONSAVEL: TIntegerField;
    Query_atendALT: TStringField;
    Query_atendDEL: TStringField;
    Query_atendCAN: TStringField;
    Query_atendATE: TStringField;
    RzGroupBox2: TRzGroupBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox18: TCheckBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    Label3: TLabel;
    DBText3: TDBText;
    RzComboBox3: TRzComboBox;
    DBText4: TDBText;
    Label4: TLabel;
    RzBitBtn8: TRzBitBtn;
    Act_Cliente: TAction;
    ImageList1: TImageList;
    ImageList2: TImageList;
    Panel6: TPanel;
    RzDBLabel1: TRzDBLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Act_OcorrenciaExecute(Sender: TObject);
    procedure Act_AtenderExecute(Sender: TObject);
    procedure Act_PendenciaExecute(Sender: TObject);
    procedure Act_FinalizarExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
    procedure Act_CloseExecute(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Act_AtualizacaoExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Act_ClienteExecute(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure RzComboBox2Select(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public

  end;

var
  Frm_Atendimento: TFrm_Atendimento;

implementation

{$R *.dfm}

uses UDM, UFrm_Ocorrencia, UFrm_MotivoCancela, UFrm_CadClientes,
  UFrm_Atualizacao, UFrm_LancAtendimento, UFrm_Principal, UEnviaEmail, UFrm_Obs;

procedure TFrm_Atendimento.Act_AtenderExecute(Sender: TObject);
begin
   query.Close;
   query.SQL.Text:='update controle_atendimento set status =2 where id_atendimento = '+IntToStr(Query_atendID_ATENDIMENTO.AsInteger) ;
   query.ExecSQL;

   Query_Atend.Refresh;



     if  Query_AtendID_STATUS.AsInteger=2 then
      begin
        Act_Ocorrencia.Enabled:=true;
        Act_Atualizacao.Enabled:=true;
        Act_Atender.Enabled:=FALSE;

        RzComboBox4.ItemIndex:=2;
      end;

end;

procedure TFrm_Atendimento.Act_AtualizacaoExecute(Sender: TObject);
begin
Frm_Atualizacao:=TFrm_Atualizacao.Create(self);
dm.Query_ListSoftware.First;
Frm_Atualizacao.RzComboBox1.Items.clear;
while not dm.Query_ListSoftware.eof do
     begin
        Frm_Atualizacao.RzComboBox1.Items.Add(dm.Query_ListSoftwareSOFTWARE.AsString);
        dm.Query_ListSoftware.next;
     end;
  Frm_Atualizacao.Edit1.Text:=dm.Query_ClientesNOME.AsString;
 // dm.Proc_Atualiza.Params[0].AsInteger:=0;
  dm.Proc_Atualiza.Params[6].AsInteger:=1;

   Frm_Atualizacao.RzComboBox3.Items:=RzComboBox2.Items;
Frm_Atualizacao.RzComboBox3.ValueS:=RzComboBox2.VALUES;
Frm_Atualizacao.RzComboBox3.Value:=RzComboBox2.VALUE;

Frm_Atualizacao.ShowModal;
DM.Query_ListSoftware.Refresh;
dm.Query_Ocorrencias.Refresh;

end;

procedure TFrm_Atendimento.Act_CancelarExecute(Sender: TObject);
begin
          Frm_MotivoCancela:=TFrm_MotivoCancela.Create(self);
          Frm_MotivoCancela.ShowModal;

                    DM.QUERY_log.Params[0].AsInteger:=Frm_Principal.id_usu;
                    DM.QUERY_log.Params[1].AsInteger:=2;
                    DM.QUERY_log.Params[4].AsSTRING:='CANCELAMENTO DO ATENDIMENTO CLIENTE : '+DBText1.Caption;
                    DM.QUERY_log.Params[2].ASSTRING:=frm_principal.Getcomputer;
                    DM.QUERY_log.Params[3].AsSTRING:='CONTROLE_ATENDIMENTOS';
                    DM.QUERY_log.ExecSQL();





          close;
end;

procedure TFrm_Atendimento.Act_ClienteExecute(Sender: TObject);
var
query : tfdquery;
begin
        query := TFDQuery.Create(self);
        query.Connection:=dm.Conexao;


           query.close;
           query.sql.text:='SELECT COUNT(*) FROM acessos where id_modulo =10001'+' and id_grupo ='+IntToStr(Frm_Principal.grupo);
           query.open;

           if query.FieldByName('count').AsInteger <>0 then
              begin
                 Frm_CadClientes:=TFrm_CadClientes.Create(self);
                 Frm_CadClientes.acao:=2;
                 DM.Conexao.Commit;
                 DM.Query_Clientes.Refresh;
                 Frm_CadClientes.ShowModal;
              end;




end;

procedure TFrm_Atendimento.Act_CloseExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_Atendimento.Act_FinalizarExecute(Sender: TObject);
var
thread : MinhaThread;
begin
if DM.Query_Ocorrencias.RecordCount = 0 then
   ShowMessage('Cadastre pelo menos uma ocorrência Antes de Fechar o Atendimento!!')
   else
   begin
   query.Close;
   query.SQL.Text:='update controle_atendimento set status =3 where id_atendimento = '+IntToStr(Query_AtendID_ATENDIMENTO.AsInteger) ;
   query.ExecSQL;


                                        Frm_Principal.cli:=DBText1.caption;
                                        Frm_Principal.protocolo:=dm.Query_AtendimentoPROTOCOLO.AsString;
                                        Frm_Principal.status:='FINALIZADO';
                                        Frm_Principal.respon:=dm.Query_AtendimentoRESPONSAVEL.AsString;
                                     //   Frm_Principal.canal:=dm.Query_AtendimentoPROTOCOLO.AsString; RzComboBox3.Text;
                                        Frm_Principal.data_hora:=dm.Query_AtendimentoDATA_HORA.AsString;


                                        DM.Query_Ocorrencias.First;
                                        while NOT dm.Query_Ocorrencias.Eof do
                                        BEGIN
                                        Frm_Principal.ATENDIMENTO:=LowerCase(Frm_Principal.ATENDIMENTO+#13+'<p><strong>TIPO: </strong>'+DM.Query_OcorrenciasTIPO.ASSTRING+'  <strong>SISTEMA:</strong>'+DM.Query_OcorrenciasSOFTWARE.AsString+'  <strong>DETALHE:</strong>'+dm.Query_OcorrenciasDETALHE.AsString+';</p>');

                                         dm.Query_Ocorrencias.NEXT;
                                        END;




                                        Frm_Principal.gerahtml;
                                        if LENGTH(Frm_Principal.emailcli)<>0 then
                                           BEGIN
                                              Frm_Principal.emailcli:=DBText10.Caption;
                                              thread := MinhaThread.Create(false);
                                              thread.Resume;
                                           END;







   close;
   end;
end;

procedure TFrm_Atendimento.Act_OcorrenciaExecute(Sender: TObject);
begin
Frm_Ocorrencia:=TFrm_Ocorrencia.Create(self);
Frm_Ocorrencia.RzComboBox2.Items:=RzComboBox2.Items;
Frm_Ocorrencia.RzComboBox2.ValueS:=RzComboBox2.VALUES;
Frm_Ocorrencia.RzComboBox2.Value:=RzComboBox2.VALUE;
Frm_Ocorrencia.cadastro := 1;
frm_ocorrencia.atend:=Frm_Atendimento.Query_atendID_ATENDIMENTO.AsInteger;
Frm_Ocorrencia.ShowModal;
dm.Query_Ocorrencias.Refresh;
end;

procedure TFrm_Atendimento.Act_PendenciaExecute(Sender: TObject);
begin
   query.Close;
   query.SQL.Text:='update controle_atendimento set status =4 where id_atendimento = '+IntToStr(Query_AtendID_ATENDIMENTO.AsInteger) ;
   query.ExecSQL;
   RzComboBox4.ItemIndex:=4;
   close;
end;

procedure TFrm_Atendimento.DBGrid1CellClick(Column: TColumn);
begin
if (DM.Query_Ocorrencias.RecordCount<>0) then
  BEGIN
  if DBGrid1.SelectedField.FieldName = 'BTN' then
     BEGIN
     if DM.Query_OcorrenciasTIPO.AsString='OCORRENCIA' then
       BEGIN
        Frm_Ocorrencia:=TFrm_Ocorrencia.Create(self);
        Frm_Ocorrencia.RzComboBox2.Items:=RzComboBox2.Items;
        Frm_Ocorrencia.RzComboBox2.ValueS:=RzComboBox2.VALUES;
        Frm_Ocorrencia.RzComboBox2.Value:=RzComboBox2.VALUE;
        Frm_Ocorrencia.RzMemo1.Lines.Text:=dm.Query_OcorrenciasDETALHE.AsString;

        Frm_Ocorrencia.RzComboBox1.Clear;
        Frm_Ocorrencia.RzComboBox1.Text:=DM.Query_OcorrenciasDESCRICAO.AsString;
        Frm_Ocorrencia.RzComboBox2.Value:= IntToStr(DM.Query_OcorrenciasID_RESPONSAVEL.AsInteger);
        Frm_Ocorrencia.cadastro := 2;
        dm.Proc_LancaOcorrencia.params[0].AsInteger :=DM.Query_OcorrenciasID.AsInteger;
        Frm_Ocorrencia.ShowModal;
        dm.Query_Ocorrencias.Refresh;
       END
       ELSE
      if DM.Query_OcorrenciasTIPO.AsString='ATUALIZACAO' then
       BEGIN
            Frm_Atualizacao:=TFrm_Atualizacao.Create(self);
            dm.Query_ListSoftware.First;
            Frm_Atualizacao.RzComboBox1.Items.clear;
            while not dm.Query_ListSoftware.eof do
                 begin
                    Frm_Atualizacao.RzComboBox1.Items.Add(dm.Query_ListSoftwareSOFTWARE.AsString);
                    dm.Query_ListSoftware.next;
                 end;
              Frm_Atualizacao.Edit1.Text:=dm.Query_ClientesNOME.AsString;
              Frm_Atualizacao.RzComboBox1.ItemIndex:=Frm_Atualizacao.RzComboBox1.IndexOf(DM.Query_OcorrenciasSOFTWARE.Text);
              Frm_Atualizacao.VERSAO;
              Frm_Atualizacao.RzComboBox2.ItemIndex:=Frm_Atualizacao.RzComboBox2.IndexOf(DM.Query_OcorrenciasVERSAO.AsString);
             // dm.Proc_Atualiza.Params[0].AsInteger:=0;
              dm.Proc_Atualiza.Params[6].AsInteger:=2;
              dm.Proc_Atualiza.params[0].AsInteger :=DM.Query_OcorrenciasID.AsInteger;

            Frm_Atualizacao.RzComboBox3.Items:=RzComboBox2.Items;
            Frm_Atualizacao.RzComboBox3.ValueS:=RzComboBox2.VALUES;
            Frm_Atualizacao.RzComboBox3.Value:=RzComboBox2.VALUE;
            Frm_Atualizacao.Edit1.Text:=DBText1.Caption;
            Frm_Atualizacao.RzComboBox3.Text:=DM.Query_OcorrenciasRESPONSAVEL.AsString;

            Frm_Atualizacao.ShowModal;
            DM.Query_ListSoftware.Refresh;
            dm.Query_Ocorrencias.Refresh;
       END;

     END;
  END;
end;

procedure TFrm_Atendimento.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if datacol =6 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList1.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 7);
   end;
end;

procedure TFrm_Atendimento.DBGrid2DblClick(Sender: TObject);
begin
Frm_Observacao:=TFrm_Observacao.Create(self);
Frm_Observacao.ShowModal;
Frm_Observacao.Free;
end;

procedure TFrm_Atendimento.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
  R : TRect;
begin
  R := Rect;
  Dec(R.Bottom,0);
    If Column.Field =DM.Query_HistoricoDETALHE Then
      Begin
        DBGrid2.Canvas.FillRect(Rect);
        DrawText(DBGrid2.Canvas.Handle,PChar(DM.Query_HistoricoDETALHE.AsString),
        Length(DM.Query_HistoricoDETALHE.AsString),R,DT_WORDBREAK);
    End;



    if Odd(dm.Query_Historico.RecNo) and (dm.Query_Historico.State <> dsInsert) then
  begin
      DBGrid2.Canvas.Brush.Color := clActiveCaption;
      DBGrid2.Canvas.FillRect(Rect);
      DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
  end;
end;

procedure TFrm_Atendimento.FormShow(Sender: TObject);
var
query_carrega : TFDQuery;
begin


  if DM.Query_ClientesNFe.ASINTEGER = 1 then
             CheckBox1.Checked := TRUE
             ELSE
             CheckBox1.Checked := FALSE;

          if DM.Query_ClientesNFCE.ASINTEGER = 1 then
             CheckBox2.Checked := TRUE
             ELSE
             CheckBox2.Checked := FALSE;


          if DM.Query_ClientesNFSE.ASINTEGER = 1 then
             CheckBox3.Checked := TRUE
             ELSE
             CheckBox3.Checked := FALSE;

          if DM.Query_ClientesMDFE.ASINTEGER = 1 then
             CheckBox4.Checked := TRUE
             ELSE
             CheckBox4.Checked := FALSE;

          if DM.Query_ClientesCTE.ASINTEGER = 1 then
             CheckBox5.Checked := TRUE
             ELSE
             CheckBox5.Checked := FALSE;

          if DM.Query_ClientesAPP_SALES.ASINTEGER = 1 then
             CheckBox6.Checked := TRUE
             ELSE
             CheckBox6.Checked := FALSE;

          if DM.Query_ClientesAPP_DASH.ASINTEGER = 1 then
             CheckBox7.Checked := TRUE
             ELSE
             CheckBox7.Checked := FALSE;



         if DM.Query_ClientesGRADE.ASINTEGER = 1 then
             CheckBox15.Checked := TRUE
             ELSE
             CheckBox15.Checked := FALSE;

          if DM.Query_ClientesESTOQUE_POR_DEPTO.ASINTEGER = 1 then
             CheckBox16.Checked := TRUE
             ELSE
             CheckBox16.Checked := FALSE;


          if DM.Query_ClientesCONTROLE_DE_ENTREGA.ASINTEGER = 1 then
             CheckBox17.Checked := TRUE
             ELSE
             CheckBox17.Checked := FALSE;


          if DM.Query_ClientesBOLETO_BANCARIO.ASINTEGER = 1 then
             CheckBox20.Checked := TRUE
             ELSE
             CheckBox20.Checked := FALSE;



          if DM.Query_ClientesPROPRIEDADE.ASINTEGER = 1 then
             CheckBox29.Checked := TRUE
             ELSE
             CheckBox29.Checked := FALSE;



          if DM.Query_ClientesCONDICIONAL.ASINTEGER = 1 then
             CheckBox30.Checked := TRUE
             ELSE
             CheckBox30.Checked := FALSE;



          if DM.Query_ClientesTRABALHA_OS.ASINTEGER = 1 then
             CheckBox31.Checked := TRUE
             ELSE
             CheckBox31.Checked := FALSE;


          if DM.Query_ClientesLOTE.ASINTEGER = 1 then
             CheckBox18.Checked := TRUE
             ELSE
             CheckBox18.Checked := FALSE;


          RadioGroup1.ItemIndex:=dm.Query_ClientesENTREGA_BAIXA_ESTOQUE.AsInteger;
          RadioGroup2.ItemIndex:=dm.Query_ClientesFRENTE_CAIXA.AsInteger;
          RadioGroup3.ItemIndex:=dm.Query_ClientesPREST_SERVI.AsInteger;


   dm.Query_Ocorrencias.Close;
   dm.Query_Ocorrencias.Params[0].AsInteger:=Query_AtendID_ATENDIMENTO.AsInteger;
   dm.Query_Ocorrencias.Open();



   if Query_Atendid_status.AsInteger<>2 then
      begin
        Act_Ocorrencia.Enabled:=false;
        Act_Atualizacao.Enabled:=false;
        Act_Atender.Enabled:=TRUE;
      end
      ELSE
       Act_Atender.Enabled:=false;

   if Query_Atendid_status.AsInteger=3 then
      begin
        Act_Ocorrencia.Enabled:=false;
        Act_Atualizacao.Enabled:=false;
        Act_Pendencia.Enabled:=false;
        Act_Cancelar.Enabled:=false;
        Act_Atender.Enabled:=false;
        Act_Finalizar.Enabled:=false;
        RzComboBox2.ReadOnly:=true;

      end;


        query_carrega:=TFDQuery.Create(self);
           query_carrega.Connection:=dm.Conexao;
           query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                   'where funcionarios.status=1';
           query_carrega.open;

           query_carrega.first;
           RzComboBox1.Values.Clear;
           RzComboBox1.Items.Clear;

           RzComboBox2.Values.Clear;
           RzComboBox2.Items.Clear;
           while not query_carrega.eof do
           begin
              RzComboBox1.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              RzComboBox1.Items.add(query_carrega.FieldByName('nome').Asstring);

              RzComboBox2.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              RzComboBox2.Items.add(query_carrega.FieldByName('nome').Asstring);

              query_carrega.next;
           end;

                            if Frm_LancAtendimento=nil then
                            begin
                              RzComboBox1.Value:=IntToStr(Query_AtendID_ATENDENTE.AsInteger);
                              RzComboBox2.VALUE:=IntToStr(Query_AtendID_RESPONSAVEL.AsInteger);
                            end
                            else
                            begin
                              RzComboBox1.ItemIndex:=RzComboBox1.Items.IndexOf(Frm_LancAtendimento.RzComboBox1.Text);
                              RzComboBox2.ItemIndex:=RzComboBox2.Items.IndexOf(Frm_LancAtendimento.RzComboBox2.Text);
                            end;








end;

procedure TFrm_Atendimento.Label11Click(Sender: TObject);
begin
                 Frm_CadClientes:=TFrm_CadClientes.Create(self);
                 Frm_CadClientes.acao:=2;
                 DM.Conexao.Commit;
                 DM.Query_Clientes.Refresh;
                 Frm_CadClientes.ShowModal;
                 DM.Conexao.Commit;
                 DM.Query_Clientes.Refresh;
                 dm.Query_ListSoftware.Refresh;


          if DM.Query_ClientesNFe.ASINTEGER = 1 then
             CheckBox1.Checked := TRUE
             ELSE
             CheckBox1.Checked := FALSE;

          if DM.Query_ClientesNFCE.ASINTEGER = 1 then
             CheckBox2.Checked := TRUE
             ELSE
             CheckBox2.Checked := FALSE;


          if DM.Query_ClientesNFSE.ASINTEGER = 1 then
             CheckBox3.Checked := TRUE
             ELSE
             CheckBox3.Checked := FALSE;

          if DM.Query_ClientesMDFE.ASINTEGER = 1 then
             CheckBox4.Checked := TRUE
             ELSE
             CheckBox4.Checked := FALSE;

          if DM.Query_ClientesCTE.ASINTEGER = 1 then
             CheckBox5.Checked := TRUE
             ELSE
             CheckBox5.Checked := FALSE;

          if DM.Query_ClientesAPP_SALES.ASINTEGER = 1 then
             CheckBox6.Checked := TRUE
             ELSE
             CheckBox6.Checked := FALSE;

          if DM.Query_ClientesAPP_DASH.ASINTEGER = 1 then
             CheckBox7.Checked := TRUE
             ELSE
             CheckBox7.Checked := FALSE;

end;

procedure TFrm_Atendimento.RzComboBox2Select(Sender: TObject);
begin
   query.Close;
   query.SQL.Text:='update controle_atendimento set ID_RESPONSAVEL ='+RzComboBox2.Value+' where id_atendimento = '+IntToStr(Query_atendID_ATENDIMENTO.AsInteger) ;
   query.ExecSQL;

   Query_Atend.Refresh;

end;

end.
