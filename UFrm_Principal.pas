unit UFrm_Principal;

interface

uses ShellApi, inifiles, registry,IdComponent,IdTCPConnection,IdTCPClient, IdHTTP, IdBaseComponent,IdMessage, IdExplicitTLSClientServerBase,
IdMessageClient,IdSMTPBase,IdSMTP,IdIOHandler,IdIOHandlerSocket,IdIOHandlerStack,IdSSL,IdSSLOpenSSL,IdAttachmentFile, IdText,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, JSON,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, System.Threading,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxGDIPlusClasses, Vcl.StdCtrls,
  RzLabel, RzPanel, RzGroupBar, RzStatus, RzButton, Vcl.Mask, RzEdit, Data.DB,
  RzCmboBx, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, VCLTee.TeCanvas,
  DosMove, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCGrids, RzDBLbl, RzTabs, Vcl.Menus, Vcl.WinXCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxVGrid, cxDBVGrid, cxInplaceContainer, cxGridTableView,
  cxClasses,   RzSndMsg, IdMailBox,
  Vcl.ComCtrls, dxdbtrel, RLReport,  RLRichText, Vcl.ShareContract,
  ekbasereport, ekrtf,  RzDBCmbo,

  dxCustomTileControl, dxTileControl, Vcl.MPlayer,
  PlannerMonthView, Planner, DBPlanner, DBPlannerMonthView, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,DateUtils,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, PlannerCal,
  Vcl.DBCtrls, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent;

type
  TFrm_Principal = class(TForm)
    ActionList1: TActionList;
    Act_Clientes: TAction;
    Act_Agendamento: TAction;
    Act_Atendimento: TAction;
    Act_Sair: TAction;
    RzPanel1: TRzPanel;
    RzComboBox1: TRzComboBox;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label3: TLabel;
    Act_Filtrar: TAction;
    RzPanel2: TRzPanel;
    Image1: TImage;
    ImageList2: TImageList;
    Act_Alterar: TAction;
    Act_Cancelar: TAction;
    Act_Atender: TAction;
    DosMove1: TDosMove;
    Query_Agendamento: TFDQuery;
    Query_AgendamentoID: TIntegerField;
    Query_AgendamentoDATA_HORA: TSQLTimeStampField;
    Query_AgendamentoAGENDAMENTO: TSQLTimeStampField;
    Query_AgendamentoDETALHE: TStringField;
    Query_AgendamentoID_STATUS: TIntegerField;
    Query_AgendamentoAGENDADO: TStringField;
    Query_AgendamentoRESPONSAVEL: TStringField;
    Query_AgendamentoCLIENTE: TStringField;
    Query_AgendamentoSTATUS: TStringField;
    Query_AgendamentoATE: TStringField;
    Query_AgendamentoCANC: TStringField;
    Query_AgendamentoVISU: TStringField;
    DS_Agendamento: TDataSource;
    Query_PrAgenda: TFDQuery;
    DS_Query_PrAgenda: TDataSource;
    Query_PrAgendaAGENDAMENTO: TSQLTimeStampField;
    Query_PrAgendaCLIENTE: TStringField;
    Query_PrAgendaRESPONSAVEL: TStringField;
    Act_Ag_Altera: TAction;
    Act_Ag_Cancela: TAction;
    Act_Ag_Atender: TAction;
    RzBitBtn1: TRzBitBtn;
    RzDateTimeEdit2: TRzDateTimeEdit;
    ImageList3: TImageList;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    PopupMenu1: TPopupMenu;
    SplitView1: TSplitView;
    PanelButons: TPanel;
    RzPanel3: TRzPanel;
    Label1: TLabel;
    Image2: TImage;
    RzToolButton1: TRzToolButton;
    RzPanel4: TRzPanel;
    Label5: TLabel;
    Image3: TImage;
    RzToolButton2: TRzToolButton;
    RzPanel5: TRzPanel;
    Label6: TLabel;
    Image4: TImage;
    RzToolButton3: TRzToolButton;
    RzPanel6: TRzPanel;
    Image5: TImage;
    Label7: TLabel;
    RzToolButton4: TRzToolButton;
    Panel2: TPanel;
    Image14: TImage;
    Panel3: TPanel;
    RzGroupBox3: TRzGroupBox;
    RzStatusBar1: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzStatusPane1: TRzStatusPane;
    RzToolbarButton1: TRzToolbarButton;
    RzToolbarButton2: TRzToolbarButton;
    RzToolbarButton3: TRzToolbarButton;
    RzToolbarButton4: TRzToolbarButton;
    RzStatusPane2: TRzStatusPane;
    RzStatusPane3: TRzStatusPane;
    RzStatusPane4: TRzStatusPane;
    RzStatusPane5: TRzStatusPane;
    Act_CadastVersoes: TAction;
    RzToolbarButton5: TRzToolbarButton;
    Act_Acessos: TAction;
    RzToolbarButton6: TRzToolbarButton;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzStatusPane6: TRzStatusPane;
    RzStatusPane7: TRzStatusPane;
    RzStatusPane8: TRzStatusPane;
    RzVersionInfo1: TRzVersionInfo;
    Query_AgendamentoID_CLIENTE: TIntegerField;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1URGENTE: TcxDBEditorRow;
    cxDBVerticalGrid1ESPERA: TcxDBEditorRow;
    cxDBVerticalGrid1ATENDIMENTO: TcxDBEditorRow;
    ActAtender1: TMenuItem;
    Cancelar1: TMenuItem;
    RegistrarAtendimento1: TMenuItem;
    Act_Finalizar: TAction;
    N1: TMenuItem;
    Finalizar1: TMenuItem;
    Query: TFDQuery;
    Timer1: TTimer;
    RzToolbarButton7: TRzToolbarButton;
    Act_Contrato: TAction;
    Act_Config: TAction;
    RzToolbarButton8: TRzToolbarButton;
    PopupMenu2: TPopupMenu;
    EmVisita1: TMenuItem;
    ActCancelar1: TMenuItem;
    Act_Ag_Visita: TAction;
    VisualizarAlterar1: TMenuItem;
    RzComboBox2: TRzComboBox;
    Label8: TLabel;
    Label11: TLabel;
    Act_Dash: TAction;
    RzToolbarButton9: TRzToolbarButton;
    Act_Organizer: TAction;
    RzToolbarButton10: TRzToolbarButton;
    Act_Implanta: TAction;
    RzToolbarButton11: TRzToolbarButton;
    DS_Calendar: TDataSource;
    cbDefaultReminders: TComboBox;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet3: TRzTabSheet;
    TabSheet4: TTabSheet;
    BindingsList1: TBindingsList;
    Edit3: TEdit;
    DBPlannerMonthView1: TDBPlannerMonthView;
    PopupMenu3: TPopupMenu;
    Novo1: TMenuItem;
    Alterar1: TMenuItem;
    Panel1: TPanel;
    Excluir1: TMenuItem;
    Query_Agenda: TFDQuery;
    DS_Todos_Agenda: TDataSource;
    PlannerCalendar1: TPlannerCalendar;
    Panel5: TPanel;
    Image13: TImage;
    Query_AgendaID: TIntegerField;
    Query_AgendaDATA_HORA_AGENDA: TSQLTimeStampField;
    Query_AgendaDATA_HORA_FINAL: TSQLTimeStampField;
    Query_AgendaDADOS: TMemoField;
    Query_AgendaNOME: TStringField;
    IdHTTP1: TIdHTTP;
    Query_Calendar: TFDQuery;
    Query_CalendarID: TIntegerField;
    Query_CalendarDATA_HORA: TSQLTimeStampField;
    Query_CalendarDATA_HORA_AGENDA: TSQLTimeStampField;
    Query_CalendarID_CLIENTE: TIntegerField;
    Query_CalendarDETALHE: TStringField;
    Query_CalendarAGENDADO: TIntegerField;
    Query_CalendarID_FUNCIONARIO: TIntegerField;
    Query_CalendarSTATUS: TIntegerField;
    Query_CalendarDATA_UP: TSQLTimeStampField;
    Query_CalendarCLIENTE: TStringField;
    Query_CalendarRESPONSAVEL: TStringField;
    Query_CalendarDATA_HORA_FINAL: TSQLTimeStampField;
    Query_CalendarOBS: TMemoField;
    DBGrid2: TDBGrid;
    DBMemo1: TDBMemo;
    DBText1: TDBText;
    DBText2: TDBText;
    Image6: TImage;
    Query_Calendar_Email: TFDQuery;
    DS_Query_Calendar_Email: TDataSource;
    Query_Calendar_EmailNOME: TStringField;
    NetHTTPClient1: TNetHTTPClient;
    Query_CalendarID_GOOGLE_CALENDAR: TStringField;
    DBText3: TDBText;
    Image11: TImage;
    DBText4: TDBText;
    Image12: TImage;
    RzToolbarButton12: TRzToolbarButton;
    Act_App_Cliente: TAction;
    FDEventAlerter1: TFDEventAlerter;
    Act_SugSolici: TAction;
    RzToolbarButton13: TRzToolbarButton;

    procedure Act_SairExecute(Sender: TObject);
    procedure Act_ClientesExecute(Sender: TObject);
    procedure Act_AtualizaçãoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_AtendimentoExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Act_AlterarExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
    procedure Act_AtenderExecute(Sender: TObject);
    procedure Act_AgendamentoExecute(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Act_Ag_AlteraExecute(Sender: TObject);
    procedure Act_Ag_CancelaExecute(Sender: TObject);
    procedure Act_Ag_AtenderExecute(Sender: TObject);
    procedure Act_FiltrarExecute(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Act_CadastVersoesExecute(Sender: TObject);
    procedure Act_AcessosExecute(Sender: TObject);
    procedure permissao;
    procedure gerahtml;
    procedure Query_recBeforeRefresh(DataSet: TDataSet);
    procedure Query_recAfterRefresh(DataSet: TDataSet);
    procedure RzLabel1Click(Sender: TObject);
    procedure Act_FinalizarExecute(Sender: TObject);
    procedure FDEventAlerter1Alert(ASender: TFDCustomEventAlerter;
      const AEventName: string; const AArgument: Variant);
    procedure Timer1Timer(Sender: TObject);
    procedure Act_ContratoExecute(Sender: TObject);
    procedure Act_ConfigExecute(Sender: TObject);
    procedure Act_Ag_VisitaExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Act_DashExecute(Sender: TObject);
    procedure Act_OrganizerExecute(Sender: TObject);
    procedure Act_ImplantaExecute(Sender: TObject);
    procedure conectaAgenda;
    procedure refresh_token;
    procedure init;
    procedure FillCalendar;
    procedure FillCalendarItems;
    procedure Tab_CalendarAfterEdit(DataSet: TDataSet);
    procedure TabSheet4Show(Sender: TObject);

    procedure Alterar1Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure DBPlannerMonthView1ItemSelect(Sender: TObject;
      Item: TPlannerItem);
    procedure PlannerCalendar1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure DBPlannerMonthView1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure Query_CalendarAfterOpen(DataSet: TDataSet);
    procedure Query_CalendarAfterRefresh(DataSet: TDataSet);
    procedure Act_App_ClienteExecute(Sender: TObject);
    procedure Act_SugSoliciExecute(Sender: TObject);




  private

    function localizaregistro(busca : string) : string;
  public

  function Getcomputer : string;
  function EnviarEmail(aHost : String; aPort : Integer; aLogin, aSenha,aListaEmail, aAssunto :String; aAuth, aAuthSSL : Boolean) : Boolean;
 function getCamposJsonString(json,value:String): String;
    var
    grupo,id_usu : integer;
    cli,protocolo,status,DESC, ATENDIMENTO,respon,canal,data_hora,emailcli:string;
    client_id,client_secret : string;

  end;




var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses UClientes, UFrm_Atualizacao, UDM, UFrm_Atendimento, UFrm_LancAtendimento,
  UFrm_MotivoCancela, UFrm_Agendamento, UFrm_List_Agendamento, UFrm_Login,
  UFrm_CadVersao, UFrm_Acessos, UFrm_Aviso, UEnviaEmail, UFrm_Contratos,
  UFrm_Config_Finan, UFrm_Organizer, UFrm_Dash, UFrm_Quadro_Implantacao,
  UFrm_APP_Cliente, UFrm_App, UFrm_Sugestoes;

function TFrm_Principal.getCamposJsonString(json,value:String): String;
var
   LJSONObject: TJSONObject;
   function TrataObjeto(jObj:TJSONObject):string;
   var i:integer;
       jPar: TJSONPair;
   begin
        result := '';
        for i := 0 to jObj.Size - 1 do
        begin
             jPar := jObj.Get(i);
             if jPar.JsonValue Is TJSONObject then
                result := TrataObjeto((jPar.JsonValue As TJSONObject)) else
             if sametext(trim(jPar.JsonString.Value),value) then
             begin
                  Result := jPar.JsonValue.Value;
                  break;
             end;
             if result <> '' then
                break;
        end;
   end;
begin
   try
      LJSONObject := nil;
      LJSONObject := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(json),0) as TJSONObject;
      result := TrataObjeto(LJSONObject);
   finally
      LJSONObject.Free;
   end;
end;


procedure SearchByListView(const Locate : String; ListView: TListView);
var
 I: System.Integer;

   function Equals: String;
   begin

      Result := ListView.Items[I].SubItems[0];  //se não, procura pela FANTASIA (da pra fazer um CASE aqui se tiver mais condições)
   end;
begin
for I := 0 to ListView.Items.Count -1 do
  begin
    if ((Pos(Locate, Equals) > 0) or (Locate = '')) then
    begin
      ListView.ItemIndex := I;
      ListView.Items[I].MakeVisible(True);
      Break;
    end;
  end;
end;



function TFrm_Principal.EnviarEmail(aHost : String; aPort : Integer; aLogin, aSenha,aListaEmail, aAssunto :String;  aAuth, aAuthSSL : Boolean) : Boolean;
var
 AuthSSL : TIdSSLIOHandlerSocketOpenSSL;
 IdSMTP    : TIdSMTP;
 IdMessage : TIdMessage;
  IdText : TIdText;
begin
 { Result:= False;
  IdSMTP    := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  try
    IdSMTP.Host     := aHost;
    IdSMTP.Port     := aPort;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Username := aLogin;
    IdSMTP.Password := aSenha;
    if aAuthSSL then
    begin
      AuthSSL                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      IdSMTP.IOHandler          := AuthSSL;
      IdSMTP.UseTLS             := utUseRequireTLS;//utUseImplicitTLS;
      AuthSSL.SSLOptions.Method := sslvSSLv23;
      AuthSSL.SSLOptions.Mode   := sslmClient;

    end;
    if aAuth then
      IdSMTP.AuthType := satDefault
    else
      IdSMTP.AuthType := satNone;
    try
    IdSMTP.Connect;

    IdMessage.From.Address := 'silenus@terra.com.br';
    IdMessage.Recipients.EMailAddresses  := aListaEmail;
    IdMessage.ReplyTo.EMailAddresses := aListaEmail;
    IdMessage.Subject                    := aAssunto;
    IdMessage.ContentType := 'multipart/mixed';
    IdMessage.Encoding :=meMIME;
    IdText := TIdText.Create(IdMessage.MessageParts);

    IdText.Body.LoadFromFile(ExtractFilePath(Application.ExeName)+'chamado.html');



    //
     IdText.ContentType := 'text/html;';


    IdSMTP.Send(IdMessage);
   // ShowMessage('E-Mail Enviado com sucesso para: ' +  aListaEmail);
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao enviar E-Mail:'+#13#10+e.Message);
        Exit;
      end;
    end;
  finally
    IdSMTP.Disconnect;
    FreeAndNil(IdSMTP);
    FreeAndNil(IdMessage);
    if AuthSSL <> nil then
    FreeAndNil(AuthSSL);
  end;
  Result:= True;

  DeleteFile(ExtractFilePath(Application.ExeName)+'\chamado.html');}
end;





procedure TFrm_Principal.Excluir1Click(Sender: TObject);
var
query_delete : tfdquery;
ini : TIniFile;
accesstoken,url : string;
begin

  begin
      if query_calendar.RecordCount<>0 then
      begin


           if Application.MessageBox(PWIDEChar('Deseja Realmente Excluir o Registro Selecionado?'+Query_CalendarCLIENTE.Text),'Confirme',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=mryes then
              begin
              refresh_token;
              ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'google.ini');
              accesstoken:=ini.ReadString('tokens','ACCESS_TOKEN','');
              url:='https://www.googleapis.com/calendar/v3/calendars/silenus@silenus.com.br/events/'+Query_CalendarID_GOOGLE_CALENDAR.AsString+'?';
              NetHTTPClient1.Delete(url+'client_id='+ini.ReadString('tokens','CLIENTE_ID','')+'&client_secret='+ini.ReadString('tokens','CLIENT_SECRET','')+'&access_token='+accesstoken);
              query_delete:=TFDQuery.Create(nil);
              query_delete.Connection:=DM.Conexao;
              query_delete.SQL.Text:='delete from CONTROLE_AGENDAMENTO where id=:f';
              query_delete.Params[0].AsInteger:=Query_CalendarID.AsInteger;
              query_delete.ExecSQL;
              dm.FDTransaction1.Commit;
              query_delete.FREE;
              end;
      end;

        Query_Calendar.Refresh;
  end;

end;

function TFrm_Principal.Getcomputer : string;
var
     di      : longint;
     PathArray : array [0..255] of char;
begin
    FillChar(PathArray, SizeOf(PathArray), #0);
    di := 255;
    GetComputerName(PathArray,dword(di));
    Result := Format('%s',[PathArray]);
end;


function Crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
       KeyPos : Integer;
       OffSet : Integer;
       Dest, Key : String;
       SrcPos : Integer;
       SrcAsc : Integer;
       TmpSrcAsc : Integer;
       Range : Integer;
begin
       if (Src = '') Then
       begin
               Result:= '';
               Goto Fim;
       end;
       Key := 'RARBOCODNENFAGAHLILJDKOLMSNSOCPCQHRHSMWMXIYIZTTZHK';
       Dest := '';
       KeyLen := Length(Key);
       KeyPos := 0;
       SrcPos := 0;
       SrcAsc := 0;
       Range := 256;
       if (Action = UpperCase('C')) then
       begin
               Randomize;
               OffSet := Random(Range);
               Dest := Format('%1.2x',[OffSet]);
               for SrcPos := 1 to Length(Src) do
               begin
                       Application.ProcessMessages;
                       SrcAsc := (Ord(Src[srcPos]) + OffSet) Mod 255;
                       if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

                       SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       Dest := Dest + Format('%1.2x',[srcAsc]);
                       OffSet := SrcAsc;
               end;
       end
       Else if (Action = UpperCase('D')) then
       begin
               OffSet := StrToInt('$' + copy(Src,1,2));//<--------------- adiciona o $ entra as aspas simples
               SrcPos := 3;
               repeat
                       SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));//<--------------- adiciona o $ entra as aspas simples
                       if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
                       TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
                       else TmpSrcAsc := TmpSrcAsc - OffSet;
                       Dest := Dest + Chr(TmpSrcAsc);
                       OffSet := SrcAsc;
                       SrcPos := SrcPos + 2;
               until (SrcPos >= Length(Src));
       end;
       Result:= Dest;
Fim:
end;




procedure TFrm_Principal.Act_AcessosExecute(Sender: TObject);
begin
frm_acessos:=TFrm_Acessos.Create(self);
Frm_Acessos.ShowModal;
Frm_Acessos.Free;
end;

procedure TFrm_Principal.Act_AgendamentoExecute(Sender: TObject);
begin
          Frm_List_Agendamento:=TFrm_List_Agendamento.Create(self);
          Frm_List_Agendamento.ShowModal;
          Frm_List_Agendamento.free;
          Query_PrAgenda.Refresh;


                Act_FiltrarExecute(sender);

end;

procedure TFrm_Principal.Act_Ag_AlteraExecute(Sender: TObject);
var
query_carrega,query_filtra : TFDQuery;
begin
  if Query_Agendamento.RecordCount<>0 then
     BEGIN

                 Frm_Agendamento:=TFrm_Agendamento.Create(SELF);

                 QUERY_FILTRA:=TFDQuery.Create(self);
                 QUERY_FILTRA.Connection:=dm.Conexao;
                 QUERY_FILTRA.sql.Text:='select * from CONTROLE_AGENDAMENTO ' +
                                         'where CONTROLE_AGENDAMENTO.id =:i';

                 QUERY_FILTRA.params[0].AsInteger:=Query_AgendamentoID.AsInteger;
                 QUERY_FILTRA.OPEN;

              Frm_Agendamento.RzDateTimeEdit1.Date:=StrToDate(FormatDateTime('dd"/"mm"/"yyyy',QUERY_FILTRA.FieldByName('DATA_HORA_AGENDA').AsDateTime));
              Frm_Agendamento.RzDateTimeEdit2.Time:=StrToTime(FormatDateTime('hh":"mm',QUERY_FILTRA.FieldByName('DATA_HORA_AGENDA').AsDateTime));

              Dm.Query_Clientes.Close;
              dm.Query_Clientes.SQL.Text:='select  * from controle_clientes WHERE id_cliente =:F';
              dm.Query_Clientes.Params[0].AsINTEGER:=QUERY_FILTRA.FieldByName('id_cliente').AsInteger;
              dm.Query_Clientes.OPEN;
             { Frm_Agendamento.RzDBLookupComboBox1.KeyValue:=dm.Query_ClientesID_CLIENTE.VALUE;
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
           dm.Proc_Agendar.Params[0].AsInteger:=Query_AgendamentoID.AsInteger;
           dm.Proc_Agendar.Params[5].AsInteger:=query_filtra.FieldByName('AGENDADO').AsInteger;
           dm.Proc_Agendar.Params[3].AsInteger:= QUERY_FILTRA.FieldByName('id_cliente').AsInteger;
           dm.Proc_Agendar.Params[7].AsInteger:= QUERY_FILTRA.FieldByName('STATUS').AsInteger;

            Frm_Agendamento.ShowModal;
            Query_Agendamento.Refresh;
            Query_PrAgenda.Refresh;
            Frm_Agendamento.Free;    }
     END;
end;

procedure TFrm_Principal.Act_Ag_AtenderExecute(Sender: TObject);

begin
                dm.query_clientebusca.close;
                dm.query_clientebusca.params[0].AsString:=Query_AgendamentoCLIENTE.AsString;
                dm.Query_ClienteBusca.Open();

            Frm_LancAtendimento:=TFrm_LancAtendimento.Create(SELF);
            Frm_LancAtendimento.Act_NovoExecute(sender);
            Frm_LancAtendimento.RzComboBox3.Value:='1';
            Frm_LancAtendimento.RzComboBox4.ItemIndex:=4;

            Frm_LancAtendimento.RzDBLookupComboBox1.KeyValue:= Query_AgendamentoID_CLIENTE.asinteger;
            Frm_LancAtendimento.AGEND:=1;
            Frm_LancAtendimento.ShowModal;
            Frm_LancAtendimento.Free;
            dm.query_soma.refresh;

end;

procedure TFrm_Principal.Act_Ag_CancelaExecute(Sender: TObject);
var
cancela : tfdquery;
begin
  if Query_Agendamento.RecordCount<>0 then
     BEGIN

        if  Application.MessageBox('deseja realmente cancelar este agendamento?','',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1) = mrYes then
            begin





                                 dm.Proc_LancaAtende.Params[0].asinteger:=Query_AgendamentoID_CLIENTE.AsInteger;
                                 dm.Proc_LancaAtende.Params[1].asinteger:=id_usu;
                                 dm.Proc_LancaAtende.Params[2].asinteger:=id_usu;
                                 dm.Proc_LancaAtende.Params[3].asstring:='AGENDAMENTO CANCELADO';
                                 dm.Proc_LancaAtende.Params[4].asinteger:=9;
                                 dm.Proc_LancaAtende.Params[5].asinteger:= 0;
                                 dm.Proc_LancaAtende.Params[6].asinteger := 1;

                                      dm.gen.close;
                                      dm.Gen.Open();
                                      dm.Proc_LancaAtende.Params[7].asinteger :=DM.GenGEN_ID.AsInteger;


                                  Frm_MotivoCancela:=tFrm_MotivoCancela.Create(self);
                                  Frm_MotivoCancela.TIPO_OCO:=2;
                                  Frm_MotivoCancela.ShowModal;





                                       cancela:=TFDQuery.Create(self);
                                       cancela.Connection:=DM.Conexao;
                                       cancela.SQL.Text:='update CONTROLE_AGENDAMENTO set status =9 where id =:f';
                                       cancela.Params[0].AsInteger:=Query_AgendamentoID.AsInteger;
                                       cancela.ExecSQL;


                                       dm.Conexao.Commit;
                                       cancela.Free;
                                       Query_Agendamento.Refresh;

                                       Frm_MotivoCancela.Free;
                                       Query_PrAgenda.Refresh;

            end;

            dm.Query_Soma.Refresh;
     END;

end;

procedure TFrm_Principal.Act_Ag_VisitaExecute(Sender: TObject);
var
visita : tfdquery;
begin


             visita:=TFDQuery.Create(self);
             visita.Connection:=DM.Conexao;
             visita.SQL.Text:='update CONTROLE_AGENDAMENTO set status =3 where id =:f';
             visita.Params[0].AsInteger:=Query_AgendamentoID.AsInteger;
             visita.ExecSQL;
             Query_Agendamento.Refresh;
Query_PrAgenda.Refresh;
end;

procedure TFrm_Principal.Act_AlterarExecute(Sender: TObject);
begin
  if dm.Query_Atendimento.RecordCount<>0 then
     begin
              Frm_LancAtendimento:=TFrm_LancAtendimento.Create(self);
              Frm_LancAtendimento.RzComboBox3.Value:= IntToStr(DM.Query_AtendimentoCANAL.AsInteger);
              Frm_LancAtendimento.RzDBLookupComboBox1.ListSource:=DM.DS_Query_Cli;
            {  Dm.Query_Clientes.Close;
              dm.Query_Clientes.SQL.Text:='select first 1 id_client from controle_clientes WHERE id_cliente =:F';
              dm.Query_Clientes.Params[0].AsInteger:=DM.Query_AtendimentoID_CLIENTE.AsString;
              dm.Query_Clientes.OPEN;   }

           {   dm.query_clientebusca.close;
              dm.query_clientebusca.params[0].AsInteger:=dm.Query_ClientesID_CLIENTE.AsInteger;
              dm.Query_ClienteBusca.Open(); }
              Frm_LancAtendimento.RzDBLookupComboBox1.KeyValue:=DM.Query_AtendimentoID_CLIENTE.VALUE;
              Frm_LancAtendimento.Edit2.Text:= DM.Query_AtendimentoDESCRICAO.AsString;

       

              Frm_LancAtendimento.edit1.Text:= DM.Query_AtendimentoSOLICITANTE.AsString;
              dm.Proc_LancaAtende.Params[0].asinteger := dm.Query_ClientesID_CLIENTE.AsInteger;
              dm.Proc_LancaAtende.Params[6].asinteger :=2;
              frm_LancAtendimento.RZComboBox4.Value:=IntToStr(DM.Query_AtendimentoID_STATUS.AsInteger);
              Frm_LancAtendimento.ShowModal;
              DM.Query_Atendimento.Refresh;
              Frm_LancAtendimento.Free;
              dm.query_soma.refresh;
              Frm_LancAtendimento:=NIL;
     end;
end;

procedure TFrm_Principal.Act_App_ClienteExecute(Sender: TObject);
begin
Frm_APP:=TFrm_APP.Create(self);
Frm_APP.ShowModal;
Frm_App.Free;
end;

procedure TFrm_Principal.Act_AtenderExecute(Sender: TObject);
begin

  if dm.Query_Atendimento.RecordCount<>0 then
     begin
              Frm_Atendimento:=TFrm_Atendimento.Create(self);
              Frm_Atendimento.Query_atend.Close;
              Frm_Atendimento.Query_atend.Params[0].AsInteger:=DM.Query_AtendimentoID_ATENDIMENTO.AsInteger;
              Frm_Atendimento.Query_atend.open;


              DM.Query_Clientes.Close;
              dm.Query_Clientes.SQL.Text:='select  * from controle_clientes WHERE id_cliente =:F';
              dm.Query_Clientes.Params[0].AsInteger:=DM.Query_Atendimentoid_CLIENTE.Asinteger;
              dm.Query_Clientes.OPEN;
              Frm_Atendimento.RzComboBox3.Value:= IntToStr(DM.Query_AtendimentoCANAL.AsInteger);
            //  Frm_Atendimento.Edit2.Text:= DM.Query_Atendimentosolicitante.asstring;
              Frm_Atendimento.Edit2.Text:= DM.Query_AtendimentoDESCRICAO.AsString;
              Frm_Atendimento.RZComboBox4.Value:=IntToStr(DM.Query_AtendimentoID_STATUS.AsInteger);



              dm.Query_ListSoftware.Close;
              dm.Query_ListSoftware.Params[0].AsInteger:= DM.Query_AtendimentoID_CLIENTE.ASINTEGER;
              dm.Query_ListSoftware.open;
              DM.Query_Clientes.Open();




               dm.Query_Historico.Close;
               dm.Query_Historico.Params[0].AsInteger:=DM.Query_AtendimentoID_CLIENTE.AsInteger;
               dm.Query_Historico.Params[1].AsInteger:=DM.Query_AtendimentoID_ATENDIMENTO.AsInteger;
               dm.Query_Historico.open;






              Frm_Atendimento.ShowModal;
              DM.Query_Atendimento.Refresh;
              dm.Query_Soma.Refresh;
              Frm_Atendimento:=nil;
     end;
end;

procedure TFrm_Principal.Act_AtendimentoExecute(Sender: TObject);


begin




        Frm_LancAtendimento:=TFrm_LancAtendimento.Create(self);
        dm.Query_Clientes.Open();
        Frm_LancAtendimento.RzDBLookupComboBox1.ListSource:=DM.DS_Query_Cli;
        Frm_LancAtendimento.Act_Novo.Execute;
        Frm_LancAtendimento.ShowModal;
        DM.Query_Atendimento.Refresh;
        Frm_LancAtendimento:=nil;
        dm.Query_Soma.Refresh;




end;

procedure TFrm_Principal.Act_AtualizaçãoExecute(Sender: TObject);
begin
Frm_Clientes:=TFrm_Clientes.Create(self);
Frm_clientes.ShowModal;
Frm_Clientes.Free;
end;

procedure TFrm_Principal.Act_CadastVersoesExecute(Sender: TObject);
begin
Frm_CadVersao:=TFrm_CadVersao.Create(self);
Frm_CadVersao.ShowModal;
Frm_CadVersao.Free;
end;

procedure TFrm_Principal.Act_CancelarExecute(Sender: TObject);

begin

   if dm.Query_Atendimento.RecordCount<>0 then
     begin
   if DM.Query_AtendimentoID_STATUS.AsInteger<>9 then
       BEGIN
         Frm_MotivoCancela:=TFrm_MotivoCancela.Create(self);
         Frm_MotivoCancela.TIPO_OCO:=1;
          Frm_MotivoCancela.ShowModal;
          DM.Query_Atendimento.Refresh;
       END;
          dm.query_soma.refresh;
     end;
end;

procedure TFrm_Principal.Act_ClientesExecute(Sender: TObject);
begin
Frm_Clientes:=TFrm_Clientes.Create(self);
Frm_Clientes.Act_Ok.Caption:='Sair';
Frm_clientes.ShowModal;
Frm_Clientes.Free;
end;

procedure TFrm_Principal.Act_ConfigExecute(Sender: TObject);
begin
Frm_Config_Finan:=TFrm_Config_Finan.Create(self);
Frm_Config_Finan.ShowModal;
Frm_Config_Finan.Free;
end;

procedure TFrm_Principal.Act_ContratoExecute(Sender: TObject);
begin
Frm_Contratos:=TFrm_Contratos.Create(self);
Frm_Contratos.ShowModal;
Frm_Contratos.Free;
end;

procedure TFrm_Principal.Act_DashExecute(Sender: TObject);
begin
Frm_Dash:=TFrm_Dash.Create(self);
Frm_Dash.ShowModal;
end;

procedure TFrm_Principal.Act_FiltrarExecute(Sender: TObject);

begin




dm.Query_Atendimento.Close;
dm.Query_Atendimento.SQL.Text:='select * from controle_atendimentos ' +
                               ' where (cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:i)  ' +
                               '  and (cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:F) ' +RzComboBox2.Value+' '+
                               RzComboBox1.Value+' order by CONTROLE_ATENDIMENTOS.data_hora DESC,CONTROLE_ATENDIMENTOS.ID_STATUS ';
dm.Query_Atendimento.params[0].AsDate:=RzDateTimeEdit1.Date;
dm.Query_Atendimento.params[1].AsDate:=RzDateTimeEdit2.Date;

dm.Query_Atendimento.open;



                     {
query_agenda.Close;
query_agenda.Params[0].AsDate:=RzDateTimeEdit1.Date;
query_agenda.Params[1].AsDate:=RzDateTimeEdit2.Date;
query_agenda.OPEN;     }
Query_PrAgenda.Open();


end;

procedure TFrm_Principal.Act_FinalizarExecute(Sender: TObject);
var
thread : MinhaThread;
begin
   dm.Query_Ocorrencias.Close;
   dm.Query_Ocorrencias.Params[0].AsInteger:=dm.Query_AtendimentoID_ATENDIMENTO.AsInteger;
   dm.Query_Ocorrencias.Open();
   if DM.Query_Ocorrencias.RecordCount = 0 then
   ShowMessage('Cadastre pelo menos uma ocorrência Antes de Fechar o Atendimento!!')
   else

   begin
   query.Close;
   query.SQL.Text:='update controle_atendimento set status =3 where id_atendimento = '+IntToStr(dm.Query_AtendimentoID_ATENDIMENTO.AsInteger) ;
   query.ExecSQL;


                                        Frm_Principal.cli:=dm.Query_AtendimentoCLIENTE.AsString;
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

                                        emailcli:=dm.Query_AtendimentoCLIENTE.AsString;
                                        thread := MinhaThread.Create(false);
                                        thread.Resume;



   end;

end;

procedure TFrm_Principal.Act_ImplantaExecute(Sender: TObject);
begin
    Frm_Quadro_Implantacao:=TFrm_Quadro_Implantacao.Create(self);
    Frm_Quadro_Implantacao.Query_Quadro.Open();
    Frm_Quadro_Implantacao.ShowModal;
    Frm_Quadro_Implantacao.Free;
end;

procedure TFrm_Principal.Act_OrganizerExecute(Sender: TObject);
begin




Frm_Organizer:=TFrm_Organizer.Create(self);
Frm_Organizer.Query_Quadro.Close;
Frm_Organizer.Query_Quadro.Params[0].AsInteger:=Frm_Principal.id_usu;
Frm_organizer.ShowModal;                        //$00644537
Frm_organizer.free;
end;

procedure TFrm_Principal.Act_SairExecute(Sender: TObject);
begin

Close;
Application.Terminate;
end;



procedure TFrm_Principal.Act_SugSoliciExecute(Sender: TObject);
begin

      Frm_Sugestao := tfrm_sugestao.create(self);
      Frm_Sugestao.showmodal;
      Frm_Sugestao.free;
      Act_FiltrarExecute(Sender);



  

end;

procedure TFrm_Principal.Alterar1Click(Sender: TObject);
VAR
QUERY_EMAIL : TFDQuery;
begin
  Frm_Agendamento:=TFrm_Agendamento.Create(self);


   Frm_Agendamento.Ag:=1;
   Frm_Agendamento.Edit2.Text:=Query_CalendarCLIENTE.Text;
   Frm_Agendamento.Edit3.Text:=Query_CalendarDETALHE.Text;
   Frm_Agendamento.RzDateTimeEdit1.Date:=StrToDate(FormatDateTime('DD"/"MM"/"YYYY',Query_CalendarDATA_HORA_AGENDA.ASDATETIME));
   Frm_Agendamento.RzDateTimeEdit2.Time:=StrToTIME(FormatDateTime('HH":"MM":"SS',Query_CalendarDATA_HORA_AGENDA.ASDATETIME));
   Frm_Agendamento.RzDateTimeEdit3.Time:=StrToTIME(FormatDateTime('HH":"MM":"SS',Query_CalendarDATA_HORA_FINAL.ASDATETIME));
   Frm_Agendamento.Memo1.Lines.Assign(Query_CalendarOBS);

              QUERY_EMAIL:=TFDQuery.Create(nil);
              QUERY_EMAIL.Connection:=DM.Conexao;
              QUERY_EMAIL.SQL.Text:='SELECT controle_agenda_email.id_funcionario,CONTROLE_AGENDA_EMAIL.nome FROM CONTROLE_AGENDA_EMAIL ' +
                                    'WHERE CONTROLE_AGENDA_EMAIL.id_agenda =:D AND controle_agenda_email.id_funcionario<>:I';

              QUERY_EMAIL.Params[0].AsInteger:=Query_CalendarID.AsInteger;
              QUERY_EMAIL.Params[1].AsInteger:=id_usu;
              QUERY_EMAIL.OPEN;


              QUERY_EMAIL.First;
              while NOT QUERY_EMAIL.EOF do
               BEGIN
                   if QUERY_EMAIL.RecNo>1 then
                   Frm_Agendamento.StringGrid1.RowCount := Frm_Agendamento.StringGrid1.RowCount + 1;
                   Frm_Agendamento.StringGrid1.Cells[0,Frm_Agendamento.StringGrid1.RowCount-1] :=QUERY_EMAIL.FIELDBYNAME('id_funcionario').ASSTRING;
                   Frm_Agendamento.StringGrid1.Cells[1,Frm_Agendamento.StringGrid1.RowCount-1] :=QUERY_EMAIL.FIELDBYNAME('NOME').text;
                   QUERY_EMAIL.NEXT;
               END;
               QUERY_EMAIL.FREE;




  Frm_Agendamento.showmodal;
  Query_Calendar.Refresh;
  Frm_Agendamento.destroy;
end;

procedure TFrm_Principal.conectaAgenda;
var
ini_google : TIniFile;
begin

   if  FileExists(ExtractFilePath(ExtractFilePath(ParamStr(0))+'google.ini')) then
       ini_google := TIniFile.Create(ExtractFilePath(ParamStr(0))+'google.ini')
       else
       begin
         ini_google := TIniFile.Create(ExtractFilePath(ParamStr(0))+'google.ini');
         ini_google.WriteString('tokens','ACCESS_TOKEN','ya29.a0ARrdaM_rVkI4eu7pcNPOvR2bRe88BVflB098TuJnsnY-hOrD54Ei6qYSWud');
         ini_google.WriteString('tokens','REFRESH_TOKEN','1//04280PpG01r_RCgYIARAAGAQSNwF-L9Ir8Et4H4gI-8qq8tLJaKmJ35HLtwrQCY0IzsRgxTg-iEr5WTOo5OuMXQNJEh7QTCcaoOw');
         ini_google.WriteString('tokens','CLIENTE_ID','221316553562-vrqf0nhqoihvf2f0at33sr4okiiuccst.apps.googleusercontent.com');
         ini_google.WriteString('tokens','CLIENT_SECRET','kfhTVHxAWaccIwvckd9ij3FH');
         ini_google.WriteString('tokens','KEY','AIzaSyBTFouimLxzPVQpf6Ce-s3d3PBJj8sBCG8');
       end;



client_id:=ini_google.ReadString('tokens','CLIENTE_ID','');
client_secret:=ini_google.ReadString('tokens','CLIENT_SECRET','');
ini_google.Free;
//
end;

procedure TFrm_Principal.DBCtrlGrid1DblClick(Sender: TObject);
begin
Act_AtenderExecute(sender);
end;

procedure TFrm_Principal.DBGrid1CellClick(Column: TColumn);
begin
   if DBGrid1.SelectedField.FieldName = 'ALT' then
      Act_Alterar.Execute;


      if DBGrid1.SelectedField.FieldName = 'CAN' then
         Act_Cancelar.Execute;

      if DBGrid1.SelectedField.FieldName = 'ATE' then
         Act_Atender.Execute;

 


end;

procedure TFrm_Principal.DBGrid1DblClick(Sender: TObject);
begin
     if DM.Query_Atendimentoid_STATUS.AsInteger = 2 then
        begin
                    Act_Atender.Execute;

        end;
end;

procedure TFrm_Principal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

   if DM.Query_Atendimentoid_STATUS.AsInteger = 0 then
        begin
         // DBGrid1.Canvas.Brush.Color := $005151FF;
          DBGrid1.Canvas.Brush.Color := clred;
         // Dbgrid1.Columns[9].Color := $001130E1;
          DBGrid1.Canvas.font.Color := clWhite;
          DBGrid1.Canvas.FillRect(Rect);
        end
        else
     if DM.Query_Atendimentoid_STATUS.AsInteger = 1 then
        begin
          DBGrid1.Canvas.Brush.Color := RzStatusPane2.Color;

          DBGrid1.Canvas.font.Color := clWhite;

          DBGrid1.Canvas.FillRect(Rect);
        end
        else



     if DM.Query_Atendimentoid_STATUS.AsInteger = 2 then
        begin
       //   DBGrid1.Canvas.Brush.Color := clWhite;
          DBGrid1.Canvas.Brush.Color := $009C8254;

          DBGrid1.Canvas.font.Color := clWhite;
          DBGrid1.Canvas.FillRect(Rect);
        end
        else
     if DM.Query_Atendimentoid_STATUS.AsInteger = 3 then
        begin
          DBGrid1.Canvas.Brush.Color := clWhite;
          DBGrid1.Canvas.font.Color := $008F8F8F;
          DBGrid1.Canvas.FillRect(Rect);
        end
        else
     if DM.Query_Atendimentoid_STATUS.AsInteger = 4 then
        begin
          DBGrid1.Canvas.Brush.Color := $000698F9;
          DBGrid1.Canvas.FillRect(Rect);
        end
        else
     if DM.Query_Atendimentoid_STATUS.AsInteger = 9 then
        begin
          DBGrid1.Canvas.Brush.Color := clWhite;
          DBGrid1.Canvas.font.Color := $002D36F2;
          DBGrid1.Canvas.font.Style := Font.Style + [fsStrikeOut];
          DBGrid1.Canvas.FillRect(Rect);
        end;
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);













 if datacol =8 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);
   end;
    if datacol =9 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 1);
   end;
   if datacol =10 then
      begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 2);
   end;

  if DM.Query_Atendimentocanal.asinteger=1 then
     begin
     if datacol =0 then
         begin
                TDBGrid(Sender).Canvas.FillRect(Rect);
                ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 4)
         end


     end
     else
       if DM.Query_Atendimentocanal.asinteger=2 then
           begin
           if datacol =0 then
               begin
                      TDBGrid(Sender).Canvas.FillRect(Rect);
                      ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 5)
               end


           end
           else
            if DM.Query_Atendimentocanal.asinteger=3 then
               begin
               if datacol =0 then
                   begin
                          TDBGrid(Sender).Canvas.FillRect(Rect);
                          ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 6)
                   end


               end

           else
            if DM.Query_Atendimentocanal.asinteger=4 then
               begin
               if datacol =0 then
                   begin
                          TDBGrid(Sender).Canvas.FillRect(Rect);
                          ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 3)
                   end


               end;



end;

procedure TFrm_Principal.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if (DBGrid1.MouseCoord(X, Y).X in [1]) then
begin
     DBGrid1.ShowHint := False;
     DBGrid1.ShowHint := True;
     DBGrid1.Hint := 'Canal de Atendimento';
end
else
if (DBGrid1.MouseCoord(X, Y).X in [9]) then
begin
      DBGrid1.ShowHint := False;

     DBGrid1.Hint := Act_Alterar.Hint;
     DBGrid1.ShowHint := True;
end
else
if (DBGrid1.MouseCoord(X, Y).X in [10]) then
begin
      DBGrid1.ShowHint := False;

     DBGrid1.Hint := Act_Cancelar.Hint;
      DBGrid1.ShowHint := True;
end
else
if (DBGrid1.MouseCoord(X, Y).X in [11]) then
begin
      DBGrid1.ShowHint := False;

     DBGrid1.Hint := Act_Atender.Hint;
      DBGrid1.ShowHint := True;
end
else

     DBGrid1.ShowHint := False;


end;

procedure TFrm_Principal.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 {



if  NOW > Query_AgendamentoAGENDAMENTO.AsDateTime then
    DBGrid2.Canvas.Brush.Color := $00B5946A;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
    if datacol =3 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);
   end;
    if datacol =4 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 1);
   end;
   if datacol =5 then
      begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 2);
   end;

   Query_PrAgenda.Refresh;           }


//   DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure TFrm_Principal.DBPlannerMonthView1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
// DBDaySource1.Day:=DBPlannerMonthView1.Day;
 PlannerCalendar1.Day:= DBPlannerMonthView1.Day;
 PlannerCalendar1.MONTH:= DBPlannerMonthView1.MONTH;
 PlannerCalendar1.YEAR:= DBPlannerMonthView1.YEAR;
end;

procedure TFrm_Principal.DBPlannerMonthView1ItemSelect(Sender: TObject;
  Item: TPlannerItem);
    var

  I,_Controle: Integer;
    att: string;



begin

try
     { query_Agenda.Close;
      Query_agenda.Params[0].AsInteger:=Tab_Calendarid.AsInteger;
      Query_agenda.open;   }

     {  SearchByListView(IntToStr(Tab_Calendarid.AsInteger),ListView1);

        For _Controle := 0 To ListView1.Items.Count -1 Do
          Begin
           If Pos(IntToStr(Tab_Calendarid.AsInteger),ListView1.Items[_Controle].SubItems.Text) > 0 Then
              Begin
                 ListView1.ItemIndex := _Controle;
              End;
          End;  }
      DBPlannerMonthView1.Day:=DayOf(Query_CalendarDATA_HORA_AGENDA.AsDateTime);
      Query_Calendar_Email.Close;
      Query_Calendar_Email.Params[0].AsInteger:=Query_CalendarID.AsInteger;
      Query_Calendar_Email.Open();
    {

  Screen.Cursor := crHourGlass;
  if ListView1.ItemIndex >= 0 then
  begin

    li := ListView1.Items[ListView1.ItemIndex].Data;
    Label4.Caption:=li.Summary;
    label9.Caption:=FormatDateTime('dd/mm/yyyy',li.StartTime)+', '+FormatDateTime('hh:mm',li.StartTime)+' até '+FormatDateTime('hh:mm',li.EndTime);
    label10.Caption:=li.Location;
    Memo1.Lines.text:=li.Description;


    ListAttendees_2(li);

  end;
  Screen.Cursor := crDefault;

         }
except

end;
end;

procedure TFrm_Principal.FDEventAlerter1Alert(ASender: TFDCustomEventAlerter;
  const AEventName: string; const AArgument: Variant);
var
MP : TMediaPlayer;
Length : integer;

begin

If (AEventName = 'NOVO_ATENDIMENTO') then
     Begin


      Frm_Aviso:=TFrm_Aviso.Create(self);
      Frm_Aviso.Left:=cxDBVerticalGrid1.Left-70;

     // frm_aviso.Top:=Panel4.Top-110;
      Frm_Aviso.Show;
      DM.Query_Atendimento.Refresh;


 //     MP.FREE;
     End
end;

procedure TFrm_Principal.FillCalendar;
var
  I: Integer;
  isPrimary: string;
begin
  {AdvGCalendar1.GetCalendars();

  ComboBox1.Items.Clear;

  for I := 0 to AdvGCalendar1.Calendars.Count - 1 do
  begin
    if AdvGCalendar1.Calendars[I].Primary then
      isPrimary := ' (Primary)'
    else
      isPrimary := '';
    ComboBox1.AddItem(AdvGCalendar1.Calendars[I].Summary + isPrimary, AdvGCalendar1.Calendars[I]);
  end;
  ComboBox1.ItemIndex := 0;
end;

procedure TFrm_Principal.FillCalendarItemDetails;
var
  li: TGCalendarItem;
  I: Integer;
begin
  Screen.Cursor := crHourGlass;
  if ListView1.ItemIndex >= 0 then
  begin

    li := ListView1.Items[ListView1.ItemIndex].Data;
    Frm_Agendamento.edit2.text:=li.Summary;
    Frm_Agendamento.edit3.text:=li.Location;
    Frm_Agendamento.Memo1.Lines.text:=li.Description;
    Frm_Agendamento.RzDateTimeEdit1.Date:=StrToDate(FormatDateTime('dd/mm/yyyy',li.StartTime));
    Frm_Agendamento.RzDateTimeEdit2.Time:=StrToTime(FormatDateTime('hh:mm',li.StartTime));
    Frm_Agendamento.RzDateTimeEdit3.Time:=StrToTime(FormatDateTime('hh:mm',li.EndTime));
    Frm_Agendamento.Label2.Caption:=FormatDateTime('dddd", "dd" de "mmmm" de "yyyy',Frm_Agendamento.RzDateTimeEdit1.Date)+'  '+Frm_Agendamento.RzDateTimeEdit2.Text+'-'+Frm_Agendamento.RzDateTimeEdit3.Text;


    ListAttendees(li);

  end;
  Screen.Cursor := crDefault;



         }

end;

procedure TFrm_Principal.FillCalendarItems;
var
  I,id: Integer;

  li: TListItem;
  rem: string;
  data_filtro : TDateTime;
begin
 { Screen.Cursor := crHourGlass;
  if ComboBox1.ItemIndex >= 0 then
  begin
    gcal := (ComboBox1.Items.Objects[ComboBox1.ItemIndex] as TGCalendar);

     cbDefaultReminders.Items.Clear;
    for I := 0 to gcal.DefaultReminders.Count - 1 do
    begin
      case gcal.DefaultReminders[I].Method of
        rmPopup: rem := 'popup';
        rmEmail: rem := 'email';
        rmSMS: rem := 'sms';
      end;
      cbDefaultReminders.Items.Add(rem + ' ' + IntToStr(gcal.DefaultReminders[I].Minutes) + ' minutes')
    end;
    if cbDefaultReminders.Items.Count > 0 then
      cbDefaultReminders.ItemIndex := 0;


      data_filtro :=now;
   //   ShowMessage(DateTimeToStr(data_filtro-30));
   //   ShowMessage(DateTimeToStr(data_filtro));
     Tab_calendar.Open;


    AdvGCalendar1.GetCalendar(gcal.ID, data_filtro-30, data_filtro+30);
    ListView1.Items.Clear;


    Tab_calendar.open;
    if Tab_Calendar.RecordCount<>0 then
       begin
       Tab_calendar.first;
       while not Tab_calendar.eof do
          begin
           Tab_calendar.Delete;
           Tab_Calendar.Next;

          end;

       end;


    id:=1;
         ListView1.Items.Clear;
    for I := 0 to AdvGCalendar1.Items.Count - 1 do
    begin

       Tab_calendar.Insert;
       try
        Tab_Calendarid.AsInteger:=AdvGCalendar1.Items[I].Sequence;
       except
         Tab_Calendarid.AsInteger:=id;
       end;


       Tab_calendardata_ini.AsDateTime :=StrToDateTime(FormatDateTime('dd/mm/yyyy hh:nn', AdvGCalendar1.Items[I].StartTime));
       Tab_Calendardata_final.AsDateTime :=StrToDateTime(FormatDateTime('dd/mm/yyyy hh:nn', AdvGCalendar1.Items[I].EndTime));
       Tab_calendarcliente.asstring :=AdvGCalendar1.Items[I].Summary;
       Tab_calendardescricao.asstring :=AdvGCalendar1.Items[I].Description;


       inc(id);
      li := ListView1.Items.Add;
      li.Caption := FormatDateTime('dd/mm/yyyy hh:nn', AdvGCalendar1.Items[I].StartTime);
      li.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:nn', AdvGCalendar1.Items[I].EndTime));
      li.SubItems.Add(AdvGCalendar1.Items[I].Summary);
      li.SubItems.Add(AdvGCalendar1.Items[I].Description);
      li.SubItems.Add(IntToStr(AdvGCalendar1.Items[I].Sequence));
      li.Data := AdvGCalendar1.Items[I];

       Tab_calendar.Post;




    end;






  end;
  Screen.Cursor := crDefault;  }
end;

procedure TFrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
VAR
INI : TIniFile;
begin

      INI:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\conf.ini');
  if SplitView1.Opened = TRUE then

     INI.WriteString('PRINCIPAL','MENU','1')
     ELSE
     INI.WriteString('PRINCIPAL','MENU','0');
     INI.Free;



   Application.Terminate;
end;

procedure TFrm_Principal.FormCreate(Sender: TObject);
var
config : tinifile;
i : integer;

begin


   if  FileExists(ExtractFilePath(Application.ExeName)+'\config.dll') then
   BEGIN

     config := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.dll');
          dm:=tdm.Create(SELF);


    {      RegSel:=TRegistry.Create;

       if  config.ReadString('InfoTransporte', 'MULTBANCO', '')='2' then
      begin
             Frm_Conexao:=TFrm_Conexao.Create(self);
             Frm_Conexao.ShowModal;
             if frm_conexao.RzComboBox1.ItemIndex=0 then
                RegSel.OpenKey('\Software\coliseu\Database',True)
                else
               RegSel.OpenKey('\Software\coliseu\Conexoes\Conexao' + IntToStr(frm_conexao.RzComboBox1.ItemIndex),false);
             frm_conexao.destroy;

      end
      else  }

          if ParamStr(1) <> '' Then
         begin

         if (config.ReadString('0','SERVIDOR','')='LOCALHOST') OR (config.ReadString('0','SERVIDOR','')='127.0.0.0')  THEN
            dm.CONEXAO.Params.Values['DataBase'] := config.ReadString(ParamStr(1),'BD','')
            else
           dm.CONEXAO.Params.Values['DataBase'] := config.ReadString(ParamStr(1),'SERVIDOR','')+':'+config.ReadString(ParamStr(1),'BD','');
           dm.CONEXAO.Params.Values['user_name'] :=config.ReadString(ParamStr(1),'USER','');
           dm.CONEXAO.Params.Values['password'] :=Crypt('D',config.ReadString(ParamStr(1),'PASSWORD',''));





         //  FDConnection1.Params.Values['DataBase'] := RegSel.ReadString('BancoDados');
           END
           else
           BEGIN
           if (config.ReadString('0','SERVIDOR','')='LOCALHOST') OR (config.ReadString('0','SERVIDOR','')='127.0.0.0')  THEN
               dm.CONEXAO.Params.Values['DataBase'] := config.ReadString('0','BD','')
               else
                 dm.CONEXAO.Params.Values['DataBase'] := config.ReadString('0','SERVIDOR','')+':'+config.ReadString('0','BD','');

           dm.CONEXAO.Params.Values['user_name'] :=config.ReadString('0','USER','');
           dm.CONEXAO.Params.Values['password'] :=Crypt('D',config.ReadString('0','PASSWORD',''));
           END;


      {  if RegSel.ReadString('Password') = 'oka@4645' Then
           BEGIN
           dm.CONEXAO.Params.Add('password=oka@4645');
        //   FDConnection1.Params.Add('password=masterkey');
           Cdm.Conexao.Params.Add('password=oka@4645');
           END;}
        // ShowMessage(dm.CONEXAO.Params.Values['DataBase']);

        Try
          Query.Connection:=DM.Conexao;
          Query_PrAgenda.Connection:=DM.Conexao;
          Query_Agendamento.Connection:=DM.Conexao;
          //FDEventAlerter1.Connection:=DM.Conexao;
          dm.CONEXAO.Connected := True;

          dm.Query_Cli.Open();
          FDEventAlerter1.Active:=TRUE;

           conectaAgenda;
        except

          MessageDlg('Ocorreu um erro ao conectar com o Banco de Dados:'+#13+#10+
                     'Verifique as opções abaixo:'+#13+#10+''+#13+#10+'1) Se o computador for Servidor, entre em contato com o '+#13+#10+'Suporte'+#13+#10+
                     '2) Se o computador for terminal, verifique:'+#13+#10+
                     '    - Se o Servidor está ligado'+#13+#10+
                     '    - Se o Hub ou os cabos de rede estão conectados '+#13+#10+'corretamente.', mtWarning, [mbOK], 0);

          dm.CONEXAO.Connected := False;

          Application.Terminate;
         // Result := False;
          Exit;
        end;


       //    ShowMessage(dm.CONEXAO.Params.Values['password']);





   END;




 DM.Query_Config_Financeiro.Open();
IF  RzVersionInfo1.FileVersion <> DM.Query_Config_FinanceiroVERSAO_INFO.ASSTRING  THEN
    BEGIN
      MessageDlg('O SISTEMA ESTA DESATUALIZADO '+#13+'ATUALIZE A VERSÃO PARA UTILIZAR O SISTEMA '+#13+
      'VERSÃO DO SEU SISTEMA: '+RzVersionInfo1.FileVersion+#13+'VERSÃO MAIS RECENTE: '+DM.Query_Config_FinanceiroVERSAO_INFO.ASSTRING,mtError,[mbOK],0);
      Application.Terminate;
    END;




Frm_Login:=TFrm_Login.Create(self);
Frm_login.ShowModal;
conectaAgenda;


end;

procedure TFrm_Principal.FormShow(Sender: TObject);
var
query_carrega : TFDQuery;
INI : TINIFILE;
i : integer;
begin
           query_carrega:=TFDQuery.Create(self);
           query_carrega.Connection:=dm.Conexao;
           query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                   'where funcionarios.status=1 ORDER BY funcionarios.nome';
           query_carrega.open;

           query_carrega.first;


           RzComboBox2.Values.Clear;
           RzComboBox2.Items.Clear;
           RzComboBox2.Items.Add('TODOS');
           RzComboBox2.Values.Add('  ');
           while not query_carrega.eof do
           begin

              RzComboBox2.Values.add(' AND CONTROLE_ATENDIMENTOS.ID_RESPONSAVEL ='+IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              RzComboBox2.Items.add(query_carrega.FieldByName('nome').Asstring);

              query_carrega.next;
           end;

           Query_carrega.FREE;
RzComboBox1.ItemIndex := 6;
RzComboBox2.ItemIndex := 0;
RzDateTimeEdit1.Date:=date-2;
RzDateTimeEdit2.Date:=date;
//RxDBLookupCombo1.LookupSource:=dm.DS_Query_Cli;



Act_FiltrarExecute(SENDER);
//FDEventAlerter1.Active:=true;
caption:='COLISEU CONTROL '+RzVersionInfo1.FileVersion;

//if FileExists(ExtractFilePath(Application.ExeName)+'\conf.ini') then

  INI:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\conf.ini');
  if INI.ReadString('PRINCIPAL','MENU','') = '1' then
     SplitView1.Opened:=TRUE
     ELSE
     SplitView1.Opened:=FALSE;



     INI.Free;
//RzVersionInfo1.FilePath:='

DBPlannerMonthView1.Date:=NOW;
refresh_token;

  PlannerCalendar1.Day:= DBPlannerMonthView1.Day;
 PlannerCalendar1.MONTH:= DBPlannerMonthView1.MONTH;
 PlannerCalendar1.YEAR:= DBPlannerMonthView1.YEAR;

Frm_Principal.CAPTION:=DM.Conexao.Params.Values['DataBase'];


Query_Calendar.Open();
end;

procedure TFrm_Principal.gerahtml;
 var
 html :TStringList;
begin
try
DeleteFile(ExtractFilePath(Application.ExeName)+'chamado.html');
except

end;
    html:=TStringList.Create;
    html.Add('<HTML><BODY>' +
             '<img align="center" src="http://coliseusistemas.com.br/wp-content/uploads/2018/11/Logo01-1.png" alt="Trulli" width="200" height="70"/> ' +
             '<p><font face="verdana" color="black">Olá, '+cli+',</font></p> ' +
             '<p><font face="verdana" color="black">Segue abaixo abertura do chamado</font></p> ' +
             '<p><font face="verdana" color="black">_________________________________________________________</font></p>  ' +
             '<p><font face="verdana" color="black"><strong>DATA HORA   :</strong> '+data_hora+'</font></p> ' +
             '<p><font face="verdana" color="black"><strong>PROTOCOLO   :</strong> '+protocolo+'</font></p> ' +
             '<p><font face="verdana" color="black"><strong>STATUS      :</strong> '+status+'</font></p> ' +
             '<p><font face="verdana" color="black"><strong>RESPONSÁVEL :</strong> '+respon+'</font></p> ' +
             '<p><font face="verdana" color="black"><strong>CANAL DE ATENDIMENTO:</strong>'+canal+'</font></p> ' +
             '<p><font face="verdana" color="black"><strong>DESCRIÇÃO:</strong>'+DESC+'</font></p> ' +
             '<p><font face="verdana" color="black"><strong>ATENDIMENTO:</strong>'+ATENDIMENTO+'</font></p> ' +
             '<p>_________________________________________________________</p>  ' +
             '<img align="center" src="http://download.silenus.com.br/images/IMG-20200322-WA0001.jpg" alt="Trulli" width="380" height="600"/> 					  ' +
             '</body>  ' +
             '</html>');

    html.SaveToFile(ExtractFilePath(Application.ExeName)+'chamado.html');
    html.Free;
end;

procedure TFrm_Principal.Image10Click(Sender: TObject);
begin
  dm.Query_Atendimento.Close;
dm.Query_Atendimento.SQL.Text:='select * from controle_atendimentos ' +
                               ' where (cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:i)  ' +
                               '  and (cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:F) and controle_atendimentos.canal = 2 ' +
                               RzComboBox1.Value+' order by ID_STATUS, CONTROLE_ATENDIMENTOS.data_hora ';
dm.Query_Atendimento.params[0].AsDate:=RzDateTimeEdit1.Date;
dm.Query_Atendimento.params[1].AsDate:=RzDateTimeEdit2.Date;

dm.Query_Atendimento.open;
end;

procedure TFrm_Principal.Image11Click(Sender: TObject);
begin
Act_AlterarExecute(sender);
end;

procedure TFrm_Principal.Image12Click(Sender: TObject);
begin
Act_CancelarExecute(sender);
end;

procedure TFrm_Principal.Image13Click(Sender: TObject);
begin
Act_AtenderExecute(sender);
end;

procedure TFrm_Principal.Image14Click(Sender: TObject);
begin
if SplitView1.Opened = false then
   SplitView1.Opened := true
   else
   SplitView1.Opened := false;
end;

procedure TFrm_Principal.Image7Click(Sender: TObject);
begin
dm.Query_Atendimento.Close;
dm.Query_Atendimento.SQL.Text:='select * from controle_atendimentos ' +
                               ' where (cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:i)  ' +
                               '  and (cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:F) and controle_atendimentos.canal = 4 ' +
                               RzComboBox1.Value+' order by ID_STATUS, CONTROLE_ATENDIMENTOS.data_hora ';
dm.Query_Atendimento.params[0].AsDate:=RzDateTimeEdit1.Date;
dm.Query_Atendimento.params[1].AsDate:=RzDateTimeEdit2.Date;

dm.Query_Atendimento.open;
end;

procedure TFrm_Principal.Image8Click(Sender: TObject);
begin
dm.Query_Atendimento.Close;
dm.Query_Atendimento.SQL.Text:='select * from controle_atendimentos ' +
                               ' where (cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:i)  ' +
                               '  and (cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:F) and controle_atendimentos.canal = 1 ' +
                               RzComboBox1.Value+' order by ID_STATUS, CONTROLE_ATENDIMENTOS.data_hora ';
dm.Query_Atendimento.params[0].AsDate:=RzDateTimeEdit1.Date;
dm.Query_Atendimento.params[1].AsDate:=RzDateTimeEdit2.Date;
dm.Query_Atendimento.open;
end;

procedure TFrm_Principal.Image9Click(Sender: TObject);
begin
  dm.Query_Atendimento.Close;
dm.Query_Atendimento.SQL.Text:='select * from controle_atendimentos ' +
                               ' where (cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:i)  ' +
                               '  and (cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:F) and controle_atendimentos.canal = 3 ' +
                               RzComboBox1.Value+' order by ID_STATUS, CONTROLE_ATENDIMENTOS.data_hora ';
dm.Query_Atendimento.params[0].AsDate:=RzDateTimeEdit1.Date;
dm.Query_Atendimento.params[1].AsDate:=RzDateTimeEdit2.Date;

dm.Query_Atendimento.open;
end;


procedure TFrm_Principal.init;
begin

  FillCalendar;
  FillCalendarItems;
 // FillColors;
// ToggleControls;
end;

function TFrm_Principal.localizaregistro(busca: string): string;
begin
end;

procedure TFrm_Principal.Novo1Click(Sender: TObject);
var
h : integer;
hora,hora_2 : string;
begin
h:=StrToInt(FormatDateTime('hh',Time));
  if StrToInt(FormatDateTime('mm',Time))< 15 then
     begin

     hora := IntToStr(h)+':30';
     hora_2 := IntToStr(h+1)+':00'
     end
     else
     begin

     hora := IntToStr(h+1)+':00';
     hora_2:= IntToStr(h+1)+':30';
     end;




  Frm_Agendamento:=TFrm_Agendamento.Create(self);
  Frm_Agendamento.RzDateTimeEdit1.Date:=DBPlannerMonthView1.Date;
  Frm_Agendamento.RzDateTimeEdit2.Time:=StrToTime(hora);
  Frm_Agendamento.RzDateTimeEdit3.Time:=StrToTime(hora_2);
  Frm_Agendamento.Ag:=0;
  Frm_Agendamento.showmodal;
  Query_Calendar.Refresh;
end;

procedure TFrm_Principal.permissao;
var
query : tfdquery;
begin
        query := TFDQuery.Create(self);
        query.Connection:=dm.Conexao;


           query.close;
           query.sql.text:='SELECT COUNT(*) FROM acessos where id_modulo =10002'+' and id_grupo ='+IntToStr(grupo);
           query.open;

           if query.FieldByName('count').AsInteger <>0 then

              Act_CadastVersoes.Enabled:=true

              ELSE
              BEGIN
               Act_CadastVersoes.Enabled:=FALSE;
               RzToolbarButton5.Visible:=FALSE;
              END;



           query.close;
           query.sql.text:='SELECT COUNT(*) FROM acessos where id_modulo =10003'+' and id_grupo ='+IntToStr(grupo);
           query.open;

           if query.FieldByName('count').AsInteger <>0 then
              Act_Acessos.Enabled:=true
              ELSE
              BEGIN
              Act_Acessos.Enabled:=FALSE;
               RzToolbarButton6.Visible:=FALSE;
              END;



           query.close;
           query.sql.text:='SELECT COUNT(*) FROM acessos where id_modulo =10005'+' and id_grupo ='+IntToStr(grupo);
           query.open;

           if query.FieldByName('count').AsInteger <>0 then
             BEGIN
              Act_Contrato.Enabled:=true;
              Act_Config.Enabled:=TRUE;
             END
              ELSE
             BEGIN
              Act_Contrato.Enabled:=FALSE;
              Act_Config.Enabled:=FALSE;
              RzToolbarButton7.Visible:=FALSE;
              RzToolbarButton8.Visible:=FALSE;
             END;
              query.Free;

end;

procedure TFrm_Principal.PlannerCalendar1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  DBPlannerMonthView1.Day:=PlannerCalendar1.Day;
    DBPlannerMonthView1.Month:=PlannerCalendar1.Month;
    DBPlannerMonthView1.YEAR:=PlannerCalendar1.YEAR;
end;



procedure TFrm_Principal.Query_CalendarAfterOpen(DataSet: TDataSet);
begin
      Query_Calendar_Email.Close;
      Query_Calendar_Email.Params[0].AsInteger:=Query_CalendarID.AsInteger;
      Query_Calendar_Email.Open();
end;

procedure TFrm_Principal.Query_CalendarAfterRefresh(DataSet: TDataSet);
begin
Query_Calendar_Email.refresh;
end;

procedure TFrm_Principal.Query_recAfterRefresh(DataSet: TDataSet);
begin
 Screen.Cursor := crDefault;
end;

procedure TFrm_Principal.Query_recBeforeRefresh(DataSet: TDataSet);
begin
 Screen.Cursor := crDefault;
end;

procedure TFrm_Principal.RzLabel1Click(Sender: TObject);
begin
Act_FiltrarExecute(sender);


end;



procedure TFrm_Principal.TabSheet4Show(Sender: TObject);
begin
FillCalendarItems;
end;

procedure TFrm_Principal.Tab_CalendarAfterEdit(DataSet: TDataSet);
begin
//    ListView1.ItemIndex:=Tab_Calendar.RecordCount;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
if FRM_AVISO<>NIL then

Frm_Aviso.Close;
end;

procedure TFrm_Principal.refresh_token;
var
google : TInifile;
resposta : TStringList;
url,token,expires : string;

begin
google := TIniFile.Create(ExtractFilePath(ParamStr(0))+'google.ini');
resposta:=TStringList.Create;

      token:=google.ReadString('tokens','ACCESS_TOKEN','');

      resposta.Text:=NetHTTPClient1.Get('https://www.googleapis.com/oauth2/v1/tokeninfo?access_token='+token).ContentAsString();

    expires := getCamposJsonString(resposta.Text,'error');

    if expires = 'invalid_token' then
     begin


      url:='http://accounts.google.com/o/oauth2/token?';
      resposta.Clear;
      token:=google.ReadString('tokens','REFRESH_TOKEN','');
      resposta.Text:=NetHTTPClient1.Post(url+'client_id='+client_id+'&client_secret='+client_secret+'&refresh_token='+token+'&grant_type=refresh_token',resposta).ContentAsString();
      token :=getCamposJsonString(resposta.Text,'access_token');
      google.WriteString('tokens','ACCESS_TOKEN',token);


     end;
     google.Free;

end;

end.

