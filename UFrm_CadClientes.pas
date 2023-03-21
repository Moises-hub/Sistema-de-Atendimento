unit UFrm_CadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, RzCmboBx,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, RzPanel, DosMove, Data.DB, Vcl.Grids,
  Vcl.DBGrids, dxGDIPlusClasses, RzLabel, Vcl.DBCGrids, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxSpinEdit, RzButton, RzTabs,
  RzDBGrid, RzDBLbl, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCustomPivotGrid, cxDBPivotGrid, cxVGrid,
  cxDBVGrid, cxInplaceContainer, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TFrm_CadClientes = class(TForm)
    Panel1: TPanel;
    Edit1: TMaskEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TMaskEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label28: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    DosMove1: TDosMove;
    RzPanel1: TRzPanel;
    Image1: TImage;
    Panel5: TPanel;
    ActionList1: TActionList;
    Act_Salvar: TAction;
    Act_Cancelar: TAction;
    Edit13: TEdit;
    Label2: TLabel;
    ImageList1: TImageList;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Panel6: TPanel;
    RzGroupBox3: TRzGroupBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    RadioGroup1: TRadioGroup;
    RzGroupBox5: TRzGroupBox;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Memo2: TMemo;
    Label17: TLabel;
    RzComboBox1: TRzComboBox;
    Edit14: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Image2: TImage;
    CheckBox18: TCheckBox;
    FDQuery2: TFDQuery;
    Memo1: TMemo;
    Panel7: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    RzPanel2: TRzPanel;
    RzGroupBox2: TRzGroupBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    Panel2: TPanel;
    Panel3: TPanel;
    RzGroupBox4: TRzGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    cxSpinEdit2: TcxSpinEdit;
    cxSpinEdit1: TcxSpinEdit;
    RzPanel3: TRzPanel;
    DBGrid1: TDBGrid;
    Label20: TLabel;
    MaskEdit1: TMaskEdit;
    Edit15: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Label23: TLabel;
    Edit18: TEdit;
    Label24: TLabel;
    Edit19: TEdit;
    Label25: TLabel;
    CheckBox19: TCheckBox;
    CheckBox21: TCheckBox;
    RzComboBox2: TRzComboBox;
    Label26: TLabel;
    Label27: TLabel;
    Edit20: TEdit;
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure CarregaFunc(Sender: TObject);
    procedure Tab_ObsAfterInsert(DataSet: TDataSet);
    procedure TabSheet4Show(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
     type
      TMyDBGrid = class(TDBGrid)
      published
      property DefaultRowHeight;
      end;


  public
    acao : integer;  //0=insert 1=edit


  end;

var
  Frm_CadClientes: TFrm_CadClientes;

implementation

{$R *.dfm}

uses UDM, UFrm_CEP, UFrm_Regiao, UClientes, UFrm_Principal, UFrm_LancaContrato;

procedure TFrm_CadClientes.Act_CancelarExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_CadClientes.Act_SalvarExecute(Sender: TObject);
begin
  if LENGTH(EDIT1.Text)<18 then
     begin
     ShowMessage('digite o CNPJ!');
     EDIT1.SetFocus;
     end
     else
     if length(EDIT2.Text)=0 then
        begin
         ShowMessage('digite o Nome!');
         EDIT2.setfocus;
        end
         else
          BEGIN
              try
                     DM.Conexao.Commit;
                     DM.Proc_Cliente.ParamByName('CODIGO').AsInteger:=StrToInt(LABEL14.Caption);
                     DM.Proc_Cliente.ParamByName('NOME').asstring:=edit2.Text;
                     DM.Proc_Cliente.ParamByName('FANTASIA').asstring:=edit4.Text;
                     DM.Proc_Cliente.ParamByName('CADASTRO').ASINTEGER:=acao;
                     DM.Proc_Cliente.ParamByName('CPF_CNPJ').asstring:=edit1.Text;
                     DM.Proc_Cliente.ParamByName('IE').asstring:=edit13.Text;
                     dm.Proc_Cliente.ParamByName('REGIAO').AsInteger:=dm.CIDADE.FieldByName('id_regiao').ASINTEGER;
                  //   ShowMessage(IntToStr(dm.Proc_Cliente.ParamByName('REGIAO').AsInteger));
                     DM.Proc_Cliente.Params[7].asstring:=edit6.Text;
                     DM.Proc_Cliente.Params[8].asstring:=edit7.Text;
                     DM.Proc_Cliente.Params[9].asstring:=edit8.Text;
                     DM.Proc_Cliente.Params[10].asstring:=edit9.Text;
                     DM.Proc_Cliente.Params[11].asstring:=edit5.Text;
                     DM.Proc_Cliente.Params[12].asstring:=edit10.Text;
                     DM.Proc_Cliente.Params[13].asstring:=edit11.Text;
                     DM.Proc_Cliente.Params[14].asstring:=edit12.Text;
                     DM.Proc_Cliente.Params[48].asstring:=MaskEdit1.Text;
                     DM.Proc_Cliente.Params[49].asstring:=edit15.Text;
                     DM.Proc_Cliente.Params[50].asstring:=edit16.Text;
                     DM.Proc_Cliente.Params[51].asstring:=edit17.Text;
                     DM.Proc_Cliente.Params[52].asstring:=edit18.Text;
                     DM.Proc_Cliente.Params[53].asstring:=edit19.Text;
                     DM.Proc_Cliente.Params[54].asstring:=RzComboBox2.Text;
                     DM.Proc_Cliente.Params[57].asstring:=Edit20.Text;


                  if CheckBox1.Checked = true then
                      DM.Proc_Cliente.Params[15].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[15].asinteger:=0;

                   if CheckBox2.Checked = true then
                      DM.Proc_Cliente.Params[16].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[16].asinteger:=0;

                   if CheckBox3.Checked = true then
                      DM.Proc_Cliente.Params[17].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[17].asinteger:=0;

                   if CheckBox4.Checked = true then
                      DM.Proc_Cliente.Params[18].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[18].asinteger:=0;


                   if CheckBox5.Checked = true then
                      DM.Proc_Cliente.Params[19].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[19].asinteger:=0;


                   if CheckBox6.Checked = true then
                      DM.Proc_Cliente.Params[20].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[20].asinteger:=0;


                   if CheckBox7.Checked = true then
                      DM.Proc_Cliente.Params[21].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[21].asinteger:=0;


                   if CheckBox8.Checked = true then
                      DM.Proc_Cliente.Params[22].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[22].asinteger:=0;


                   if CheckBox9.Checked = true then
                      DM.Proc_Cliente.Params[23].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[23].asinteger:=0;

                   if CheckBox10.Checked = true then
                      DM.Proc_Cliente.Params[24].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[24].asinteger:=0;


                   if CheckBox11.Checked = true then
                      DM.Proc_Cliente.Params[25].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[25].asinteger:=0;


                   if CheckBox12.Checked = true then
                      DM.Proc_Cliente.Params[26].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[26].asinteger:=0;


                   if CheckBox13.Checked = true then
                      DM.Proc_Cliente.Params[27].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[27].asinteger:=0;

                      DM.Proc_Cliente.Params[28].asinteger:=StrToInt(cxSpinEdit1.Text);
                      DM.Proc_Cliente.Params[29].asinteger:=StrToInt(cxSpinEdit2.Text);

                   if CheckBox14.Checked = true then
                      DM.Proc_Cliente.Params[30].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[30].asinteger:=0;
                      DM.Proc_Cliente.Params[31].ASSTRING:=Memo1.Text;

                    if CheckBox15.Checked = true then
                      DM.Proc_Cliente.Params[32].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[32].asinteger:=0;

                    if CheckBox16.Checked = true then
                      DM.Proc_Cliente.Params[33].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[33].asinteger:=0;

                    if CheckBox17.Checked = true then
                      DM.Proc_Cliente.Params[34].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[34].asinteger:=0;

                      DM.Proc_Cliente.Params[35].asinteger:=RadioGroup1.ItemIndex;
                      DM.Proc_Cliente.Params[36].asinteger:=RadioGroup2.ItemIndex;


                    if CheckBox20.Checked = true then
                      DM.Proc_Cliente.Params[38].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[38].asinteger:=0;

                    if CheckBox31.Checked = true then
                      DM.Proc_Cliente.Params[39].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[39].asinteger:=0;


                    if CheckBox29.Checked = true then
                      DM.Proc_Cliente.Params[40].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[40].asinteger:=0;

                    if CheckBox18.Checked = true then
                      DM.Proc_Cliente.Params[41].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[41].asinteger:=0;

                     if CheckBox30.Checked = true then
                      DM.Proc_Cliente.Params[42].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[42].asinteger:=0;

                     if CheckBox19.Checked = true then
                      DM.Proc_Cliente.Params[55].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[55].asinteger:=0;

                     if CheckBox21.Checked = true then
                      DM.Proc_Cliente.Params[56].asinteger:=1
                      else
                      DM.Proc_Cliente.Params[56].asinteger:=0;

                      DM.Proc_Cliente.Params[43].asinteger:=RadioGroup3.ItemIndex;
                      DM.Proc_Cliente.Params[45].asSTRING:=Edit14.Text;
                      if RzComboBox1.ItemIndex<>-1 then

                      DM.Proc_Cliente.Params[46].AsInteger:=StrToInt(RzComboBox1.Value);
                      DM.Proc_Cliente.Params[47].AsString:=Memo2.Text;
                      DM.Proc_Cliente.ExecProc;
                      DM.Conexao.Commit;





                     // DM.Tab_Obs.ApplyUpdates(0);



                    DM.QUERY_log.Params[0].AsInteger:=Frm_Principal.id_usu;
                    if ACAO = 0 then
                    BEGIN
                    DM.QUERY_log.Params[1].AsInteger:=5;
                    DM.QUERY_log.Params[4].AsSTRING:='NOVO REGISTRO ID:'+label14.caption+'  NOME :'+EDIT2.TEXT;
                    END
                    ELSE
                    if ACAO = 1 then
                    BEGIN
                    DM.QUERY_log.Params[1].AsInteger:=3;
                     DM.QUERY_log.Params[4].AsSTRING:='ALTERAÇÃO DO REGISTRO ID:'+label14.caption+'  NOME :'+EDIT2.TEXT;
                    END;

                    DM.QUERY_log.Params[2].ASSTRING:=frm_principal.Getcomputer;
                    DM.QUERY_log.Params[3].AsSTRING:='CLIENTES';

                    DM.QUERY_log.Params[5].AsINTEGER:=StrToInt(label14.caption);
                    DM.QUERY_log.ExecSQL();






                    close;

                  ShowMessage('Cliente Cadastrado com Sucesso!!');
               except
              on E: Exception do
                ShowMessage('Erro: ' + E.Message );
              end;


          END;







end;

procedure TFrm_CadClientes.Button1Click(Sender: TObject);
begin
         if Application.MessageBox('deseja gerar contrato??','',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1)=mrYes then
            begin
              Frm_LancaContrato:=TFrm_LancaContrato.Create(self);

              dm.Gen.Close;
              dm.Gen.SQL.Text:='select gen_id(GEN_CONTROLE_CONTRATO_ID,1) from RDB$DATABASE';
              dm.Gen.open;
              Frm_LancaContrato.id_contrato:=dm.GenGEN_ID.AsInteger;

              Frm_LancaContrato.edit2.Text:=Edit2.Text;
              Frm_LancaContrato.RzCheckBox1.Checked:=CheckBox8.Checked;
              Frm_LancaContrato.RzCheckBox2.Checked:=CheckBox9.Checked;
              Frm_LancaContrato.RzCheckBox3.Checked:=CheckBox10.Checked;
              Frm_LancaContrato.RzCheckBox4.Checked:=CheckBox11.Checked;
              Frm_LancaContrato.RzCheckBox5.Checked:=CheckBox12.Checked;
              Frm_LancaContrato.RzCheckBox6.Checked:=CheckBox13.Checked;
              Frm_LancaContrato.RzCheckBox7.Checked:=CheckBox14.Checked;
              Frm_LancaContrato.id_cliente:=StrToInt(Label14.Caption);

              Frm_LancaContrato.RzCheckBox8.Checked:=CheckBox1.Checked;
              Frm_LancaContrato.RzCheckBox9.Checked:=CheckBox2.Checked;
              Frm_LancaContrato.RzCheckBox10.Checked:=CheckBox3.Checked;
              Frm_LancaContrato.RzCheckBox11.Checked:=CheckBox4.Checked;
              Frm_LancaContrato.RzCheckBox12.Checked:=CheckBox5.Checked;
              Frm_LancaContrato.RzCheckBox13.Checked:=CheckBox6.Checked;
              Frm_LancaContrato.RzCheckBox14.Checked:=CheckBox7.Checked;
              Frm_LancaContrato.cxSpinEdit1.Value:=cxSpinEdit1.value;
              Frm_LancaContrato.cxSpinEdit2.Value:=cxSpinEdit2.value;
              Frm_LancaContrato.ShowModal;

            end;
end;

procedure TFrm_CadClientes.CarregaFunc(Sender: TObject);
var
fun :tfdquery;
begin
      fun := tfdquery.Create(self);
      fun.Connection:=dm.Conexao;
      fun.SQL.Text:='select id_funcionario,nome from funcionarios where status = 1';
      fun.Open();

      fun.First;
      while not fun.Eof do
       begin
         RzComboBox1.Values.Add(IntToStr(fun.FieldByName('id_funcionario').AsInteger));
         RzComboBox1.Items.Add(fun.FieldByName('nome').AsString);
         fun.next;
       end;

       fun.Free;

end;

procedure TFrm_CadClientes.CheckBox12Click(Sender: TObject);
begin
if (CheckBox12.Checked = TRUE) then
   BEGIN
    CheckBox4.Enabled:=TRUE;
    CheckBox5.Enabled:=TRUE;

   END
   ELSE
   BEGIN
    CheckBox4.Enabled:=FALSE;
    CheckBox5.Enabled:=FALSE;

    CheckBox4.Checked:=FALSE;
    CheckBox5.Checked:=FALSE;

   END;
end;

procedure TFrm_CadClientes.CheckBox13Click(Sender: TObject);
begin
if (CheckBox13.Checked = TRUE) then
   BEGIN
    CheckBox6.Enabled:=TRUE;
    CheckBox7.Enabled:=TRUE;

   END
   ELSE
   BEGIN
    CheckBox6.Enabled:=FALSE;
    CheckBox7.Enabled:=FALSE;

    CheckBox6.Checked:=FALSE;
    CheckBox7.Checked:=FALSE;

   END;
end;

procedure TFrm_CadClientes.CheckBox8Click(Sender: TObject);
begin
if (CheckBox8.Checked = TRUE) OR (CheckBox9.Checked = TRUE) or (CheckBox11.Checked = TRUE) then
   BEGIN
    CheckBox1.Enabled:=TRUE;
    CheckBox2.Enabled:=TRUE;
    CheckBox3.Enabled:=TRUE;
   END
   ELSE
   BEGIN
    CheckBox1.Enabled:=FALSE;
    CheckBox2.Enabled:=FALSE;
    CheckBox3.Enabled:=FALSE;
    CheckBox1.Checked:=FALSE;
    CheckBox2.Checked:=FALSE;
    CheckBox3.Checked:=FALSE;
   END;
end;

procedure TFrm_CadClientes.DBGrid2DblClick(Sender: TObject);
begin
dm.Tab_Obs.Insert;
end;

procedure TFrm_CadClientes.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var R : TRect;

begin
R:=Rect;
 Dec(R.Bottom,1);
 if Column.Field=dm.Tab_ObsOBS then
  begin
    //DBGrid2.Canvas.FillRect(Rect);
   // DrawText(DBGrid2.Canvas.Handle,PChar(dm.Tab_ObsOBS.AsString),Length(dm.Tab_ObsOBS.AsString),R,DT_WORDBREAK);
  end;

end;

procedure TFrm_CadClientes.Edit1Exit(Sender: TObject);
begin
if acao = 0 then
  begin

               FDQUERY2.Close;
               FDQUERY2.SQL.Text:='SELECT NOME FROM CLIENTES WHERE CPF_CNPJ =:F';
               FDQUERY2.PARAMS[0].AsString:=edit1.Text;
               FDQUERY2.Open();
           if FDQUERY2.RecordCount>0 then
              ShowMessage('CNPJ já Cadastrado! '+fdquery2.FieldByName('NOME').AsString)

  end;
end;

procedure TFrm_CadClientes.FormShow(Sender: TObject);
var
query : tfdquery;
begin
        query := TFDQuery.Create(self);
        query.Connection:=dm.Conexao;





               query.close;
               query.sql.text:='SELECT COUNT(*) FROM acessos where id_modulo =10004'+' and id_grupo ='+IntToStr(Frm_Principal.grupo);
               query.open;
                 if query.FieldByName('count').AsInteger <>0 then
                    BEGIN
                      Frm_CadClientes.TabSheet1.Enabled:=FALSE;
                      Frm_CadClientes.TabSheet2.Enabled:=FALSE;
                      Frm_CadClientes.Edit1.ReadOnly:=TRUE;
                      Frm_CadClientes.Edit3.ReadOnly:=TRUE;
                      Frm_CadClientes.Edit13.ReadOnly:=TRUE;
                      Frm_CadClientes.Edit2.ReadOnly:=TRUE;
                      Frm_CadClientes.Edit4.ReadOnly:=TRUE;
                      Frm_CadClientes.Edit14.ReadOnly:=TRUE;
                      Frm_CadClientes.RzComboBox1.ReadOnly:=TRUE;

                    END;


     CarregaFunc(sender);



     if acao=2 then
       begin
          Label14.Caption:=dm.Query_ClientesID_CLIENTE.AsString;
          Edit1.Text:=dm.Query_ClientesCPF_CNPJ.asstring;
          Edit3.Text:=dm.Query_ClientesIE.asstring;
          edit13.Text:=dm.Query_Clientesim.AsString;
          Edit2.Text:=dm.Query_ClientesNOME.AsString;
          edit4.Text:=dm.Query_ClientesFANTASIA.AsString;
          edit5.Text:=dm.Query_ClientesCEP.AsString;
          Edit6.Text:=dm.Query_ClientesENDERECO_1.AsString;
          Edit7.Text:=dm.Query_ClientesNUMERO.AsString;
          Edit9.Text:=dm.Query_ClientesCOMPLEMENTO.AsString;
          edit8.Text:=dm.Query_ClientesBAIRRO.AsString;

          DM.CIDADE.Close;
          DM.CIDADE.sql.text:='select id_regiao, CIDADE ||''-''||UF as cidade from REGIOES  WHERE id_regiao ='+IntToStr(dm.Query_ClientesREGIAO.Asinteger);
          DM.CIDADE.Open;




          //edit12.Text:=dm.Query_ClientesCIDADE.AsString;
          edit10.Text:=dm.Query_ClientesFONE.AsString;
          Edit20.Text:=dm.Query_ClientesFONE2.AsString;
          Edit11.Text:=dm.Query_ClientesCELULAR.AsString;
          edit12.Text:=dm.Query_ClientesEMAIL.ASSTRING;
          edit14.Text:=dm.Query_ClientesRESPONSAVEL_EMPRESA.AsString;
          RzComboBox1.Value:=IntToStr(DM.Query_ClientesID_COLISEU_RESP.ASINTEGER);
          MaskEdit1.Text:=DM.Query_ClientesREPONSAVEL_CPF.AsString;
          Edit15.Text:=DM.Query_ClientesRESPONSAVEL_RG.AsString;
          Edit16.Text:=DM.Query_ClientesREPONSAVEL_ENDERECO.ASSTRING;
          EDIT17.Text:=DM.Query_ClientesREPONSAVEL_NUMERO.ASSTRING;
          EDIT18.Text:=DM.Query_ClientesREPONSAVEL_BAIRRO.ASSTRING;
          EDIT19.Text:=DM.Query_ClientesREPONSAVEL_CIDADE.ASSTRING;
          RzComboBox2.ItemIndex:=RzComboBox2.IndexOf(DM.Query_ClientesREPONSAVEL_UF.ASSTRING);

          if DM.Query_ClientesCOLISEU_GESTAO.ASINTEGER = 1 then
             CheckBox8.Checked := TRUE
             ELSE
             CheckBox8.Checked := FALSE;

          if DM.Query_ClientesCOLISEU_FISCAL.ASINTEGER = 1 then
             CheckBox9.Checked := TRUE
             ELSE
             CheckBox9.Checked := FALSE;

          if DM.Query_ClientesSILENUS_PDV.ASINTEGER = 1 then
             CheckBox10.Checked := TRUE
             ELSE
             CheckBox10.Checked := FALSE;

          if DM.Query_ClientesCOLISEU_GRAOS.ASINTEGER = 1 then
             CheckBox11.Checked := TRUE
             ELSE
             CheckBox11.Checked := FALSE;

          if DM.Query_ClientesCOLISEU_TRANSPORTE.ASINTEGER = 1 then
             CheckBox12.Checked := TRUE
             ELSE
             CheckBox12.Checked := FALSE;

          if DM.Query_ClientesAPP.ASINTEGER = 1 then
             CheckBox13.Checked := TRUE
             ELSE
             CheckBox13.Checked := FALSE;

          if DM.Query_ClientesCOLISEU_WEB.ASINTEGER = 1 then
             CheckBox14.Checked := TRUE
             ELSE
             CheckBox14.Checked := FALSE;

          if DM.Query_ClientesNFe.ASINTEGER = 1 then
             CheckBox1.Checked := TRUE
             ELSE
             CheckBox1.Checked := FALSE;

          if DM.Query_ClientesNFCE.ASINTEGER = 1 then
             CheckBox2.Checked := TRUE
             ELSE
             CheckBox2.Checked := FALSE;


          if DM.Query_ClientesNFSE.ASINTEGER = 1 then
             CheckBox3.Checked := TRUE
             ELSE
             CheckBox3.Checked := FALSE;

          if DM.Query_ClientesMDFE.ASINTEGER = 1 then
             CheckBox4.Checked := TRUE
             ELSE
             CheckBox4.Checked := FALSE;

          if DM.Query_ClientesCTE.ASINTEGER = 1 then
             CheckBox5.Checked := TRUE
             ELSE
             CheckBox5.Checked := FALSE;

          if DM.Query_ClientesAPP_SALES.ASINTEGER = 1 then
             CheckBox6.Checked := TRUE
             ELSE
             CheckBox6.Checked := FALSE;

          if DM.Query_ClientesAPP_DASH.ASINTEGER = 1 then
             CheckBox7.Checked := TRUE
             ELSE
             CheckBox7.Checked := FALSE;

          if DM.Query_ClientesGRADE.ASINTEGER = 1 then
             CheckBox15.Checked := TRUE
             ELSE
             CheckBox15.Checked := FALSE;

          if DM.Query_ClientesESTOQUE_POR_DEPTO.ASINTEGER = 1 then
             CheckBox16.Checked := TRUE
             ELSE
             CheckBox16.Checked := FALSE;


          if DM.Query_ClientesCONTROLE_DE_ENTREGA.ASINTEGER = 1 then
             CheckBox17.Checked := TRUE
             ELSE
             CheckBox17.Checked := FALSE;


          if DM.Query_ClientesBOLETO_BANCARIO.ASINTEGER = 1 then
             CheckBox20.Checked := TRUE
             ELSE
             CheckBox20.Checked := FALSE;



          if DM.Query_ClientesPROPRIEDADE.ASINTEGER = 1 then
             CheckBox29.Checked := TRUE
             ELSE
             CheckBox29.Checked := FALSE;



          if DM.Query_ClientesCONDICIONAL.ASINTEGER = 1 then
             CheckBox30.Checked := TRUE
             ELSE
             CheckBox30.Checked := FALSE;



          if DM.Query_ClientesTRABALHA_OS.ASINTEGER = 1 then
             CheckBox31.Checked := TRUE
             ELSE
             CheckBox31.Checked := FALSE;


          if DM.Query_ClientesLOTE.ASINTEGER = 1 then
             CheckBox18.Checked := TRUE
             ELSE
             CheckBox18.Checked := FALSE;

          if DM.Query_ClientesINFO_INDUSTRIA.ASINTEGER = 1 then
             CheckBox19.Checked := TRUE
             ELSE
             CheckBox19.Checked := FALSE;

          if DM.Query_ClientesSPED.AsInteger = 1 then
             CheckBox21.Checked := TRUE
             ELSE
             CheckBoX21.Checked := FALSE;



          RadioGroup1.ItemIndex:=dm.Query_ClientesENTREGA_BAIXA_ESTOQUE.AsInteger;
          RadioGroup2.ItemIndex:=dm.Query_ClientesFRENTE_CAIXA.AsInteger;
          RadioGroup3.ItemIndex:=dm.Query_ClientesPREST_SERVI.AsInteger;
          cxSpinEdit1.Text:=IntToStr(dm.Query_ClientesN_DISPO_SALES.AsInteger);
          cxSpinEdit2.Text:=IntToStr(dm.Query_ClientesN_DISPO_DARSH.AsInteger);
             Memo2.Text:= DM.Query_ClientesOBS.ASSTRING;
             Memo1.TEXT:= dm.Query_ClientesBANCOS.ASSTRING;

             dm.Tab_Obs.Open();
//             dm.Query_Clientes.Insert;
       end;


end;

procedure TFrm_CadClientes.SpeedButton1Click(Sender: TObject);
begin
        Frm_Cep:=TFrm_CEP.Create(self);
        Frm_cep.ShowModal;
        Frm_Cep.Free;
end;

procedure TFrm_CadClientes.SpeedButton2Click(Sender: TObject);
begin

        Frm_Regiao:=TFrm_Regiao.Create(self);
        Frm_Regiao.Act_Sair.Caption:='Ok';
        Frm_Regiao.ShowModal;


          DM.CIDADE.Close;
          DM.CIDADE.sql.text:='select id_regiao, CIDADE ||''-''||UF as cidade from REGIOES  WHERE id_regiao ='+Frm_Regiao.Query_Regiaoid_regiao.Asstring;
          DM.CIDADE.Open;


        Frm_Regiao:=nil;
end;

procedure TFrm_CadClientes.TabSheet4Show(Sender: TObject);
begin
TMyDBGrid(DBGrid1).DefaultRowHeight := 1;
end;

procedure TFrm_CadClientes.Tab_ObsAfterInsert(DataSet: TDataSet);
begin
     ShowMessage('teste');
end;

end.

