unit UFrm_Agendamento;

interface

uses  DateUtils, inifiles,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.Buttons, RzButton, RzCmboBx, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, RzDBCmbo, DosMove, Vcl.ComCtrls, dxGDIPlusClasses, CloudBase,
  CloudBaseWin, CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar,
  CloudGCalendar, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

type
  TFrm_Agendamento = class(TForm)
    ActionList1: TActionList;
    Act_Novo: TAction;
    Act_Salvar: TAction;
    Act_Sair: TAction;
    Act_BuscaCli: TAction;
    Panel4: TPanel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    DosMove1: TDosMove;
    Panel1: TPanel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzDateTimeEdit3: TRzDateTimeEdit;
    Act_Usuario: TAction;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    Panel3: TPanel;
    RzComboBox1: TRzComboBox;
    RzBitBtn3: TRzBitBtn;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label2: TLabel;
    Image4: TImage;
    Panel5: TPanel;
    Label1: TLabel;
    ImageList1: TImageList;
    Image5: TImage;
    Query_Clientes: TFDQuery;
    RzBitBtn4: TRzBitBtn;
    DS_Query_Clientes: TDataSource;
    Query_ClientesID_CLIENTE: TIntegerField;
    Query_ClientesNOME: TStringField;
    Edit2: TEdit;
    Image6: TImage;
    Edit3: TEdit;
    Memo1: TMemo;
    IdHTTP1: TIdHTTP;
    DBText1: TDBText;
    procedure Act_BuscaCliExecute(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_NovoExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_UsuarioExecute(Sender: TObject);
    function  Procurar(pValor : String;pColuna : Integer = 0) : Integer;
    procedure RzDateTimeEdit1Exit(Sender: TObject);
    PROCEDURE Agendar;
    procedure SetCalendarItem(Item: TGCalendarItem);
  private
    { Private declarations }
  public
    var
    Ag : Integer;
  end;

var
  Frm_Agendamento: TFrm_Agendamento;

implementation

{$R *.dfm}

uses UDM, UClientes, UFrm_Agenda, UFrm_Principal;

procedure TFrm_Agendamento.Act_BuscaCliExecute(Sender: TObject);
begin
Frm_Clientes:=TFrm_Clientes.Create(SELF);
Frm_Clientes.ShowModal;
Edit2.Text:=DM.Query_ClientesNOME.asstring;
Edit3.Text:=DM.Query_ClientesENDERECO_1.AsString+','+dm.Query_ClientesNUMERO.AsString+' - '+
dm.Query_ClientesCOMPLEMENTO.AsString+' - '+dm.Query_ClientesBAIRRO.AsString+', '+
dm.Query_ClientesCIDADE.AsString+', '+dm.Query_ClientesCEP.AsString+' Brasil';
Frm_Clientes.Free;

end;

procedure TFrm_Agendamento.Act_NovoExecute(Sender: TObject);
begin
   dm.Proc_Agendar.Params[8].AsInteger:=1;



end;

procedure TFrm_Agendamento.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_Agendamento.Act_SalvarExecute(Sender: TObject);
var

SALVAR : TFDQUERY;
I :Integer;
json,resposta : TStringList;
user,cli,QUERY_DELETE : TFDQuery;
url,accesstoken : string;
ini,INI2 : tinifile;
JsonToSend: TStringStream;
begin




    user:=TFDQUery.Create(nil);
    user.Connection:=DM.Conexao;
    user.SQL.Text:='select id_funcionario,nome,email from funcionarios where id_funcionario =:a';
    user.Params[0].AsInteger:=Frm_Principal.id_usu;
    user.Open();



    if length(StringGrid1.Cells[0, i])>0 then

       for I := 0 to StringGrid1.RowCOUNT-1 do
            begin
                user.close;
                user.Params[0].AsInteger:=StrToInt(StringGrid1.Cells[0, i]);
                user.Open();
            end;









             try

                dm.GEN.CLOSE;
                dm.Gen.SQL.Text:='select gen_id(CONTROLE_AGENDAMENTO_ID,1)from rdb$database';
                dm.GEN.Open();


                SALVAR:=TFDQUERY.Create(NIL);
                SALVAR.Connection:=DM.Conexao;
                SALVAR.CLOSE;
                SALVAR.SQL.Text:='INSERT INTO controle_agendamento(ID,DATA_HORA,DATA_HORA_AGENDA,cliente,obs,AGENDADO,DATA_HORA_FINAL,DETALHE,RESPONSAVEL,ID_FUNCIONARIO)' +
                                 '         VALUES(:A, ' +
                                 '         current_timestamp, ' +
                                 '         :B, ' +
                                 '         :C, ' +
                                 '         :D, ' +
                                 '         :E, ' +
                                 '         :F, '+
                                 '         :G, '+
                                 '         :H, '+
                                 '         :I)';
                SALVAR.Params[0].AsInteger:=DM.GenGEN_ID.AsInteger;
                SALVAR.Params[1].AsDateTime:=StrToDateTime(FormatDateTime('dd"/"mm"/"yyyy',RzDateTimeEdit1.Date)+' '+FormatDateTime('hh":"mm',RzDateTimeEdit2.Time));
                SALVAR.Params[2].Asstring:=Edit2.Text;
                SALVAR.Params[3].ASSTRING:=Memo1.Lines.Text;
                SALVAR.Params[4].AsInteger:=Frm_Principal.id_usu;
                SALVAR.Params[5].AsDateTime:=StrToDateTime(FormatDateTime('dd"/"mm"/"yyyy',RzDateTimeEdit1.Date)+' '+FormatDateTime('hh":"mm',RzDateTimeEdit3.Time));
                SALVAR.Params[6].ASSTRING:=COPY(Edit3.Text,1,100);
                SALVAR.Params[7].ASSTRING:=user.FieldByName('nome').AsString;
                SALVAR.Params[8].ASINTEGER:=user.FieldByName('ID_FUNCIONARIO').AsINTEGER;
                SALVAR.ExecSQL;





                    salvar.sql.Text:= 'insert into CONTROLE_AGENDA_EMAIL(ID_AGENDA,ID_FUNCIONARIO) '+
                                              'values(:A,:B)';

                   salvar.Params[0].AsINTEGER:=DM.GenGEN_ID.AsInteger;
                   salvar.Params[1].AsInteger:=Frm_Principal.id_usu;
                   salvar.ExecSQL;

                 try
                   for I := 0 to StringGrid1.RowCOUNT-1 do
                        begin

                           salvar.Params[0].AsINTEGER:=DM.GenGEN_ID.AsInteger;
                           salvar.Params[1].Asinteger:=StrToInt(StringGrid1.Cells[0, i]);
                           salvar.ExecSQL;

                        end;
                  except

                 end;

                        if ag = 1 then
                          BEGIN
                            FRM_PRINCIPAL.refresh_token;
                            ini2 := TIniFile.Create(ExtractFilePath(ParamStr(0))+'google.ini');
                            accesstoken:=ini2.ReadString('tokens','ACCESS_TOKEN','');
                            url:='https://www.googleapis.com/calendar/v3/calendars/silenus@silenus.com.br/events/'+FRM_PRINCIPAL.Query_CalendarID_GOOGLE_CALENDAR.AsString+'?';
                            FRM_PRINCIPAL.NetHTTPClient1.Delete(url+'client_id='+ini2.ReadString('tokens','CLIENTE_ID','')+'&client_secret='+ini2.ReadString('tokens','CLIENT_SECRET','')+'&access_token='+accesstoken);
                            query_delete:=TFDQuery.Create(nil);
                            query_delete.Connection:=DM.Conexao;
                            query_delete.SQL.Text:='delete from CONTROLE_AGENDAMENTO where id=:f';
                            query_delete.Params[0].AsInteger:=FRM_PRINCIPAL.Query_CalendarID.AsInteger;
                            query_delete.ExecSQL;
                            query_delete.FREE;

                          END;

                           //enviar google agenda
                  cli:=TFDQuery.Create(NIL);
                  cli.Connection:=DM.Conexao;
                  cli.SQL.Text:='select coalesce(clientes_dados.endereco||'', ''||regioes.cidade||'', ''||regioes.uf||'+
                  ''', ''||clientes_dados.numero,regioes.cidade||'', ''||regioes.uf) localizacao  from clientes ' +
                  'join clientes_dados on clientes_dados.id_cliente = clientes.id_cliente ' +
                  'join regioes on regioes.id_regiao  = clientes.id_regiao '+
                  'where clientes.nome =:a';
                  cli.Params[0].Asstring:=Edit2.Text;
                  cli.Open();


                 json:=TStringList.Create;


                 json.Add('{'+#13);
                 json.Add('"summary": "'+Edit2.Text+'",'+#13);

                 json.Add('"location": "'+cli.FieldByName('localizacao').AsString+'",'+#13);
                 json.Add('"description": "'+Memo1.Lines.Text+'",'+#13);
                 json.Add('"start": { '+#13);
                 json.Add('"dateTime":"'+FormatDateTime('yyyy"-"mm"-"dd',RzDateTimeEdit1.Date)+'T'+FormatDateTime('hh":"mm":"00',RzDateTimeEdit2.Time)+'",');
                 json.Add('"timeZone": "America/Campo_Grande"'+#13);
                 json.Add('},'+#13);

                 json.Add('"end": { '+#13);
                 json.Add('"dateTime":"'+FormatDateTime('yyyy"-"mm"-"dd',RzDateTimeEdit1.date)+'T'+FormatDateTime('hh":"mm":"00',RzDateTimeEdit3.Time)+'",');
                 json.Add('"timeZone": "America/Campo_Grande"'+#13);
                 json.Add('},'+#13);



                  cli.SQL.Text:='SELECT CONTROLE_AGENDA_EMAIL.email ' +
                                'FROM CONTROLE_AGENDA_EMAIL ' +
                                'WHERE CONTROLE_AGENDA_EMAIL.id_agenda =:D AND CONTROLE_AGENDA_EMAIL.email IS NOT NULL';
                  cli.Params[0].AsINTEGER:=DM.GenGEN_ID.AsInteger;
                  cli.Open();


                    json.Add(' "recurrence": ['+#13+
                        '"RRULE:FREQ=DAILY;COUNT=1" ' +#13+
                        '],');

                    if CLI.RecordCount<>0 then
                    BEGIN
                     json.Add('"attendees": [ '+#13);
                     cli.first;
                     while not cli.Eof do
                      begin

                      if cli.RecNo<>cli.RecordCount then
                       json.Add('{"email": "'+cli.FieldByName('email').AsString+'"},'+#13)
                       else
                       json.Add('{"email": "'+cli.FieldByName('email').AsString+'"}'+#13+'],');

                       cli.NEXT;
                      end;
                    END;
                     json.Add('"reminders": { '+#13+
                              '"useDefault": false, '+#13+
                              '"overrides": [ '+#13+
                              '{"method": "email", "minutes": 24}, '+#13+
                              '{"method": "popup", "minutes": 10}'+#13+
                              ']'+#13+'}'+#13+'}');

                     JSON.SaveToFile('JSON.TXT');
                     JsonToSend := TStringStream.Create(Json.Text, TEncoding.UTF8);
                     Frm_Principal.refresh_token;

                     ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'google.ini');
                     resposta:=TStringList.Create;

                     accesstoken:=ini.ReadString('tokens','ACCESS_TOKEN','');

                     url:='https://www.googleapis.com/calendar/v3/calendars/silenus@silenus.com.br/events?insert&';

                     resposta.Text:=Frm_Principal.NetHTTPClient1.Post(url+'client_id='+ini.ReadString('tokens','CLIENTE_ID','')+'&client_secret='+ini.ReadString('tokens','CLIENT_SECRET','')+'&access_token='+accesstoken,JsonToSend).ContentAsString;
                     resposta.SaveToFile('TESTE.TXT');
                         cli.SQL.Text:='update controle_agendamento ' +
                                         'set controle_agendamento.id_google_calendar =:G ' +
                                         'where controle_agendamento.id =:i';
                                  cli.Params[0].AsString:=Frm_Principal.getCamposJsonString(resposta.Text,'id');
                                  cli.Params[1].AsINTEGER:=DM.GenGEN_ID.AsInteger;
                                  cli.ExecSQL;




                // close;
             except
             on E: Exception do
                MessageDlg('ouve um erro ao Salvar o Agendamento '+E.Message,mtError,[mbOK],0);

             end;




        dm.FDTransaction1.Commit;
        CLOSE;






























{Query_Agenda.Close;
query_agenda.params[0].AsDate :=RzDateTimeEdit1.Date;
query_agenda.params[1].AsString :=copy(RzDateTimeEdit2.Text,1,2)+'%';
query_agenda.Params[2].AsInteger := StrToInt(RzComboBox2.Value);
query_agenda.Open();
if query_agenda.RecordCount <> 0 then
         begin
              Frm_Agenda:=tFrm_Agenda.Create(self);
              Frm_Agenda.ShowModal;
              if Frm_Agenda.S = 1 then
                  begin
                     if length(RzDBLookupComboBox1.Text)=0 then
                          begin
                          ShowMessage('Cliente não pode ser nulo');
                          Act_BuscaCliExecute(Sender);
                          end
                          else
                          if RzComboBox1.ItemIndex=-1 then
                            begin
                             ShowMessage('selecione quem foi o atendente que agendou!');
                             RzComboBox1.SetFocus;
                            end
                             else
                            if RzComboBox2.ItemIndex=-1 then
                            begin
                             ShowMessage('selecione  o responsavel!');
                             RzComboBox2.SetFocus;
                            end
                             else
                          if RzDateTimeEdit1.Date < (now-1) then
                             begin
                             ShowMessage('data de agendamento não pode ser menor que a data atual!');
                             RzDateTimeEdit1.SetFocus;
                             end
                             else

                            begin


                            dm.Proc_Agendar.Params[1].AsDate:=RzDateTimeEdit1.Date;
                            dm.Proc_Agendar.Params[2].AsTime:=RzDateTimeEdit2.Time;
                            dm.Proc_Agendar.Params[3].AsInteger:=RzDBLookupComboBox1.KeyValue;
                            dm.Proc_Agendar.Params[4].AsString:=Edit2.text;
                            dm.Proc_Agendar.Params[5].AsInteger:=StrToInt(RzComboBox1.value);
                            dm.Proc_Agendar.Params[6].AsInteger:=StrToInt(RzComboBox2.value);

                            dm.Proc_Agendar.ExecProc;



                            dm.Conexao.Commit;
                            ShowMessage('Agendado com Sucesso!');
                            Frm_Agenda.free;
                            dm.Proc_Agendar.Params[8].AsInteger:=0;
                              close;
                            end;
                  end;
         end


         else
           begin



               if length(RzDBLookupComboBox1.Text)=0 then
                  begin
                  ShowMessage('Cliente não pode ser nulo');
                  Act_BuscaCliExecute(Sender);
                  end
                  else
                  if RzComboBox1.ItemIndex=-1 then
                    begin
                     ShowMessage('selecione quem foi o atendente que agendou!');
                     RzComboBox1.SetFocus;
                    end
                     else
                    if RzComboBox2.ItemIndex=-1 then
                    begin
                     ShowMessage('selecione  o responsavel!');
                     RzComboBox2.SetFocus;
                    end
                     else
                     if RzDateTimeEdit1.Date < (now-1) then
                        begin
                         ShowMessage('Data de agendamento não pode ser menor que a data atual!');
                         RzDateTimeEdit1.SetFocus;
                        end
                     else
                    begin


                    dm.Proc_Agendar.Params[1].AsDate:=RzDateTimeEdit1.Date;
                    dm.Proc_Agendar.Params[2].AsTime:=RzDateTimeEdit2.Time;
                    dm.Proc_Agendar.Params[4].AsString:=Edit2.text;
                    dm.Proc_Agendar.Params[3].AsInteger:=RzDBLookupComboBox1.KeyValue;
                    dm.Proc_Agendar.Params[6].AsInteger:=StrToInt(RzComboBox2.value);

                    dm.Proc_Agendar.ExecProc;


                    dm.Conexao.Commit;
                    ShowMessage('Agendado com Sucesso!');
                       dm.Proc_Agendar.Params[8].AsInteger:=0;

                       close;
                    end;
           end;  }





end;

procedure TFrm_Agendamento.Act_UsuarioExecute(Sender: TObject);
 var
 j : integer;

begin
               j := Procurar(RzComboBox1.Value) ;

             if (j = -1) then
                begin
                   if (StringGrid1.Cells[1,StringGrid1.RowCount-1] <> '') then
                   StringGrid1.RowCount := StringGrid1.RowCount + 1;
                   StringGrid1.Cells[0,StringGrid1.RowCount-1] :=RzComboBox1.Value;
                   StringGrid1.Cells[1,StringGrid1.RowCount-1] :=RzComboBox1.text;

                end;
end;

procedure TFrm_Agendamento.Agendar;
var
  li: TGCalendarItem;
begin

  {  Button5.Caption := 'New';
    Button5.Hint := 'Create a new Event';
    li := AdvGCalendar1.Items.Add;
    SetCalendarItem(li);
    li.CalendarID := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TGCalendar).ID;
    AdvGCalendar1.Add(li);
    FillCalendarItems;
    Inserting := false;}

end;

procedure TFrm_Agendamento.FormShow(Sender: TObject);
var
query_carrega : tfdquery;
begin


           query_carrega:=TFDQuery.Create(self);
           query_carrega.Connection:=dm.Conexao;
           query_carrega.SQL.Text:='select distinct(funcionarios.id_funcionario),funcionarios.nome from funcionarios' +
                                   '          where  funcionarios.status=1 and funcionarios.id_funcionario <>:i order by funcionarios.nome ';
           query_carrega.Params[0].AsInteger:=Frm_Principal.id_usu;
           query_carrega.open;

           query_carrega.first;
           RzComboBox1.Values.Clear;
           RzComboBox1.Items.Clear;


           while not query_carrega.eof do
           begin
              RzComboBox1.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              RzComboBox1.Items.add(query_carrega.FieldByName('nome').Asstring);
              query_carrega.next;
           end;
           RzComboBox1.ItemIndex:=0;
           query_carrega.Free;
           Query_Clientes.Open();
           RzDateTimeEdit1Exit(sender);
           //Label2.Caption:=FormatDateTime('dddd", "dd" de "mmmm" de "yyyy',RzDateTimeEdit1.Date)+'  '+FormatDateTime('hh":"mm',RzDateTimeEdit2.Date)+'-'+FormatDateTime('hh":"mm',RzDateTimeEdit3.Date)
end;

function TFrm_Agendamento.Procurar(pValor: String; pColuna: Integer): Integer;
var
  I : Integer;
begin
  Result := -1;
  for I := 0 to StringGrid1.RowCount - 1 do begin
    if (StringGrid1.Cells[pColuna,I] = pValor) then begin
      Result := I;
      Break;
    end;
  end;
end;

procedure TFrm_Agendamento.RzDateTimeEdit1Exit(Sender: TObject);
begin
    Frm_Agendamento.Label2.Caption:=FormatDateTime('dddd", "dd" de "mmmm" de "yyyy',Frm_Agendamento.RzDateTimeEdit1.Date)+'  '+Frm_Agendamento.RzDateTimeEdit2.Text+'-'+Frm_Agendamento.RzDateTimeEdit3.Text;
end;

procedure TFrm_Agendamento.SetCalendarItem(Item: TGCalendarItem);
begin
    Item.Summary := Edit2.text;
    Item.Description :=  Memo1.Lines.text;
    DM.GEN.CLOSE;
    DM.GEN.SQL.TEXT:='SELECT GEN_ID(CONTROLE_AGENDAMENTO_ID,1)FROM RDB$DATABASE';
    DM.GEN.OPEN;
    Item.Sequence:=dm.GenGEN_ID.AsInteger;
    Item.Location:=Edit3.Text;
      Item.StartTime := EncodeDateTime(YearOf(RzDateTimeEdit1.Date), MonthOf(RzDateTimeEdit1.Date), DayOf(RzDateTimeEdit1.Date), HourOf(RzDateTimeEdit2.time), MinuteOf(RzDateTimeEdit2.time), SecondOf(RzDateTimeEdit2.time),0);
      Item.EndTime := EncodeDateTime(YearOf(RzDateTimeEdit1.Date), MonthOf(RzDateTimeEdit1.Date), DayOf(RzDateTimeEdit1.Date), HourOf(RzDateTimeEdit3.time), MinuteOf(RzDateTimeEdit3.time), SecondOf(RzDateTimeEdit3.time),0);
      Item.IsAllDay := false;


    Item.Visibility := TVisibility(1);
end;

end.
