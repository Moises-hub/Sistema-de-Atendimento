unit UFrm_Contrato_itens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, RzCmboBx, RzLabel, RzButton, Vcl.Mask,
  Vcl.DBCtrls, RzDBCmbo, DosMove,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxGDIPlusClasses, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc;

type
  TFrm_Contrato_itens = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    DBGrid1: TDBGrid;
    RzComboBox1: TRzComboBox;
    Edit1: TEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzBitBtn1: TRzBitBtn;
    RzPanel3: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    RzComboBox2: TRzComboBox;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzBitBtn3: TRzBitBtn;
    DosMove1: TDosMove;
    Image1: TImage;
    Label1: TLabel;
    Query_Especie: TFDQuery;
    Query_EspecieID_ESPECIE: TIntegerField;
    Query_EspecieDESCRICAO: TStringField;
    DS_Query_Especie: TDataSource;
    cxCalcEdit1: TcxCalcEdit;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    VAR
    ID_LANCA : INTEGER;
  end;

var
  Frm_Contrato_itens: TFrm_Contrato_itens;

implementation

{$R *.dfm}

uses UDM, UFrm_LancaContrato;

procedure TFrm_Contrato_itens.FormShow(Sender: TObject);

begin
  dm.Query_Config_Financeiro.Close;
  dm.Query_Config_Financeiro.Open();
  RzComboBox1.ValueS.Clear;

  if LENGTH(IntToStr(DM.Query_Config_FinanceiroID_PLANO_IMPLANTA.AsInteger))<>0 then
  RzComboBox1.Values.Add(IntToStr(DM.Query_Config_FinanceiroID_PLANO_IMPLANTA.AsInteger))
  ELSE
  RzComboBox1.Values.Add('0');

  if LENGTH(IntToStr(DM.Query_Config_FinanceiroID_PLANO_MANUTENCAO.AsInteger))<>0 then
  RzComboBox1.Values.Add(IntToStr(DM.Query_Config_FinanceiroID_PLANO_MANUTENCAO.AsInteger))
  ELSE
  RzComboBox1.Values.Add('0');

  if LENGTH(IntToStr(DM.Query_Config_FinanceiroID_PLANO_MODULOS.AsInteger))<>0 then
  RzComboBox1.Values.Add(IntToStr(DM.Query_Config_FinanceiroID_PLANO_MODULOS.AsInteger))
  ELSE
  RzComboBox1.Values.Add('0');


  if LENGTH(IntToStr(DM.Query_Config_FinanceiroID_PLANO_VISITAS.AsInteger))<>0 then
  RzComboBox1.Values.Add(IntToStr(DM.Query_Config_FinanceiroID_PLANO_VISITAS.AsInteger))
  ELSE
  RzComboBox1.Values.Add('0');
end;

procedure TFrm_Contrato_itens.RzBitBtn1Click(Sender: TObject);
var
i,id_conta :integer;
data : tdate;
query_del :tfdquery;
begin
             DM.Query_Contas.CancelUpdates;
            query_del:=TFDQuery.Create(self);
            query_del.Connection:=dm.Conexao;
            query_del.SQL.Text:='delete from contas ' +
                                'where id_cliente =:f and ID_CONTROLELANCA =:e ';
            query_del.params[0].AsInteger:=Frm_LancaContrato.id_cliente;
            query_del.params[1].AsInteger:= ID_LANCA;
             query_del.ExecSQL;

                DM.Query_Contas.ApplyUpdates(0);
              DM.Query_Contas.close;
              DM.Query_Contas.open;

       if StrToInt(FormatDateTime('dd',now))>= StrToInt(RzComboBox2.Text) then
          data:=IncMonth(StrToDate(RzComboBox2.Text+'/'+FormatDateTime('mm"/"yyyy',now)))
          else
          data:=StrToDate(RzComboBox2.Text+'/'+FormatDateTime('mm"/"yyyy',now));




      for I := 1 to StrToInt(Edit1.Text) do
        begin
           DM.Query_Contas.insert;
            DM.Gen.Close;
            DM.Gen.SQL.Text:='select gen_id(GEN_CONTROLE_CONTRATO_ID,1) from RDB$DATABASE';
            DM.Gen.open;
           DM.Query_Contas.FieldByName('ID_CONTA').Value := DM.GenGEN_ID.AsInteger;
           DM.Query_Contas.FieldByName('ID_CONTROLELANCA').Value := ID_LANCA;
           DM.Query_Contas.FieldByName('DESCRICAO').Value := Frm_LancaContrato.edit2.Text+' ('+RzComboBox1.Text+')';
           DM.Query_Contas.FieldByName('ID_CLIENTE').Value := Frm_LancaContrato.id_cliente;
           DM.Query_Contas.FieldByName('DATA_EMISSAO').Value := now;
           DM.Query_Contas.FieldByName('DATA_VENCIMENTO').Value := IncMonth(data);
           DM.Query_Contas.FieldByName('N_DOC').Value :=IntToStr(Frm_LancaContrato.id_contrato);
           if  length(IntToStr(dm.Query_Config_FinanceiroID_CENTRO_CUSTO.asinteger))<>0  then
               DM.Query_Contas.FieldByName('ID_DEPTO').Value := dm.Query_Config_FinanceiroID_CENTRO_CUSTO.asinteger
               else
               DM.Query_Contas.FieldByName('ID_DEPTO').Value := 1;
               DM.Query_Contas.FieldByName('ID_PLANO').ASINTEGER :=StrToInt(RzComboBox1.Value);


           DM.Query_Contas.FieldByName('ID_PORTADOR').Value := 1;
           DM.Query_Contas.FieldByName('TIPO').Value := 1;
           DM.Query_Contas.FieldByName('PARCELA').Value :=UpperCase(FormatDateTime('mmm"/"yyyy',DM.Query_Contas.FieldByName('DATA_VENCIMENTO').AsDateTime));
           DM.Query_Contas.FieldByName('OBS').Value := RzComboBox1.Text;
           DM.Query_Contas.FieldByName('VALOR').AsFloat := round(StrToFloat(cxCalcEdit1.Text)/StrToFloat(Edit1.Text));
           DM.Query_Contas.FieldByName('DC').Value := 1;
           DM.Query_Contas.FieldByName('BAIXA').Value := 0;
           DM.Query_Contas.post;

           data:= DM.Query_Contas.FieldByName('DATA_VENCIMENTO').AsDateTime;
        end;






end;

procedure TFrm_Contrato_itens.RzBitBtn2Click(Sender: TObject);
begin



          DM.Query_Contas.First;
          while not DM.Query_Contas.eof do
            begin
               DM.Proc_Lanca_Contas.ParamByName('ID_CONTA').Value :=  DM.Query_Contas.FieldByName('ID_CONTA').Value;
               DM.Proc_Lanca_Contas.ParamByName('ID_CONTROLELANCA').Value := DM.Query_Contas.FieldByName('ID_CONTROLELANCA').Value;
               DM.Proc_Lanca_Contas.ParamByName('DESCRICAO').Value := DM.Query_Contas.FieldByName('DESCRICAO').Value;
               DM.Proc_Lanca_Contas.ParamByName('ID_CLIENTE').Value :=  DM.Query_Contas.FieldByName('ID_CLIENTE').Value;
               DM.Proc_Lanca_Contas.ParamByName('EMISSAO').Value := DM.Query_Contas.FieldByName('DATA_EMISSAO').Value;
               DM.Proc_Lanca_Contas.ParamByName('VENCIMENTO').Value := DM.Query_Contas.FieldByName('DATA_VENCIMENTO').Value;
               DM.Proc_Lanca_Contas.ParamByName('N_DOC').Value :=DM.Query_Contas.FieldByName('N_DOC').Value;
               DM.Proc_Lanca_Contas.ParamByName('ID_DEPTO').Value := DM.Query_Contas.FieldByName('ID_DEPTO').Value;
               DM.Proc_Lanca_Contas.ParamByName('ID_PLANO').Value :=DM.Query_Contas.FieldByName('ID_PLANO').Value;
               DM.Proc_Lanca_Contas.ParamByName('ID_PORTADOR').Value := DM.Query_Contas.FieldByName('ID_PORTADOR').Value;
               DM.Proc_Lanca_Contas.ParamByName('TIPO').Value := DM.Query_Contas.FieldByName('TIPO').Value;
               DM.Proc_Lanca_Contas.ParamByName('PARCELA').Value :=DM.Query_Contas.FieldByName('PARCELA').Value;
               DM.Proc_Lanca_Contas.ParamByName('OBS').Value :=  DM.Query_Contas.FieldByName('OBS').Value;
               DM.Proc_Lanca_Contas.ParamByName('VALOR').Value := DM.Query_Contas.FieldByName('VALOR').Value;
               DM.Proc_Lanca_Contas.ParamByName('DC').Value :=  DM.Query_Contas.FieldByName('DC').Value;
               DM.Proc_Lanca_Contas.ParamByName('BAIXA').Value := DM.Query_Contas.FieldByName('BAIXA').Value;
               DM.Proc_Lanca_Contas.ExecProc;
               DM.Query_Contas.next;
            end;




dm.Query_ContratoItensID_CONTRATO.AsInteger:=Frm_LancaContrato.id_contrato;
dm.Query_ContratoItensID_ITENS.AsInteger:=ID_LANCA;
dm.Query_ContratoItensN_PARCELA.AsInteger:=StrToInt(Edit1.Text);
dm.Query_ContratoItensDESCRICAO.AsString:=RzComboBox1.Text;
dm.Query_ContratoItensID_PLANODECONTAS.AsInteger:=StrToInt(RzComboBox1.Value);
dm.Query_ContratoItensVALOR.AsFloat:=cxCalcEdit1.Value;
dm.Query_ContratoItensDIA_VENCIMENTO.AsInteger:=StrToInt(RzComboBox2.Text);
dm.Query_ContratoItensid_especie.asinteger:=RzDBLookupComboBox1.KeyValue;
dm.Query_ContratoItens.Post;
//dm.Query_Contas.ApplyUpdates(0);

close;
end;

procedure TFrm_Contrato_itens.RzBitBtn3Click(Sender: TObject);
begin
dm.Query_ContratoItens.cancel;
close;
end;

end.
