unit UFrm_Confirma_Recusa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.Mask, RzEdit, IdText,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdMessage, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld,  dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.DBCtrls, cxTextEdit, cxDBEdit, Vcl.ExtCtrls,
  cxCurrencyEdit;

type
  TFrm_Confirma_Recusa = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    Label10: TLabel;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label9: TLabel;
      procedure EnviarEmail;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    ST : INTEGER;
    STA : STRING;
  end;

var
  Frm_Confirma_Recusa: TFrm_Confirma_Recusa;

implementation

{$R *.dfm}

uses UFrm_Sugestoes, UDM, UFrm_Principal;

procedure TFrm_Confirma_Recusa.EnviarEmail;
var
 AuthSSL : TIdSSLIOHandlerSocketOpenSSL;
 IdSMTP    : TIdSMTP;
 IdMessage : TIdMessage;
  IdText : TIdText;
  q : tfdquery;

 TEXTO : TStringList;
 i : integer;

begin

  IdSMTP    := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  try
    IdSMTP.Host     :=  'smtp.bra.terra.com.br';
    IdSMTP.Port     := 587;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Username :=  'silenus';
    IdSMTP.Password := '45781389';
    //IdSMTP.UseTLS := utUseImplicitTLS;
  //  IdSMTP.AuthType := satDefault;



    try
    IdSMTP.Connect;



    IdMessage.From.Address := 'silenus@terra.com.br';
    IdMessage.ReplyTo.EMailAddresses := ' contato@coliseusistemas.com.br';
    IdMessage.Recipients.EMailAddresses  := Frm_Sugestao.Query_SugestoesEMAIL.AsString;
    IdMessage.Subject:='RE: '+Frm_Sugestao.Query_SugestoesTIPO_.AsString+' PROTOCOLO:'+Frm_Sugestao.Query_SugestoesPROTOCOLO.Text;
    IdMessage.ContentType := 'multipart/mixed';
    IdMessage.Encoding :=meMIME;
    IdText := TIdText.Create(IdMessage.MessageParts);

    TEXTO:=TStringList.Create;
    TEXTO.Add('DATA:'+DateTimeToStr(Frm_Sugestao.Query_SugestoesDATA.AsDateTime)+#13);
    TEXTO.Add('PROTOCOLO:'+Frm_Sugestao.Query_SugestoesPROTOCOLO.Text+#13);
    TEXTO.Add('STATUS:'+STA+#13);
    TEXTO.Add('VALOR:'+cxCurrencyEdit1.Text+#13);
    TEXTO.Add(Frm_Sugestao.Query_SugestoesTIPO_.AsString+': '+Frm_Sugestao.Query_SugestoesDESCRICAO.AsString+#13);
    TEXTO.Add('A/C Sr(a) '+Frm_Sugestao.Query_SugestoesRESPONSAVEL.AsString+#13);

    TEXTO.Add(Memo1.Lines.Text+#13);

     if RzDateTimeEdit1.Visible = true then
        Texto.Add(#13+'PREVISÃO DE CONCLUSÃO: '+DateToStr(RzDateTimeEdit1.AsDateTime)+#13);

         Texto.Add(#13);
         Texto.Add(#13);
         Texto.Add(#13);
         Texto.Add('Coliseu Sistemas');



            IdText.Body.Text:=Texto.Text;


    //
    // IdText.ContentType := 'text/html;';


    IdSMTP.Send(IdMessage);
    IdSMTP.Disconnect;




      dm.Conexao.Close;
      dm.Conexao.Open();
      close;

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

end;

procedure TFrm_Confirma_Recusa.FormShow(Sender: TObject);
begin
  if st = 2 then
    begin
    STA:='  APROVADO';
    Label5.Color:=clBlue;

    end
    ELSE
    begin
    STA:=' RECUSADO';
    Label5.Color:=clRed;
    end;
    Label5.caption:=sta;
end;

procedure TFrm_Confirma_Recusa.RzBitBtn1Click(Sender: TObject);
VAR
q : TFDQuery;
begin

      q:=TFDQuery.Create(nil);
      q.Connection:=dm.Conexao;
      q.SQL.Text:='update COL_SUGESTOES set status =:ST,descritivos_finais =:b ';
        if RzDateTimeEdit1.Visible = true then
         begin
           q.SQL.add(',col_sugestoes.aprovado_por =:E,data_prevista =:c,data_aprova = current_date, RESPONSAVEL_EMPRESA =:res,VALOR =:V');
           q.SQL.add('where  ID_COLSUGESTOES =:a ');
           q.Params[0].AsInteger:=ST;
           q.Params[1].AsString:=Memo1.Lines.Text;
           q.Params[2].AsInteger:=Frm_Principal.id_usu;
           q.Params[3].AsDate:= RzDateTimeEdit1.AsDateTime;
           q.Params[4].AsInteger:= DBLookupComboBox1.KeyValue;
           q.Params[5].VALUE:=cxCurrencyEdit1.Value;
           q.Params[6].AsInteger:=Frm_Sugestao.Query_SugestoesID_COLSUGESTOES.AsInteger;
         end
         ELSE
         BEGIN
          q.SQL.add('where  ID_COLSUGESTOES =:a ');
          q.Params[0].AsInteger:=ST;
          q.Params[1].AsString:=Memo1.Lines.Text;
          q.Params[2].AsInteger:=Frm_Sugestao.Query_SugestoesID_COLSUGESTOES.AsInteger;
         END;





      q.ExecSQL;

      q.Free;
EnviarEmail;
end;

procedure TFrm_Confirma_Recusa.RzBitBtn2Click(Sender: TObject);
begin
close;
end;

end.
