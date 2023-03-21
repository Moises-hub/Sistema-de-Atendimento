unit UFrm_Org_Notas;

interface

uses
  Winapi.Windows, Winapi.Messages,ShellApi, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCGrids,
  Vcl.ExtCtrls, RzPanel, dxGDIPlusClasses, Vcl.Buttons, RzDBGrid, RzLabel,
  RzDBLbl, RzButton, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.VCLUI.Wait,  cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMemo, cxRichEdit, cxDBRichEdit, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, RzGroupBar, System.ImageList, Vcl.ImgList;

type
  TFrm_Org_Notas = class(TForm)
    DS_Cartao: TDataSource;
    Tab_Org_Nota: TFDTable;
    Query_Cartao: TFDQuery;
    Query_CartaoID: TIntegerField;
    Query_CartaoID_CLIENTE: TIntegerField;
    Query_CartaoID_USUARIO: TIntegerField;
    Query_CartaoTITULO: TStringField;
    Query_CartaoNOME: TStringField;
    Query_CartaoNOME_FANTASIA: TStringField;
    Query_CartaoETIQUETA: TStringField;
    RzPanel1: TRzPanel;
    RzPanel3: TRzPanel;
    Tab_Org_NotaID: TIntegerField;
    Tab_Org_NotaID_CARTAO: TIntegerField;
    Tab_Org_NotaID_USUARIO: TIntegerField;
    Tab_Org_NotaDESCRICAO: TMemoField;
    Tab_Org_NotaDATA_HORA: TSQLTimeStampField;
    DS_Tab_Org_Nota: TDataSource;
    Tab_Anexo: TFDTable;
    DS_Tab_Anexo: TDataSource;
    Tab_AnexoID: TIntegerField;
    Tab_AnexoID_CARTAO: TIntegerField;
    Tab_AnexoID_USUARIO: TIntegerField;
    Tab_AnexoARQUIVO: TStringField;
    Tab_AnexoNOME: TStringField;
    RzPanel5: TRzPanel;
    OpenDialog1: TOpenDialog;
    ActionList1: TActionList;
    Act_Notas: TAction;
    Act_Anexar: TAction;
    Act_Salvar: TAction;
    Act_Cancel: TAction;
    ImageList1: TImageList;
    Query_CartaoUSUARIO: TStringField;
    Query_CartaoRESPONSAVEL_EM: TStringField;
    Tab_Org_NotaUSUARIO: TStringField;
    Tab_Org_NotaINIC: TStringField;
    Tab_Org_NotaDESCRITIVO: TBlobField;
    DBCtrlGrid1: TDBCtrlGrid;
    Tab_Notificao: TFDTable;
    Tab_NotificaoID: TIntegerField;
    Tab_NotificaoID_NOTA: TIntegerField;
    Tab_NotificaoDESCRICAO: TStringField;
    Tab_NotificaoID_USUARIO: TIntegerField;
    Tab_NotificaoSTATUS: TIntegerField;
    Tab_NotificaoID_CARTAO: TIntegerField;
    Image2: TImage;
    Label1: TLabel;
    RzPanel4: TRzPanel;
    RzPanel6: TRzPanel;
    cxDBRichEdit1: TcxDBRichEdit;
    RzDBGrid1: TRzDBGrid;
    RzPanel2: TRzPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    DBText6: TDBText;
    Panel1: TPanel;
    DBText1: TDBText;
    Label5: TLabel;
    RzPanel7: TRzPanel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label4: TLabel;
    DBText5: TDBText;
    procedure Query_CartaoAfterOpen(DataSet: TDataSet);
    procedure Act_AnexarExecute(Sender: TObject);
    procedure Act_NotasExecute(Sender: TObject);
    procedure Act_CancelExecute(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure RzDBGrid1DblClick(Sender: TObject);
    procedure Tab_Org_NotaAfterInsert(DataSet: TDataSet);
    procedure Tab_Org_NotaCalcFields(DataSet: TDataSet);
    procedure Tab_NotificaoAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Org_Notas: TFrm_Org_Notas;

implementation

{$R *.dfm}

uses UFrm_Organizer, UFrm_Projetos_Organizer, UDM, UFrm_Principal,
  UFrm_Org_ADDNota;

procedure TFrm_Org_Notas.Act_AnexarExecute(Sender: TObject);
var
servidor : string;
Quer : TFDQuery;
begin
OpenDialog1.Execute;
if length(OpenDialog1.FileName)<>0 then
begin
         //   ShellExecute(handle,'open',PChar(OpenDialog1.FileName), '','',SW_SHOWNORMAL);

          if length(dm.Conexao.Params.Values['Server'])<>0 then
             servidor :=dm.Conexao.Params.Values['Server']+'\'
             else
             servidor:='';

               quer:=tfdquery.Create(nil);
        quer.Connection:=dm.Conexao;
        quer.SQL.Text:='select gen_id(CONTROLE_QUADRO_CARTAOANEXO,1)from rdb$database';
        quer.Open();



          ForceDirectories('\\COLISEU\Anexos\'+IntToStr(quer.FieldByName('gen_id').AsInteger));
          CopyFile(PChar(OpenDialog1.FileName), PChar('\\COLISEU\Anexos\'+IntToStr(quer.FieldByName('gen_id').AsInteger)+'\'+ExtractFileName(OpenDialog1.FileName)), true);



        Tab_Anexo.Insert;
        Tab_AnexoID.AsInteger:=quer.FieldByName('gen_id').AsInteger;
        Tab_AnexoID_CARTAO.AsInteger:=Query_CartaoID.AsInteger;
        Tab_AnexoID_USUARIO.AsInteger:=Frm_Principal.id_usu;
     //   Tab_AnexoNOME.asstring:=ExtractFileName(OpenDialog1.FileName);
        Tab_AnexoARQUIVO.AsString:=ExtractFileName(OpenDialog1.FileName);
        Tab_Anexo.Post;
        Quer.Free;
end;

end;

procedure TFrm_Org_Notas.Act_CancelExecute(Sender: TObject);
begin
Tab_Org_Nota.CancelUpdates;
TAB_ANEXO.CancelUpdates;
Tab_Notificao.CancelUpdates;
close;
end;

procedure TFrm_Org_Notas.Act_NotasExecute(Sender: TObject);
var
Quer : TFDQuery;
begin
Frm_Org_ADDNota:=TFrm_Org_ADDNota.Create(self);

Frm_Org_ADDNota.cxRichEdit1.Clear;
Frm_Org_ADDNota.edit:=1;
Frm_Org_ADDNota.SpeedButton1.Visible:=true;
        quer:=tfdquery.Create(nil);
        quer.Connection:=dm.Conexao;
        quer.SQL.Text:='select gen_id(CONTROLE_QUADRO_CARTAONOTAS,1)from rdb$database';
        quer.Open();
        Tab_Org_Nota.Insert;
        Tab_Org_NotaID.AsInteger:=quer.FieldByName('gen_id').AsInteger;

        Tab_Org_NotaID_CARTAO.AsInteger:=Query_CartaoID.AsInteger;
        Tab_Org_NotaID_USUARIO.AsInteger:=Frm_Principal.id_usu;
        quer.close;
        quer.SQL.Text:='select funcionarios.nome from funcionarios where id_funcionario =:f';
        quer.Params[0].AsInteger:=Frm_Principal.id_usu;
        quer.Open();
        Tab_Org_NotaUSUARIO.AsString:=quer.FieldByName('nome').Asstring;
        Tab_Org_NotaDATA_HORA.AsDateTime:=StrToDateTime(FormatDateTime('dd"/"mm"/"yyyy" "hh":"mm":"ss',now));
        Quer.Free;
Frm_Org_ADDNota.ShowModal;

Frm_Org_ADDNota.Free;
end;

procedure TFrm_Org_Notas.Act_SalvarExecute(Sender: TObject);
begin
Tab_Org_Nota.ApplyUpdates;
TAB_ANEXO.ApplyUpdates;
Tab_Notificao.ApplyUpdates;
close;
end;

procedure TFrm_Org_Notas.DBCtrlGrid1DblClick(Sender: TObject);
begin
Frm_Org_ADDNota:=TFrm_Org_ADDNota.Create(self);
Frm_Org_ADDNota.edit:=1;


        Tab_Org_Nota.Edit;
        Tab_Org_NotaDATA_HORA.AsDateTime:=StrToDateTime(FormatDateTime('dd"/"mm"/"yyyy" "hh":"mm":"ss',now));

 Frm_Org_ADDNota.cxRichEdit1.Text:= cxDBRichEdit1.Text;
Frm_Org_ADDNota.ShowModal;

Frm_Org_ADDNota.Free;
end;

procedure TFrm_Org_Notas.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  if Tab_Org_Nota.RecordCount > 0 then
   BEGIN

   Label5.Caption:=copy(Tab_Org_NotaUSUARIO.AsString,1,1);
   if (Label5.Caption = 'A') OR (Label5.Caption = 'E') OR (Label5.Caption = 'I') OR (Label5.Caption = 'M')
       OR (Label5.Caption = 'Q') OR (Label5.Caption = 'U') OR (Label5.Caption = 'Y') then
      Label5.COLOR:=$00CC6600
      ELSE
    if (Label5.Caption = 'B') OR (Label5.Caption = 'F') OR (Label5.Caption = 'J') OR (Label5.Caption = 'N')
       OR (Label5.Caption = 'R') OR (Label5.Caption = 'V')  OR (Label5.Caption = 'Z') then
      Label5.COLOR:=$00FF8000
      ELSE
    if (Label5.Caption = 'C') OR (Label5.Caption = 'G') OR (Label5.Caption = 'K') OR (Label5.Caption = 'O')
       OR (Label5.Caption = 'S') OR (Label5.Caption = 'W') then
      Label5.COLOR:=$00800040
      ELSE
    if (Label5.Caption = 'D') OR (Label5.Caption = 'H') OR (Label5.Caption = 'L') OR (Label5.Caption = 'P')
       OR (Label5.Caption = 'T') OR (Label5.Caption = 'X') then
      Label5.COLOR:=$00400000
      ELSE
      Label5.COLOR:=$00CC6600;



     DBText6.Color:=Label5.COLOR;

      Label5.Visible:=TRUE;
      DBText6.VISIBLE:=TRUE;



   END
   ELSE
   BEGIN
    Label5.Visible:=FALSE;
    DBText6.VISIBLE:=FALSE;

   END;
end;

procedure TFrm_Org_Notas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
RzToolButton3.Click;
  {
      if (Tab_Org_Nota.State in[dsinsert,dsedit]) or (Tab_Anexo.State in[dsinsert,dsedit]) then
         begin
            case Application.MessageBox('deseja salvar as alterações?','COnfirmar',
                 MB_YESNOCANCEL+MB_DEFBUTTON1+MB_ICONQUESTION) of
              mryes : RzToolButton3.Click;
              Mrno  : RzToolButton4.Click;
              mrCancel : Action:=caNone;
            end;
         end;  }

end;

procedure TFrm_Org_Notas.FormShow(Sender: TObject);
var
NOTIFIC:TFDQUERY;
begin

     NOTIFIC:=TFDQUERY.Create(NIL);
     NOTIFIC.Connection:=DM.Conexao;
     NOTIFIC.SQL.Text:='UPDATE CONTROLE_QUADRO_NOTIFICACAO' +
                       ' SET STATUS = 1 ' +
                       ' WHERE  CONTROLE_QUADRO_NOTIFICACAO.id_usuario =:U AND '+
                       ' CONTROLE_QUADRO_NOTIFICACAO.id_cartao=:n AND STATUS = 0';

         NOTIFIC.Params[0].AsInteger:=Frm_Principal.id_usu;
         NOTIFIC.Params[1].AsInteger:=Tab_Org_NotaID_CARTAO.asinteger;
         NOTIFIC.ExecSQL;
end;

procedure TFrm_Org_Notas.Query_CartaoAfterOpen(DataSet: TDataSet);
begin
Tab_Org_Nota.Open();
TAB_ANEXO.Open();
Tab_Notificao.Open();
end;

procedure TFrm_Org_Notas.RzDBGrid1DblClick(Sender: TObject);
var
servidor : String;
begin


           if length(dm.Conexao.Params.Values['Server'])<>0 then
             servidor :=dm.Conexao.Params.Values['Server']+'\'
             else
             servidor:='';



    ShellExecute(handle,'open',PChar( PChar('\\COLISEU\Anexos\'+IntToStr(Tab_AnexoID.AsInteger)+'\'+Tab_AnexoARQUIVO.AsString)), '','',SW_SHOWNORMAL);
end;

procedure TFrm_Org_Notas.Tab_NotificaoAfterInsert(DataSet: TDataSet);
var
gen_query : tfdquery;
begin
     gen_query:=tfdquery.Create(nil);
     gen_query.Connection:=dm.Conexao;
     gen_query.Close;
     gen_query.SQL.Text:='select gen_id(CONTROLE_QUADRO_NOTIFICACAO,1) from rdb$database';
     gen_query.Open();

     Frm_Org_Notas.Tab_NotificaoID.AsInteger:=gen_query.FieldByName('gen_id').AsInteger;
     gen_query.free;
end;

procedure TFrm_Org_Notas.Tab_Org_NotaAfterInsert(DataSet: TDataSet);
begin
     Tab_Org_NotaID_USUARIO.AsInteger:=Frm_Principal.id_usu;
end;

procedure TFrm_Org_Notas.Tab_Org_NotaCalcFields(DataSet: TDataSet);
begin
Tab_Org_NotaINIC.ASSTRING:=COPY(Tab_Org_NotaDESCRICAO.AsString,1,1);
end;

end.
