unit UFrm_Org_Cartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxCore,
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
  dxSkinXmas2008Blue, RzButton, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxColorEdit, RzPanel, Vcl.Mask, RzEdit, RzCmboBx, dxDBColorEdit, RzGroupBar,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrm_Org_Cartao = class(TForm)
    RzPanel1: TRzPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    RzBitBtn1: TRzBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    DS_Cartao: TDataSource;
    DBEdit1: TDBEdit;
    Tab_Cartao: TFDTable;
    Panel10: TPanel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    Query_Clientes: TFDQuery;
    Query_ClientesID_CLIENTE: TIntegerField;
    DS_Clientes: TDataSource;
    Tab_CartaoID: TIntegerField;
    Tab_CartaoID_BLOCO: TIntegerField;
    Tab_CartaoID_CLIENTE: TIntegerField;
    Tab_CartaoID_USUARIO: TIntegerField;
    Tab_CartaoTITULO: TStringField;
    Tab_CartaoDATA_ABERTURA: TSQLTimeStampField;
    Tab_CartaoDESCRICAO: TMemoField;
    Tab_CartaoETIQUETA: TStringField;
    Tab_CartaoPREVISAO: TDateField;
    Query_ClientesNOME: TStringField;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Tab_CartaoPOSICAO: TIntegerField;
    Tab_CartaoRESPONSAVEL_EM: TStringField;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Tab_CartaoAfterInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    Var
    ID_Bloco : Integer;
  end;

var
  Frm_Org_Cartao: TFrm_Org_Cartao;

implementation

{$R *.dfm}

uses UDM, UClientes, UFrm_Principal;

{ TFrm_Org_Cartao }

procedure TFrm_Org_Cartao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=VK_F5 then
    RzBitBtn1Click(sender);
end;

procedure TFrm_Org_Cartao.FormShow(Sender: TObject);
begin
Query_Clientes.Open();
end;

procedure TFrm_Org_Cartao.RzBitBtn1Click(Sender: TObject);
begin
dm.Query_Clientes.open;
Frm_Clientes:=TFrm_Clientes.Create(SELF);
dm.Query_Clientes.refresh;
Frm_Clientes.ShowModal;
Tab_CartaoID_CLIENTE.AsInteger:= dm.Query_ClientesID_CLIENTE.value;
end;

procedure TFrm_Org_Cartao.RzBitBtn2Click(Sender: TObject);
begin
             if length(DBEdit1.Text)=0 then
                begin
                ShowMessage('O Titulo não pode ser nullo!');
                DBEdit1.SetFocus;
                end
                else
                if length(DBLookupComboBox1.Text)=0 then
                begin
                ShowMessage('Selecione o Cliente!');
                DBLookupComboBox1.SetFocus;
                end
                else
                begin
                  Tab_Cartao.Post;
                  Tab_Cartao.ApplyUpdates;
                  close;
                end;



end;

procedure TFrm_Org_Cartao.RzBitBtn3Click(Sender: TObject);
begin

Tab_Cartao.Cancel;
close;
end;

procedure TFrm_Org_Cartao.Tab_CartaoAfterInsert(DataSet: TDataSet);
var
gen : TFDQuery;
begin
   gen:=TFDQuery.Create(nil);
   gen.Connection:=dm.Conexao;
   gen.SQL.Text:='select gen_id(CONTROLE_QUADRO_CARTAO_ID,1)from rdb$database';
   gen.Open();
   Tab_CartaoID.AsInteger:=gen.FieldByName('gen_id').AsInteger;
   Tab_CartaoID_USUARIO.AsInteger:=Frm_Principal.id_usu;
 //  Tab_CartaoID_BLOCO.AsInteger:=ID_Bloco;
   Tab_CartaoDATA_ABERTURA.AsDateTime:=StrToDateTime(FormatDateTime('dd"/"mm"/"yyyy" "hh":"mm":"ss"',now));

end;

end.
