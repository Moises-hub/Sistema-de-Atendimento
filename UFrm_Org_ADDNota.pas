unit UFrm_Org_ADDNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, Vcl.Buttons,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator,
  cxDBData, dxRibbonSkins, dxRibbonCustomizationForm, dxBarApplicationMenu,
  dxRibbon, dxRibbonRadialMenu, dxBar, cxClasses, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxGridCustomPopupMenu, cxGridPopupMenu, Vcl.ComCtrls, cxContainer, cxTextEdit,
  cxMemo, cxRichEdit;

type
  TFrm_Org_ADDNota = class(TForm)
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    SpeedButton1: TSpeedButton;
    cxRichEdit1: TcxRichEdit;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
      var
      edit : integer;
  end;

var
  Frm_Org_ADDNota: TFrm_Org_ADDNota;

implementation

{$R *.dfm}

uses UFrm_Org_Notas, UFrm_Marca_Funcionario, UFrm_Organizer, UDM,
  UFrm_Implantacao, UFrm_Quadro_Implantacao, UFrm_Principal;



procedure TFrm_Org_ADDNota.FormClick(Sender: TObject);
begin
if Frm_Marca_Funcionario <> nil then
   Frm_Marca_Funcionario.Close;

end;

procedure TFrm_Org_ADDNota.RzBitBtn1Click(Sender: TObject);
var M: TMemoryStream;
    salva : TFDQuery;
begin
  M := TMemoryStream.Create;



     if edit=1 then
        begin
         Frm_Org_Notas.Tab_Org_NotaDESCRICAO.Text:=cxRichEdit1.Lines.Text;
         Frm_Org_Notas.Tab_Org_Nota.post;
         M.Free;
         Frm_Org_Notas.Tab_Org_Nota.first;
        end
        else
     if edit=2 then
        begin
            salva := TFDQuery.Create(nil);
            salva.Connection:=dm.Conexao;
            salva.SQL.Text:='insert into CONTROLE_IMPLANTACAONOTAS(ID,id_cartao,id_usuario,descricao,data_hora) ' +
                            '               values((select gen_id(CONTROLE_IMPLANTACAONOTAS,1) from rdb$database),' +
                            '                       :A,:B,:c,current_timestamp)';

            salva.params[0].AsInteger:=Frm_Quadro_Implantacao.Query_QuadroID.AsInteger;
            salva.Params[1].AsInteger:=Frm_Principal.id_usu;
            salva.Params[2].ASSTRING:=cxRichEdit1.Text;
            salva.ExecSQL;
            salva.Free;
        end
        else
         if edit=3 then
        begin
            salva := TFDQuery.Create(nil);
            salva.Connection:=dm.Conexao;
            salva.SQL.Text:='update CONTROLE_IMPLANTACAONOTAS ' +
                            '        set descricao =:d where id =:i ';

            salva.Params[0].ASSTRING:=cxRichEdit1.Text;
            salva.params[1].AsInteger:=Frm_Org_Notas.Tab_Org_NotaID.AsInteger;

            salva.ExecSQL;
            salva.Free;

        end;


end;

procedure TFrm_Org_ADDNota.RzBitBtn2Click(Sender: TObject);
begin
     if edit=1 then
        Frm_Org_Notas.Tab_Org_Nota.cancel;
end;

procedure TFrm_Org_ADDNota.SpeedButton1Click(Sender: TObject);
begin
Frm_Marca_Funcionario:=TFrm_Marca_Funcionario.Create(nil);



Frm_Marca_Funcionario.fdquery1.close;
Frm_Marca_Funcionario.fdquery1.Params[0].AsInteger:= Frm_Organizer.Query_QuadroID_QUADRO.AsInteger;
Frm_Marca_Funcionario.fdquery1.open;




Frm_Marca_Funcionario.Showmodal;
Frm_Marca_Funcionario:=nil;
end;

end.

