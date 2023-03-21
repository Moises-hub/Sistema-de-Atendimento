unit UFrm_Dash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzTabs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxorgchr, dxdborgc, Vcl.Grids, Vcl.DBGrids,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, VCLTee.TeeData, RzPanel,
  Vcl.ComCtrls, dxtree, dxdbtree, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, Vcl.StdCtrls,
  RzCmboBx, RzButton, Vcl.Mask, RzEdit, cxEdit, cxVGrid, cxDBVGrid, Vcl.DBCtrls,
  RzDBCmbo;

type
  TFrm_Dash = class(TForm)
    Query_Clientes: TFDQuery;
    Query_ClientesTOTAL: TIntegerField;
    Query_ClientesCLIENTE: TStringField;
    DS_QUERY_CLIENTE: TDataSource;
    Query_Clientes10: TFDQuery;
    DS_QUERY_CLIENTE10: TDataSource;
    RzPanel1: TRzPanel;
    Query_Solicitante: TFDQuery;
    Query_SolicitanteCOUNT: TIntegerField;
    Query_SolicitanteSOLICITANTE: TStringField;
    DS_QUERY_SOLICITANTE: TDataSource;
    Query_ClientesID_CLIENTE: TIntegerField;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    DBChart2: TDBChart;
    RzPanel4: TRzPanel;
    Query_Clientes10TOTAL: TIntegerField;
    Query_Clientes10CLIENTE: TStringField;
    Query_Clientes10ID_CLIENTE: TIntegerField;
    Query_Atendente: TFDQuery;
    Query_AtendenteCOUNT: TIntegerField;
    Query_AtendenteRESPONSAVEL: TStringField;
    DS_Query_Atendente: TDataSource;
    RzPanel5: TRzPanel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzBitBtn1: TRzBitBtn;
    Label1: TLabel;
    Query_Atend_Cliente: TFDQuery;
    Query_Atend_ClienteCOUNT: TIntegerField;
    Query_Atend_ClienteRESPONSAVEL: TStringField;
    DBGrid2: TDBGrid;
    DS_Query_Atend_Cliente: TDataSource;
    Query_Soma: TFDQuery;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    Query_SomaATENDIMENTOS: TIntegerField;
    Query_SomaATENDIMENTO_CANCELADOS: TIntegerField;
    DS_Query_Soma: TDataSource;
    cxDBVerticalGrid1ATENDIMENTOS: TcxDBEditorRow;
    cxDBVerticalGrid1ATENDIMENTO_CANCELADOS: TcxDBEditorRow;
    DBChart4: TDBChart;
    Series1: TBarSeries;
    Query_versao: TFDQuery;
    Query_versaoTOTAL: TIntegerField;
    Query_versaoNOME: TStringField;
    DS_Query_Versao: TDataSource;
    DBChart1: TDBChart;
    Series2: TPieSeries;
    Series3: TBarSeries;
    DBChart3: TDBChart;
    DBGrid1: TDBGrid;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    Series4: THorizBarSeries;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzDBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Dash: TFrm_Dash;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Dash.FormShow(Sender: TObject);
begin
RzDateTimeEdit1.Date:=date-30;
RzDateTimeEdit2.Date:=date;
RzBitBtn1Click(Sender);
end;

procedure TFrm_Dash.RzBitBtn1Click(Sender: TObject);
begin
try
      query_clientes.Close;
      query_clientes.Params[0].AsDate:=RzDateTimeEdit1.Date;
      query_clientes.Params[1].AsDate:=RzDateTimeEdit2.Date;
      query_clientes.Open();

      query_clientes10.Close;
      query_clientes10.Params[0].AsDate:=RzDateTimeEdit1.Date;
      query_clientes10.Params[1].AsDate:=RzDateTimeEdit2.Date;
      query_clientes10.Open();

      Query_Atendente.Close;
      Query_Atendente.Params[0].AsDate:=RzDateTimeEdit1.Date;
      Query_Atendente.Params[1].AsDate:=RzDateTimeEdit2.Date;
      Query_Atendente.Open();

      QUERY_SOMA.Close;
      QUERY_SOMA.Params[0].AsDate:=RzDateTimeEdit1.Date;
      QUERY_SOMA.Params[1].AsDate:=RzDateTimeEdit2.Date;
      QUERY_SOMA.Open();

      QUERY_VERSAO.Close;
      QUERY_VERSAO.Params[0].AsDate:=RzDateTimeEdit1.Date;
      QUERY_VERSAO.Params[1].AsDate:=RzDateTimeEdit2.Date;
      QUERY_VERSAO.Open();

      RzDBLookupComboBox1.InitKeyValue;
      RzDBLookupComboBox1Click(sender);
except

end;




end;

procedure TFrm_Dash.RzDBLookupComboBox1Click(Sender: TObject);
begin

Query_Solicitante.CLOSE;
Query_Solicitante.Params[0].AsInteger:=RzDBLookupComboBox1.KeyValue;
query_solicitante.Params[1].AsDate:=RzDateTimeEdit1.Date;
query_solicitante.Params[2].AsDate:=RzDateTimeEdit2.Date;
QUERY_SOLICITANTE.Open();

Query_Atend_Cliente.CLOSE;
Query_Atend_Cliente.Params[0].AsInteger:=RzDBLookupComboBox1.KeyValue;
Query_Atend_Cliente.Params[1].AsDate:=RzDateTimeEdit1.Date;
Query_Atend_Cliente.Params[2].AsDate:=RzDateTimeEdit2.Date;
Query_Atend_Cliente.Open();
end;

end.
