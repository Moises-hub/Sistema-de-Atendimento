unit UFrm_Cli_Atend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  RzDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, RzPanel, RzButton, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzCmboBx,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
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
  dxSkinXmas2008Blue, cxMemo, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, Vcl.DBCGrids, RzLabel, RzDBLbl;

type
  TFrm_Cli_Atend = class(TForm)
    Query_atend: TFDQuery;
    DS_Query_atend: TDataSource;
    RzPanel1: TRzPanel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label2: TLabel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzBitBtn1: TRzBitBtn;
    Query_Ocorrencia: TFDQuery;
    DS_Query_Ocorrencia: TDataSource;
    Query_OcorrenciaID: TIntegerField;
    Query_OcorrenciaID_ATENDIMENTO: TIntegerField;
    Query_OcorrenciaSOFTWARE: TStringField;
    Query_OcorrenciaDESCRICAO: TStringField;
    Query_OcorrenciaDETALHE: TMemoField;
    Query_OcorrenciaTIPO: TStringField;
    Query_OcorrenciaVERSAO: TStringField;
    Query_OcorrenciaDATA_HORA: TSQLTimeStampField;
    Query_OcorrenciaRESPONSAVEL: TStringField;
    Query_OcorrenciaID_RESPONSAVEL: TIntegerField;
    Query_OcorrenciaID_CLIENTE: TIntegerField;
    Query_OcorrenciaSOLICITANTE: TStringField;
    Query_atendID: TIntegerField;
    Query_atendID_ATENDIMENTO: TIntegerField;
    Query_atendSOFTWARE: TStringField;
    Query_atendDESCRICAO: TStringField;
    Query_atendDETALHE: TMemoField;
    Query_atendTIPO: TStringField;
    Query_atendVERSAO: TStringField;
    Query_atendDATA_HORA: TSQLTimeStampField;
    Query_atendRESPONSAVEL: TStringField;
    Query_atendID_RESPONSAVEL: TIntegerField;
    Query_atendID_CLIENTE: TIntegerField;
    Query_atendSOLICITANTE: TStringField;
    Query_atendID_STATUS: TIntegerField;
    Query_atendSOLICITANTE_1: TStringField;
    Query_atendCLIENTE: TStringField;
    Query_atendPROTOCOLO: TStringField;
    DBCtrlGrid1: TDBCtrlGrid;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label7: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label9: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    RzDBLabel1: TRzDBLabel;
    Query_atendATE_RESPONSAVEL: TStringField;
    Query_atendSTATUS: TStringField;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cli_Atend: TFrm_Cli_Atend;

implementation

{$R *.dfm}

uses UDM, UFrm_Principal;

procedure TFrm_Cli_Atend.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
    if frm_cli_Atend.Query_atendID_STATUS.AsInteger = 0 then
        begin
         // DBGrid1.Canvas.Brush.Color := $005151FF;
          RzDBLabel1.Color := clred;
         // Dbgrid1.Columns[9].Color := $001130E1;

        end
        else
     if frm_cli_Atend.Query_atendID_STATUS.AsInteger = 1 then
        begin
           RzDBLabel1.Color  := frm_principal.RzStatusPane2.Color;


        end
        else



     if frm_cli_Atend.Query_atendID_STATUS.AsInteger = 2 then
        begin
       //   DBGrid1.Canvas.Brush.Color := clWhite;
           RzDBLabel1.Color := $009C8254;

           RzDBLabel1.font.Color :=  clWhite;

        end
        else
     if frm_cli_Atend.Query_atendID_STATUS.AsInteger = 3 then
        begin
          RzDBLabel1.Color := clWhite;
          RzDBLabel1.font.Color := $008F8F8F;

        end
        else
     if frm_cli_Atend.Query_atendID_STATUS.AsInteger = 4 then
        begin
          RzDBLabel1.Color := $000698F9;

        end
        else
     if frm_cli_Atend.Query_atendID_STATUS.AsInteger = 9 then
        begin
          RzDBLabel1.Color := clWhite;
          RzDBLabel1.font.Color := $002D36F2;

        end;



end;

procedure TFrm_Cli_Atend.FormShow(Sender: TObject);
begin
 RzDateTimeEdit1.Date := now - 30;
 RzDateTimeEdit2.Date := now;
 RzBitBtn1Click(sender);
end;

procedure TFrm_Cli_Atend.RzBitBtn1Click(Sender: TObject);
begin
Query_atend.Close;
Query_atend.Params[0].asinteger:=dm.Query_ClientesID_CLIENTE.asinteger;
Query_atend.Params[1].AsDate:=RzDateTimeEdit1.Date;
Query_atend.Params[2].AsDate:=RzDateTimeEdit2.Date;
Query_atend.open;




end;

end.
