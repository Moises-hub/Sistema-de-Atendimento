unit UFrm_List_Agendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  RzEdit, RzCmboBx, Vcl.ExtCtrls, RzPanel, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzButton, Vcl.Menus,  DBPlannerMonthView, PlannerMonthView, PlannerCal,
  DBPlannerCal, Planner, PlanDraw, Vcl.ComCtrls, RzLabel, RzDBLbl,
  dxGDIPlusClasses, DBPlanner, RzSpnEdt, RzTabs, CloudBase, CloudBaseWin,
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar;

type
  TFrm_List_Agendamento = class(TForm)
    ActionList1: TActionList;
    Act_Agendamento: TAction;
    Act_Sair: TAction;
    Act_Filtrar: TAction;
    Act_Alterar: TAction;
    Act_Cancelar: TAction;
    Act_Atender: TAction;
    ImageList1: TImageList;
    ImageList2: TImageList;
    Query: TFDQuery;
    Act_EmVisita: TAction;
    PopupMenu1: TPopupMenu;
    ActAtender1: TMenuItem;
    ActCancelar1: TMenuItem;
    EmVisita1: TMenuItem;
    ActAtender2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DS_Calendario: TDataSource;
    TabSheet3: TTabSheet;
    DBDaySource1: TDBDaySource;
    QueryID: TIntegerField;
    QueryDATA_HORA: TSQLTimeStampField;
    QueryDATA_HORA_AGENDA: TSQLTimeStampField;
    QueryID_CLIENTE: TIntegerField;
    QueryDETALHE: TStringField;
    QueryAGENDADO: TIntegerField;
    QueryID_FUNCIONARIO: TIntegerField;
    QuerySTATUS: TIntegerField;
    QueryDATA_UP: TSQLTimeStampField;
    QueryCLIENTE: TStringField;
    QueryRESPONSAVEL: TStringField;
    QueryDATA_HORA_FINAL: TSQLTimeStampField;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzComboBox1: TRzComboBox;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzDateTimeEdit1: TRzDateTimeEdit;
    DS_Calendario_2: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    RzToolButton1: TRzToolButton;
    MonthCalendar1: TMonthCalendar;
    DBPlannerMonthView2: TDBPlannerMonthView;
    DBPlanner1: TDBPlanner;
    TabSheet7: TTabSheet;
    Panel2: TPanel;
    RzComboBox2: TRzComboBox;
    RzComboBox3: TRzComboBox;
    Edit1: TEdit;
    DBPlannerMonthView1: TDBPlannerMonthView;
    procedure Act_AgendamentoExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Act_FiltrarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure Act_AlterarExecute(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Act_CancelarExecute(Sender: TObject);
    procedure Act_AtenderExecute(Sender: TObject);
    procedure Act_EmVisitaExecute(Sender: TObject);
    procedure RzComboBox2Select(Sender: TObject);
    procedure DBPlannerMonthView1ItemDblClick(Sender: TObject;
      Item: TPlannerItem);
    procedure DBPlannerMonthView1DblClick(Sender: TObject; SelDate: TDateTime);
    procedure DBPlannerMonthView1AllDaySelect(Sender: TObject);
    procedure DBPlannerMonthView1DateChange(Sender: TObject; origDate,
      newDate: TDateTime);
    procedure DBPlannerMonthView1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure DBPlannerMonthView1ItemSelect(Sender: TObject;
      Item: TPlannerItem);
    procedure RzComboBox3Select(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
     var
     calendario,calendario_2 : TDataSet;
  public
    function createDataset(SQL: string; f : integer): TDataSet;
  end;

var
  Frm_List_Agendamento: TFrm_List_Agendamento;

implementation

{$R *.dfm}

uses UDM, UFrm_Agendamento, UFrm_LancAtendimento, UFrm_Principal,
  UFrm_Ocorrencia;

procedure TFrm_List_Agendamento.Act_AgendamentoExecute(Sender: TObject);
var
query_carrega : TFDQuery;
begin
  Frm_Agendamento:=TFrm_Agendamento.Create(self);
{           query_carrega:=TFDQuery.Create(self);
           query_carrega.Connection:=dm.Conexao;
           query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                   'where funcionarios.status=1';
           query_carrega.open;

           query_carrega.first;
           Frm_Agendamento.RzComboBox1.Values.Clear;
           Frm_Agendamento.RzComboBox1.Items.Clear;

           Frm_Agendamento.RzComboBox2.Values.Clear;
           Frm_Agendamento.RzComboBox2.Items.Clear;
           while not query_carrega.eof do
           begin
              Frm_Agendamento.RzComboBox1.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              Frm_Agendamento.RzComboBox1.Items.add(query_carrega.FieldByName('nome').Asstring);

              Frm_Agendamento.RzComboBox2.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              Frm_Agendamento.RzComboBox2.Items.add(query_carrega.FieldByName('nome').Asstring);

              query_carrega.next;
           end;
     }


   dm.Proc_Agendar.Params[8].AsInteger:=1;
   Frm_Agendamento.RzDateTimeEdit1.Date:=Date;
   Frm_Agendamento.RzDateTimeEdit2.Time:=time+60;
   Frm_Agendamento.ShowModal;
   Act_FiltrarExecute(SENDER);
   Frm_Agendamento.Free;


end;

procedure TFrm_List_Agendamento.Act_AlterarExecute(Sender: TObject);
var
query_carrega,query_filtra : TFDQuery;
begin
   {         if DM.Query_AgendamentoID_STATUS.AsInteger<>9 then
               BEGIN
                 Frm_Agendamento:=TFrm_Agendamento.Create(SELF);

                 QUERY_FILTRA:=TFDQuery.Create(self);
                 QUERY_FILTRA.Connection:=dm.Conexao;
                 QUERY_FILTRA.sql.Text:='select * from CONTROLE_AGENDAMENTO ' +
                                         'where CONTROLE_AGENDAMENTO.id =:i';

                 QUERY_FILTRA.params[0].AsInteger:= DM.Query_AgendamentoID.AsInteger;
                 QUERY_FILTRA.OPEN;

              Frm_Agendamento.RzDateTimeEdit1.Date:=StrToDate(FormatDateTime('dd"/"mm"/"yyyy',QUERY_FILTRA.FieldByName('DATA_HORA_AGENDA').AsDateTime));
              Frm_Agendamento.RzDateTimeEdit2.Time:=StrToTime(FormatDateTime('hh":"mm',QUERY_FILTRA.FieldByName('DATA_HORA_AGENDA').AsDateTime));

              Dm.Query_Clientes.Close;
              dm.Query_Clientes.SQL.Text:='select  * from controle_clientes WHERE id_cliente =:F';
              dm.Query_Clientes.Params[0].AsINTEGER:=QUERY_FILTRA.FieldByName('id_cliente').AsInteger;
              dm.Query_Clientes.OPEN;
              Frm_Agendamento.RzDBLookupComboBox1.KeyValue:=dm.Query_ClientesID_CLIENTE.VALUE;
              Frm_Agendamento.Edit2.Text:=QUERY_FILTRA.FieldByName('DETALHE').AsString;

               query_carrega:=TFDQuery.Create(self);
               query_carrega.Connection:=dm.Conexao;
               query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                       'where funcionarios.status=1';
               query_carrega.open;

               query_carrega.first;
               Frm_Agendamento.RzComboBox1.Values.Clear;
               Frm_Agendamento.RzComboBox1.Items.Clear;

               Frm_Agendamento.RzComboBox2.Values.Clear;
               Frm_Agendamento.RzComboBox2.Items.Clear;
               while not query_carrega.eof do
               begin
                  Frm_Agendamento.RzComboBox1.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
                  Frm_Agendamento.RzComboBox1.Items.add(query_carrega.FieldByName('nome').Asstring);

                  Frm_Agendamento.RzComboBox2.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
                  Frm_Agendamento.RzComboBox2.Items.add(query_carrega.FieldByName('nome').Asstring);

                  query_carrega.next;
               end;

                 Frm_Agendamento.RzComboBox1.VALUE:=IntToStr(query_filtra.FieldByName('AGENDADO').AsInteger);
                 Frm_Agendamento.RzComboBox2.VALUE:=IntToStr(query_filtra.FieldByName('ID_FUNCIONARIO').AsiNTEGER);
                 dm.Proc_Agendar.Params[8].AsInteger:=2;
                 dm.Proc_Agendar.Params[0].AsInteger:=DM.Query_AgendamentoID.AsInteger;
                 dm.Proc_Agendar.Params[5].AsInteger:=query_filtra.FieldByName('AGENDADO').AsInteger;
                 dm.Proc_Agendar.Params[3].AsInteger:= QUERY_FILTRA.FieldByName('id_cliente').AsInteger;
                 dm.Proc_Agendar.Params[7].AsInteger:= QUERY_FILTRA.FieldByName('STATUS').AsInteger;

      Frm_Agendamento.ShowModal;
               END;
Act_FiltrarExecute(SENDER);     }
end;

procedure TFrm_List_Agendamento.Act_AtenderExecute(Sender: TObject);
var
i,int :integer;
query_carrega: TFDQuery;
begin
                if (DM.Query_AgendamentoID_STATUS.AsInteger=1) OR (DM.Query_AgendamentoID_STATUS.AsInteger=3) then
               BEGIN
                      dm.query_clientebusca.close;
                      dm.query_clientebusca.params[0].AsInteger:=DM.Query_ClientesID_CLIENTE.AsInteger;
                      dm.Query_ClienteBusca.Open();


                                 dm.Proc_LancaAtende.Params[0].asinteger:=dm.Query_AgendamentoID_CLIENTE.AsInteger;
                                 dm.Proc_LancaAtende.Params[1].asinteger:=Frm_Principal.id_usu;
                                 dm.Proc_LancaAtende.Params[2].asinteger:=Frm_Principal.id_usu;
                                 dm.Proc_LancaAtende.Params[3].asstring:=dm.Query_AgendamentoDETALHE.AsString;
                                 dm.Proc_LancaAtende.Params[4].asinteger:=1;
                                 dm.Proc_LancaAtende.Params[5].asinteger:= 1;
                                 dm.Proc_LancaAtende.Params[6].asinteger :=1;

                                      dm.gen.close;
                                      dm.Gen.Open();
                                      dm.Proc_LancaAtende.Params[7].asinteger :=DM.GenGEN_ID.AsInteger;


                                          for i := 1 to 10 do
                                          begin
                                          int := 1 + Random(10000);
                                          end;

                                        dm.Proc_LancaAtende.Params[8].AsString :=IntToStr(DM.GenGEN_ID.AsInteger)+IntToStr(int);
                                        dm.Proc_LancaAtende.ExecProc;







                                          Frm_Ocorrencia:=TFrm_Ocorrencia.Create(self);



                                           query_carrega:=TFDQuery.Create(self);
                                           query_carrega.Connection:=dm.Conexao;
                                           query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                                                   'where funcionarios.status=1';
                                           query_carrega.open;

                                           query_carrega.first;


                                           Frm_Ocorrencia.RzComboBox2.Values.Clear;
                                           Frm_Ocorrencia.RzComboBox2.Items.Clear;
                                           while not query_carrega.eof do
                                           begin

                                              Frm_Ocorrencia.RzComboBox2.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
                                              Frm_Ocorrencia.RzComboBox2.Items.add(query_carrega.FieldByName('nome').Asstring);

                                              query_carrega.next;
                                           end;
                                        frm_ocorrencia.atend:=DM.GenGEN_ID.AsInteger;
                                        Frm_Ocorrencia.RzComboBox2.Value:=IntToStr(Frm_Principal.id_usu);
                                        Frm_Ocorrencia.cadastro := 1;
                                        Frm_Ocorrencia.ShowModal;



                                       query.Close;
                                       query.SQL.Text:='update controle_atendimento set status =3 where id_atendimento = '+IntToStr(DM.GenGEN_ID.AsInteger) ;
                                       query.ExecSQL;


                                       query.Close;
                                       query.SQL.Text:='update controle_agendamento set status =2 where id = '+IntToStr(DM.Query_AgendamentoID.AsInteger) ;
                                       query.ExecSQL;


                                   DM.Query_Agendamento.refresh;

               END;

end;

procedure TFrm_List_Agendamento.Act_CancelarExecute(Sender: TObject);
var
cancela : tfdquery;
begin

            if DM.Query_AgendamentoID_STATUS.AsInteger<>2 then
               BEGIN
               if  Application.MessageBox('deseja realmente cancelar este agendamento?','',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = mrYes then
                    begin

                     cancela:=TFDQuery.Create(self);
                     cancela.Connection:=DM.Conexao;
                     cancela.SQL.Text:='update CONTROLE_AGENDAMENTO set status =9 where id =:f';
                     cancela.Params[0].AsInteger:=DM.Query_AgendamentoID.AsInteger;
                     cancela.ExecSQL;
                     dm.Conexao.Commit;
                     cancela.Free;
                     DM.Query_Agendamento.Refresh;

                    end;
               END;
end;

procedure TFrm_List_Agendamento.Act_EmVisitaExecute(Sender: TObject);
var
cancela : tfdquery;
begin
   if DM.Query_AgendamentoID_STATUS.AsInteger=1 then
               BEGIN

                   cancela:=TFDQuery.Create(self);
                   cancela.Connection:=DM.Conexao;
                   cancela.SQL.Text:='update CONTROLE_AGENDAMENTO set status =3 where id =:f';
                   cancela.Params[0].AsInteger:=DM.Query_AgendamentoID.AsInteger;
                   cancela.ExecSQL;
                   dm.Query_Agendamento.Refresh;
               END;
end;

procedure TFrm_List_Agendamento.Act_FiltrarExecute(Sender: TObject);
var
sql : string;
begin
sql :='select * from CONTROLE_LISAGENDAMENTO ' +
      'where cast(CONTROLE_LISAGENDAMENTO.agendamento as date)>=:ini ' +
      'and cast(CONTROLE_LISAGENDAMENTO.AGENDAMENTO as date)<=:fim '+RzComboBox1.Value+' ORDER BY CONTROLE_LISAGENDAMENTO.ID_STATUS, CONTROLE_LISAGENDAMENTO.AGENDAMENTO ';


 DM.Query_Agendamento.Close;
 DM.Query_Agendamento.SQL.TEXT:=SQL;
 DM.Query_Agendamento.Params[0].AsDate:=RzDateTimeEdit1.Date;
 DM.Query_Agendamento.Params[1].AsDate:=RzDateTimeEdit2.Date;
 DM.Query_Agendamento.OPEN;



end;

procedure TFrm_List_Agendamento.Act_SairExecute(Sender: TObject);
begin
close;
end;

function TFrm_List_Agendamento.createDataset(SQL: string; f: integer): TDataSet;
var
quer: TFDQuery;

 begin

 quer := TFDQuery.Create(self);
 quer.Connection := dm.Conexao;

     try
     quer.SQL.Text := SQL;
     if f = 1 then

     quer.Open
     else
     if f = 2 then

     quer.ExecSQL;


     Result := quer;
     finally


     end;

end;

procedure TFrm_List_Agendamento.DBGrid1CellClick(Column: TColumn);
begin
   if DBGrid1.SelectedField.FieldName = 'VISU' then
      Act_Alterar.Execute;
  if DBGrid1.SelectedField.FieldName = 'CANC' then
      Act_Cancelar.Execute;
  if DBGrid1.SelectedField.FieldName = 'ATE' then
      Act_Atender.Execute;



end;

procedure TFrm_List_Agendamento.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

        if DM.Query_AgendamentoID_STATUS.AsInteger = 9 then
        begin
          DBGrid1.Canvas.Brush.Color := clMenu;
          DBGrid1.Canvas.font.Color := clScrollBar;
          DBGrid1.Canvas.FillRect(Rect);
        end;
        DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);






if datacol =6 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);
   end;
    if datacol =7 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 1);
   end;
   if datacol =8 then
      begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 2);
   end;
end;

procedure TFrm_List_Agendamento.DBPlannerMonthView1AllDaySelect(
  Sender: TObject);
begin
 DBDaySource1.Day:=DBPlannerMonthView1.Date;
end;

procedure TFrm_List_Agendamento.DBPlannerMonthView1DateChange(Sender: TObject;
  origDate, newDate: TDateTime);
begin
 DBDaySource1.Day:=DBPlannerMonthView1.Date;
end;

procedure TFrm_List_Agendamento.DBPlannerMonthView1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
 DBDaySource1.Day:=DBPlannerMonthView1.Date;
end;

procedure TFrm_List_Agendamento.DBPlannerMonthView1DblClick(Sender: TObject;
  SelDate: TDateTime);
begin
       {  RzPanel3.Visible:=TRUE;
         Label2.Caption:=IntToStr(DBPlannerMonthView1.Day);
         Label3.Caption:=COPY(FormatDateTime('DDDD',DBPlannerMonthView1.Date),1,3); }



end;

procedure TFrm_List_Agendamento.DBPlannerMonthView1ItemDblClick(Sender: TObject;
  Item: TPlannerItem);

begin


        // calendario.FieldByName('DATA_HORA_AGENDA').AsDateTime);
//         Label2.Caption:=FormatDateTime('DD',calendario.FieldByName('DATA_HORA_AGENDA').AsDateTime);




end;

procedure TFrm_List_Agendamento.DBPlannerMonthView1ItemSelect(Sender: TObject;
  Item: TPlannerItem);
begin
     //  DBPlannerMonthView1.Date:= calendario.FieldByName('DATA_HORA_AGENDA').AsDateTime;
       DBDaySource1.Day:=DBPlannerMonthView1.Date;
end;

procedure TFrm_List_Agendamento.Edit1Exit(Sender: TObject);
begin
 DBPlannerMonthView1.Month:= StrToInt(RzComboBox3.Value);
 DBPlannerMonthView1.Year:= StrToInt(Edit1.Text);
end;

procedure TFrm_List_Agendamento.FormShow(Sender: TObject);
var
query_carrega : tfdquery;
begin

            RzComboBox3.TEXT:=FormatDateTime('MMM',DATE);
            Edit1.TEXT:=FormatDateTime('YYYY',DATE);
            DBPlannerMonthView1.Month:= StrToInt(RzComboBox3.Value);
            DBPlannerMonthView1.Year:= StrToInt(Edit1.Text);


           query_carrega:=TFDQuery.Create(self);
           query_carrega.Connection:=dm.Conexao;
           query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                   'where funcionarios.status=1 ORDER BY funcionarios.nome';

           query_carrega.open;

           query_carrega.first;
           RzComboBox2.Values.Clear;
           RzComboBox2.Items.Clear;


           while not query_carrega.eof do
           begin
              RzComboBox2.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              RzComboBox2.Items.add(query_carrega.FieldByName('nome').Asstring);
              query_carrega.next;
           end;

           RzComboBox2.Value:=IntToStr(Frm_Principal.id_usu);
           RzComboBox2Select(sender);

           query_carrega.Free;

            RzDateTimeEdit1.Date:=Date;
            RzDateTimeEdit2.Date:=Date+6;
            RzComboBox1.ItemIndex:=4;






Act_FiltrarExecute(SENDER);


      calendario_2:=createDataset('select controle_agendamento.id, '+
                                  '       controle_agendamento.data_hora_agenda,' +
                                  '       controle_agendamento.data_hora_final, ' +
                                  '       controle_agendamento.responsavel, ' +
                                  '       controle_agendamento.obs '+

                                  '       from controle_agendamento ',1);
      DS_Calendario_2.DataSet:=calendario_2;





end;

procedure TFrm_List_Agendamento.RzComboBox2Select(Sender: TObject);

begin

 calendario:=createDataset('select * from CONTROLE_AGENDAMENTO where id_funcionario = '+RzComboBox2.Value,1);
 DS_Calendario.DataSet:=calendario;


end;

procedure TFrm_List_Agendamento.RzComboBox3Select(Sender: TObject);
begin
 DBPlannerMonthView1.Month:= StrToInt(RzComboBox3.Value);
 DBPlannerMonthView1.Year:= StrToInt(Edit1.Text);
end;

end.



