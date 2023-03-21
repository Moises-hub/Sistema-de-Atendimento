unit UFrm_LancaContrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.Mask, RzEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.ExtCtrls, RzPanel, RzCmboBx, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  RzLabel, dxGDIPlusClasses, RzButton, RzRadChk, System.ImageList, Vcl.ImgList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_LancaContrato = class(TForm)
    RzPanel2: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzPanel3: TRzPanel;
    DBGrid1: TDBGrid;
    RzGroupBox4: TRzGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    cxSpinEdit2: TcxSpinEdit;
    cxSpinEdit1: TcxSpinEdit;
    RzCheckBox8: TRzCheckBox;
    RzCheckBox9: TRzCheckBox;
    RzCheckBox10: TRzCheckBox;
    RzCheckBox11: TRzCheckBox;
    RzCheckBox12: TRzCheckBox;
    RzCheckBox13: TRzCheckBox;
    RzCheckBox14: TRzCheckBox;
    RzGroupBox2: TRzGroupBox;
    RzCheckBox1: TRzCheckBox;
    RzCheckBox2: TRzCheckBox;
    RzCheckBox3: TRzCheckBox;
    RzCheckBox4: TRzCheckBox;
    RzCheckBox5: TRzCheckBox;
    RzCheckBox6: TRzCheckBox;
    RzCheckBox7: TRzCheckBox;
    RzPanel1: TRzPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    RzPanel4: TRzPanel;
    Image2: TImage;
    ImageList1: TImageList;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    Panel1: TPanel;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    var
    id_cliente,id_contrato : integer;

  end;

var
  Frm_LancaContrato: TFrm_LancaContrato;

implementation

{$R *.dfm}

uses UDM, UFrm_Contrato_itens;

procedure TFrm_LancaContrato.FormShow(Sender: TObject);
begin
dm.Query_ContratoItens.Close;
dm.Query_ContratoItens.Params[0].AsInteger:=id_contrato;
dm.Query_ContratoItens.Open();

end;

procedure TFrm_LancaContrato.RzBitBtn1Click(Sender: TObject);
begin
Frm_Contrato_itens:=TFrm_Contrato_itens.Create(self);
dm.Query_ContratoItens.Insert;
              dm.Gen.Close;
              dm.Gen.SQL.Text:='select gen_id(GEN_CONTROLE_CONTRATO_ITEM,1) from RDB$DATABASE';
              dm.Gen.open;
              Frm_Contrato_itens.ID_LANCA:=DM.GenGEN_ID.AsInteger;
              Frm_Contrato_itens.RzDBLookupComboBox1.KeyValue:=1;

        dm.Query_Contas.close;
        dm.Query_Contas.params[0].AsInteger := Frm_LancaContrato.id_cliente;
        dm.Query_Contas.params[1].AsINTEGER := Frm_Contrato_itens.ID_LANCA;
        dm.Query_Contas.open;




Frm_Contrato_itens.ShowModal;
end;

procedure TFrm_LancaContrato.RzBitBtn2Click(Sender: TObject);
begin
Frm_Contrato_itens:=tFrm_Contrato_itens.Create(self);
dm.Query_ContratoItens.edit;
Frm_Contrato_itens.ID_LANCA:=dm.Query_ContratoItensID_ITENS.AsInteger;
Frm_Contrato_itens.RzComboBox1.Text:=dm.Query_ContratoItensDESCRICAO.AsString;
Frm_Contrato_itens.Edit1.Text:=dm.Query_ContratoItensN_PARCELA.AsString;
Frm_Contrato_itens.RzDBLookupComboBox1.KeyValue:=dm.Query_ContratoItensID_ESPECIE.Value;
Frm_Contrato_itens.RzComboBox2.Text:=IntToStr(dm.Query_ContratoItensDIA_VENCIMENTO.AsInteger);
Frm_Contrato_itens.cxCalcEdit1.Value:=dm.Query_ContratoItensVALOR.AsFloat;
        dm.Query_Contas.close;
        dm.Query_Contas.params[0].AsInteger := Frm_LancaContrato.id_cliente;
        dm.Query_Contas.params[1].AsINTEGER := dm.Query_ContratoItensID_ITENS.AsInteger;
        dm.Query_Contas.open;

Frm_Contrato_itens.ShowModal;
end;

procedure TFrm_LancaContrato.RzBitBtn3Click(Sender: TObject);
var
query_del :tfdquery;
begin

            query_del:=TFDQuery.Create(self);
            query_del.Connection:=dm.Conexao;
            query_del.SQL.Text:='delete from contas ' +
                                'where id_cliente =:f and ID_CONTROLELANCA =:e ';
            query_del.params[0].AsInteger:=Frm_LancaContrato.id_cliente;
            query_del.params[1].AsInteger:= dm.Query_ContratoItensID_ITENS.AsInteger;
             query_del.ExecSQL;
           dm.Query_ContratoItens.Delete;
           query_del.Free;
end;

procedure TFrm_LancaContrato.RzBitBtn4Click(Sender: TObject);
begin
 dm.Query_ContratoItens.cancelUpdates;
 if dm.Query_Contas.Active = true then
DM.Query_Contas.cancelUpdates;

close;
end;

procedure TFrm_LancaContrato.RzBitBtn5Click(Sender: TObject);
begin
                                  dm.Query_Contrato.EDIT;
                                  dm.Query_ContratoID_CONTRATO.AsInteger:=id_contrato;
                                  dm.Query_Contratodata_emissao.AsDateTime:=now;
                                  dm.Query_ContratoID_CENTROCUSTO.AsInteger:=1;
                                  dm.Query_ContratoID_CLIENTE.AsInteger:=id_cliente;
                                  dm.Query_ContratoVISITAS.AsInteger:=StrToInt(Edit1.Text);
                                  dm.Query_ContratoPERC_MENS.AsString:=Edit4.Text;
                                  dm.Query_Contrato.post;


                                  dm.Query_ContratoItens.ApplyUpdates(0);

                                  if DM.Query_Contas.Active = true then
                                     DM.Query_Contas.ApplyUpdates(0);

                                   DM.Proc_Cliente.Params[0].ASINTEGER:=id_cliente;
                                   DM.Proc_Cliente.Params[1].asstring:=edit2.Text;
                                   DM.Proc_Cliente.Params[3].ASINTEGER:=2;

                                if  Frm_LancaContrato.RzCheckBox1.Checked = TRUE then
                                   DM.Proc_Cliente.Params[22].asinteger:= 1
                                   ELSE
                                   DM.Proc_Cliente.Params[22].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox2.Checked = TRUE then
                                   DM.Proc_Cliente.Params[23].asinteger:= 1
                                   ELSE
                                   DM.Proc_Cliente.Params[23].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox3.Checked = TRUE then
                                   DM.Proc_Cliente.Params[24].asinteger:= 1
                                   ELSE
                                   DM.Proc_Cliente.Params[24].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox4.Checked = true then
                                   DM.Proc_Cliente.Params[25].asinteger:= 1
                                   ELSE
                                   DM.Proc_Cliente.Params[25].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox5.Checked = true then
                                   DM.Proc_Cliente.Params[26].asinteger:= 1
                                   ELSE
                                   DM.Proc_Cliente.Params[26].asinteger:=0;

                                if Frm_LancaContrato.RzCheckBox6.Checked = TRUE then
                                   DM.Proc_Cliente.Params[27].asinteger:= 1
                                   ELSE
                                   DM.Proc_Cliente.Params[27].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox7.Checked = TRUE then
                                   DM.Proc_Cliente.Params[28].asinteger:= 1
                                   ELSE
                                   DM.Proc_Cliente.Params[28].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox8.Checked = TRUE then
                                    DM.Proc_Cliente.Params[15].asinteger := 1
                                   ELSE
                                    DM.Proc_Cliente.Params[15].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox9.Checked = true then
                                    DM.Proc_Cliente.Params[16].asinteger:= 1
                                   ELSE
                                    DM.Proc_Cliente.Params[16].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox10.Checked = true then
                                    DM.Proc_Cliente.Params[17].asinteger:= 1
                                   ELSE
                                    DM.Proc_Cliente.Params[17].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox11.Checked = TRUE then
                                    DM.Proc_Cliente.Params[18].asinteger:= 1
                                   ELSE
                                    DM.Proc_Cliente.Params[18].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox12.Checked = TRUE then
                                    DM.Proc_Cliente.Params[19].asinteger:= 1
                                   ELSE
                                    DM.Proc_Cliente.Params[19].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox13.Checked = TRUE then
                                    DM.Proc_Cliente.Params[20].asinteger:= 1
                                   ELSE
                                    DM.Proc_Cliente.Params[20].asinteger:= 0;

                                if Frm_LancaContrato.RzCheckBox14.Checked = TRUE then
                                    DM.Proc_Cliente.Params[21].asinteger:= 1
                                   ELSE
                                    DM.Proc_Cliente.Params[21].asinteger:= 0;

                                   DM.Proc_Cliente.Params[28].asinteger:=StrToInt(cxSpinEdit1.Text);
                                   DM.Proc_Cliente.Params[29].asinteger:=StrToInt(cxSpinEdit2.Text);
                                   DM.Proc_Cliente.ExecProc;

close;
end;

end.
