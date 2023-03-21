unit UFrm_VSugestoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzButton, Vcl.StdCtrls,
  Vcl.DBCtrls, cxTextEdit, cxDBEdit, Vcl.ExtCtrls, RzPanel, dxGDIPlusClasses,
  System.Actions, Vcl.ActnList;

type
  TFrm_VSugestoes = class(TForm)
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    FDQuery1: TFDQuery;
    cxDBTextEdit9: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label11: TLabel;
    DBText1: TDBText;
    Image1: TImage;
    Image2: TImage;
    ActionList1: TActionList;
    Act_EmAnalize: TAction;
    Act_Aprovado: TAction;
    Act_Recusado: TAction;
    Label12: TLabel;
    Label13: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    DBMemo2: TDBMemo;
    Label14: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label16: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    Label18: TLabel;
    procedure RzBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_AprovadoExecute(Sender: TObject);
    procedure Act_RecusadoExecute(Sender: TObject);
    procedure Act_EmAnalizeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_VSugestoes: TFrm_VSugestoes;

implementation

{$R *.dfm}

uses UFrm_Sugestoes, UDM, UFrm_Confirma_Recusa, UFrm_Principal,
  USugestao_Responsavel;

procedure TFrm_VSugestoes.Act_AprovadoExecute(Sender: TObject);
begin
       if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger <> 2 then
         BEGIN

          Frm_Confirma_Recusa:=TFrm_Confirma_Recusa.Create(self);
          Frm_Confirma_Recusa.RzDateTimeEdit1.Date:=now+15;
          Frm_Confirma_Recusa.DBLookupComboBox1.KeyValue:=Frm_Principal.id_usu;
          Frm_Confirma_Recusa.ST := 2;
          Frm_Confirma_Recusa.ShowModal;
          Frm_Confirma_Recusa.Free;
          close;
         END;
end;

procedure TFrm_VSugestoes.Act_EmAnalizeExecute(Sender: TObject);
var
q : tfdquery;
begin
    if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger <> 1 then
         BEGIN
              q:=TFDQuery.Create(nil);
              q.Connection:=dm.Conexao;
              q.SQL.Text:='update COL_SUGESTOES  set status = 1  ' +
                          'where  ID_COLSUGESTOES =:a ';
              q.Params[0].AsInteger:=Frm_Sugestao.Query_SugestoesID_COLSUGESTOES.AsInteger;
              q.ExecSQL;
              q.Free;
         END;
end;

procedure TFrm_VSugestoes.Act_RecusadoExecute(Sender: TObject);
begin


          Frm_Confirma_Recusa:=TFrm_Confirma_Recusa.Create(self);
          Frm_Confirma_Recusa.ST := 3;


          Frm_Confirma_Recusa.RzDateTimeEdit1.Visible:=false;
          Frm_Confirma_Recusa.Label2.Visible:=false;
          Frm_Confirma_Recusa.Label7.Visible:=false;
          Frm_Confirma_Recusa.Label9.Visible:=false;
          Frm_Confirma_Recusa.DBLookupComboBox1.Visible:=false;
          Frm_Confirma_Recusa.cxCurrencyEdit1.Visible:=false;

          Frm_Confirma_Recusa.ShowModal;
          Frm_Confirma_Recusa.Free;
          close;

end;

procedure TFrm_VSugestoes.FormShow(Sender: TObject);
begin
if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger = 2 then
   cxDBTextEdit10.Style.Color:=clBlue
   ELSE
if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger = 3 then
   cxDBTextEdit10.Style.Color:=clRED
   ELSE
   if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger = 1 then
   cxDBTextEdit10.Style.Color:=clSILVER;


   if Frm_Sugestao.Query_SugestoesTIPO.AsInteger = 1 then
      BEGIN
        Image1.Visible:=TRUE;
        Image2.Visible:=FALSE;
      END
      ELSE
       if Frm_Sugestao.Query_SugestoesTIPO.AsInteger = 2 then
      BEGIN
        Image2.Visible:=TRUE;
        Image1.Visible:=FALSE;
      END;

end;

procedure TFrm_VSugestoes.RzBitBtn3Click(Sender: TObject);
begin
close;
end;

end.
