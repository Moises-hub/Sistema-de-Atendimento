unit UFrm_Implantacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, Vcl.ExtCtrls, dxGDIPlusClasses,
  Vcl.DBCGrids, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzButton,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, cxGraphics,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMemo, cxRichEdit,
  cxDBRichEdit, cxMaskEdit, cxSpinEdit, UFrm_Quadro_Implantacao;

type
  TFrm_Implantacao = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    RzPanel1: TRzPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    PopupMenu1: TPopupMenu;
    Query_ImpNotas: TFDQuery;
    Query_ImpNotasDESCRICAO: TMemoField;
    Query_ImpNotasDATA_HORA: TSQLTimeStampField;
    Query_ImpNotasNOME: TStringField;
    DS_Query_ImpNotas: TDataSource;
    DBText2: TDBText;
    DBText1: TDBText;
    RzPanel5: TRzPanel;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_Notas: TAction;
    Act_Anexar: TAction;
    Act_Salvar: TAction;
    Act_Cancel: TAction;
    cxDBRichEdit1: TcxDBRichEdit;
    Query_ImpNotasID: TIntegerField;
    Panel4: TPanel;
    Panel2: TPanel;
    RzGroupBox2: TRzGroupBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox19: TCheckBox;
    RzGroupBox3: TRzGroupBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    CheckBox18: TCheckBox;
    RzToolButton1: TRzToolButton;
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
    CheckBox21: TCheckBox;
    Query_Clientes: TFDQuery;
    Query_ClientesID_CLIENTE: TIntegerField;
    Query_ClientesNOME: TStringField;
    Query_ClientesID_CLIENTE_1: TIntegerField;
    Query_ClientesCOLISEU_GESTAO: TIntegerField;
    Query_ClientesCOLISEU_FISCAL: TIntegerField;
    Query_ClientesSILENUS_PDV: TIntegerField;
    Query_ClientesCOLISEU_GRAOS: TIntegerField;
    Query_ClientesCOLISEU_TRANSPORTE: TIntegerField;
    Query_ClientesAPP: TIntegerField;
    Query_ClientesCOLISEU_WEB: TIntegerField;
    Query_ClientesID: TIntegerField;
    Query_ClientesINFO_INDUSTRIA: TIntegerField;
    Query_ClientesDATA_UP: TSQLTimeStampField;
    Query_ClientesID_1: TIntegerField;
    Query_ClientesID_CLIENTE_2: TIntegerField;
    Query_ClientesNFE: TIntegerField;
    Query_ClientesNFCE: TIntegerField;
    Query_ClientesNFSE: TIntegerField;
    Query_ClientesMDFE: TIntegerField;
    Query_ClientesCTE: TIntegerField;
    Query_ClientesAPP_SALES: TIntegerField;
    Query_ClientesAPP_DASH: TIntegerField;
    Query_ClientesN_DISPO_SALES: TIntegerField;
    Query_ClientesN_DISPO_DARSH: TIntegerField;
    Query_ClientesN_TERMINAIS: TIntegerField;
    Query_ClientesSPED: TIntegerField;
    Query_ClientesDATA_UP_1: TSQLTimeStampField;
    Query_ClientesID_CLIENTE_3: TIntegerField;
    Query_ClientesID_MODO: TIntegerField;
    Query_ClientesDETALHE: TBlobField;
    Query_ClientesGRADE: TIntegerField;
    Query_ClientesESTOQUE_POR_DEPTO: TIntegerField;
    Query_ClientesCONTROLE_DE_ENTREGA: TIntegerField;
    Query_ClientesENTREGA_BAIXA_ESTOQUE: TIntegerField;
    Query_ClientesFRENTE_CAIXA: TIntegerField;
    Query_ClientesATENDIMENTO: TIntegerField;
    Query_ClientesBOLETO_BANCARIO: TIntegerField;
    Query_ClientesTRABALHA_OS: TIntegerField;
    Query_ClientesPROPRIEDADE: TIntegerField;
    Query_ClientesLOTE: TIntegerField;
    Query_ClientesCONDICIONAL: TIntegerField;
    Query_ClientesPREST_SERVI: TIntegerField;
    Query_ClientesEMISS_VENDA: TIntegerField;
    Query_ClientesDATA_UP_2: TSQLTimeStampField;
    procedure Act_NotasExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBRichEdit1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Implantacao: TFrm_Implantacao;

implementation

{$R *.dfm}

uses UDM, UFrm_Org_ADDNota;

procedure TFrm_Implantacao.Act_NotasExecute(Sender: TObject);
begin
   Frm_Org_ADDNota:=TFrm_Org_ADDNota.Create(self);

    Frm_Org_ADDNota.cxRichEdit1.Clear;
    Frm_Org_ADDNota.edit:=2;
    Frm_Org_ADDNota.SpeedButton1.Visible:=false;
    Frm_Org_ADDNota.ShowModal;
    Query_ImpNotas.Refresh;
end;

procedure TFrm_Implantacao.CheckBox11Click(Sender: TObject);
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

procedure TFrm_Implantacao.CheckBox12Click(Sender: TObject);
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

procedure TFrm_Implantacao.CheckBox13Click(Sender: TObject);
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

procedure TFrm_Implantacao.CheckBox8Click(Sender: TObject);
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

procedure TFrm_Implantacao.CheckBox9Click(Sender: TObject);
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

procedure TFrm_Implantacao.cxDBRichEdit1DblClick(Sender: TObject);
begin
       Frm_Org_ADDNota:=TFrm_Org_ADDNota.Create(self);
       Frm_Org_ADDNota.cxRichEdit1.Lines.Text:=cxDBRichEdit1.Lines.Text;
       Frm_Org_ADDNota.edit:=3;
       Frm_Org_ADDNota.SpeedButton1.Visible:=false;
       Frm_Org_ADDNota.ShowModal;
end;

procedure TFrm_Implantacao.FormClose(Sender: TObject; var Action: TCloseAction);
VAR
SALVAR : TFDQuery;
begin

           salvar:=TFDQuery.Create(nil);
           salvar.Connection:=dm.Conexao;
 salvar.close;
            salvar.sql.text:='select count(*) from CONTROLE_SOFTWARE where id_cliente = :i';
            salvar.Params[0].Asinteger:=Frm_Quadro_Implantacao.Query_QuadroID_CLIENTE.AsInteger;
            salvar.Open();

           if salvar.FieldByName('count').AsInteger = 0 then
              begin

                   salvar.close;
                   salvar.sql.Text:='INSERT INTO CONTROLE_SOFTWARE(ID,'+
                    '                                            ID_CLIENTE, '+
                    '                                            COLISEU_GESTAO,'+
                    '                                            COLISEU_FISCAL, '+
                    '                                            SILENUS_PDV, '+
                    '                                            COLISEU_GRAOS, '+
                    '                                            COLISEU_TRANSPORTE, '+
                    '                                            APP, '+
                    '                                            COLISEU_WEB, '+
                    '                                            info_industria) ' +
                    '            VALUES ((select gen_id(controle_software_id,1) from RDB$DATABASE),' +
                    '                    :CODIGO, ' +
                    '                    :COLISEU_GESTAO, ' +
                    '                    :COLISEU_FISCAL, ' +
                    '                    :SILENUS_PDV, ' +
                    '                    :COLISEU_GRAOS, ' +
                    '                    :COLISEU_TRANSPORTE, ' +
                    '                    :APP, ' +
                    '                    :COLISEU_WEB, ' +
                    '                    :info_industria)';



                           salvar.Params[0].Asinteger:=Frm_Quadro_Implantacao.Query_QuadroID_CLIENTE.AsInteger;

                           if CheckBox8.Checked = true then
                              salvar.Params[1].asinteger:=1
                              else                             //GEST
                              salvar.Params[1].asinteger:=0;


                           if CheckBox9.Checked = true then
                              salvar.Params[2].asinteger:=1
                              else                           //FIS
                              salvar.Params[2].asinteger:=0;

                           if CheckBox10.Checked = true then
                              salvar.Params[3].asinteger:=1
                              else                            //PDV
                              salvar.Params[3].asinteger:=0;


                           if CheckBox11.Checked = true then
                              salvar.Params[4].asinteger:=1
                              else                            //GRAOS
                              salvar.Params[4].asinteger:=0;


                           if CheckBox12.Checked = true then
                              salvar.Params[5].asinteger:=1
                              else                          //TRANSPORTE
                              salvar.Params[5].asinteger:=0;


                           if CheckBox13.Checked = true then
                              salvar.Params[6].asinteger:=1
                              else                           //APP
                              salvar.Params[6].asinteger:=0;



                           if CheckBox14.Checked = true then
                              salvar.Params[7].asinteger:=1
                              else                           //WEB
                              salvar.Params[7].asinteger:=0;

                           if CheckBox19.Checked = true then
                              salvar.Params[8].asinteger:=1
                              else                          //INDUSTRIA
                              salvar.Params[8].asinteger:=0;

                             salvar.ExecSQL;
              end
              else
              begin
                   salvar.close;
                   salvar.sql.Text:='update CONTROLE_SOFTWARE '+
                   'set COLISEU_GESTAO = :COLISEU_GESTAO '+
                   ',COLISEU_FISCAL = :COLISEU_FISCAL, '+
                   'SILENUS_PDV = :SILENUS_PDV, '+
                   'COLISEU_GRAOS = :COLISEU_GRAOS, '+
                   'COLISEU_TRANSPORTE =:COLISEU_TRANSPORTE, '+
                   'APP =:APP, '+
                   'COLISEU_WEB =:COLISEU_WEB, ' +
                   'info_industria = :info_industria '+
                   'where CONTROLE_SOFTWARE.ID_CLIENTE = :CODIGO';



                           if CheckBox8.Checked = true then
                              salvar.Params[0].asinteger:=1
                              else
                              salvar.Params[0].asinteger:=0;


                           if CheckBox9.Checked = true then
                              salvar.Params[1].asinteger:=1
                              else
                              salvar.Params[1].asinteger:=0;

                           if CheckBox10.Checked = true then
                              salvar.Params[2].asinteger:=1
                              else
                              salvar.Params[2].asinteger:=0;


                           if CheckBox11.Checked = true then
                              salvar.Params[3].asinteger:=1
                              else
                              salvar.Params[3].asinteger:=0;


                           if CheckBox12.Checked = true then
                              salvar.Params[4].asinteger:=1
                              else
                              salvar.Params[4].asinteger:=0;


                           if CheckBox13.Checked = true then
                              salvar.Params[5].asinteger:=1
                              else
                              salvar.Params[5].asinteger:=0;


                           if CheckBox14.Checked = true then
                              salvar.Params[6].asinteger:=1
                              else
                              salvar.Params[6].asinteger:=0;

                           if CheckBox19.Checked = true then
                              salvar.Params[7].asinteger:=1
                              else
                              salvar.Params[7].asinteger:=0;

                            salvar.Params[8].Asinteger:=Frm_Quadro_Implantacao.Query_QuadroID_CLIENTE.AsInteger;;

                             salvar.ExecSQL;

              end;

            salvar.close;
            salvar.sql.text:='select count(*) from CONTROLE_MODULOS where id_cliente = :i';
            salvar.Params[0].Asinteger:=Frm_Quadro_Implantacao.Query_QuadroID_CLIENTE.AsInteger;;
            salvar.Open();

           if salvar.FieldByName('count').AsInteger = 0 then
              begin
                  salvar.close;
                   salvar.sql.Text:=' INSERT INTO CONTROLE_MODULOS(ID, ID_CLIENTE,NFE,NFCE,NFSE,MDFE,CTE,APP_SALES,APP_DASH,N_DISPO_SALES,N_DISPO_DARSH,sped) ' +
                                    ' VALUES ((select gen_id(CONTROLE_MODULOS_ID,1) from RDB$DATABASE),:CODIGO,:CODIGO,:NFCE,:NFSE,:MDFE,:CTE,:SALES,:DARSH,:N_DISPO_S,:N_DISPO_D,:sped)';





                      salvar.Params[0].Asinteger:=Frm_Quadro_Implantacao.Query_QuadroID_CLIENTE.AsInteger;;

                      if CheckBox1.Checked = true then
                      SALVAR.Params[1].asinteger:=1
                      else
                      SALVAR.Params[1].asinteger:=0;

                   if CheckBox2.Checked = true then
                      SALVAR.Params[2].asinteger:=1
                      else
                      SALVAR.Params[2].asinteger:=0;

                   if CheckBox3.Checked = true then
                      SALVAR.Params[3].asinteger:=1
                      else
                      SALVAR.Params[3].asinteger:=0;


                   if CheckBox4.Checked = true then
                      SALVAR.Params[4].asinteger:=1
                      else
                      SALVAR.Params[4].asinteger:=0;


                   if CheckBox5.Checked = true then
                      SALVAR.Params[5].asinteger:=1
                      else
                      SALVAR.Params[5].asinteger:=0;


                   if CheckBox6.Checked = true then
                      SALVAR.Params[6].asinteger:=1
                      else
                      SALVAR.Params[6].asinteger:=0;


                  SALVAR.Params[7].asinteger:=StrToInt(cxSpinEdit1.Text);
                  SALVAR.Params[8].asinteger:=StrToInt(cxSpinEdit2.Text);


                    if CheckBox21.Checked = true then
                      SALVAR.Params[9].asinteger:=1
                      else
                      SALVAR.Params[9].asinteger:=0;

                  salvar.ExecSQL;
              end
              ELSE
              BEGIN
                            salvar.close;
                   salvar.sql.Text:='update CONTROLE_MODULOS SET NFE = :NFE , '+
                                    '                      NFCE = :NFCE, '+
                                    '                      NFSE = :NFSE, '+
                                    '                      MDFE = :MDFE, '+
                                    '                      CTE = :CTE, '+
                                    '                      APP_SALES = :SALES, '+
                                    '                      APP_DASH = :DARSH, '+
                                    '                      SPED =:SPED,' +
                                    '                      N_DISPO_SALES =:N_DISPO_S, '+
                                    '                      N_DISPO_DARSH =:N_DISPO_D, '+
                                    '                      DATA_UP = current_timestamp ' +
                                    ' where CONTROLE_MODULOS.ID_CLIENTE = :CODIGO;';







                      if CheckBox1.Checked = true then
                      SALVAR.Params[0].asinteger:=1
                      else                             //NFE
                      SALVAR.Params[0].asinteger:=0;

                   if CheckBox2.Checked = true then
                      SALVAR.Params[1].asinteger:=1
                      else                            //NFCE
                      SALVAR.Params[1].asinteger:=0;

                   if CheckBox3.Checked = true then
                      SALVAR.Params[2].asinteger:=1
                      else                          //NFSE
                      SALVAR.Params[2].asinteger:=0;


                   if CheckBox4.Checked = true then
                      SALVAR.Params[3].asinteger:=1
                      else                            //MDFE
                      SALVAR.Params[3].asinteger:=0;


                   if CheckBox5.Checked = true then
                      SALVAR.Params[4].asinteger:=1
                      else                           //CTE-E
                      SALVAR.Params[4].asinteger:=0;


                   if CheckBox6.Checked = true then
                      SALVAR.Params[5].asinteger:=1
                      else                          //SALLES
                      SALVAR.Params[5].asinteger:=0;


                    if CheckBox7.Checked = true then
                      SALVAR.Params[6].asinteger:=1
                      else                          //SALLES
                      SALVAR.Params[6].asinteger:=0;

                  SALVAR.Params[7].asinteger:=StrToInt(cxSpinEdit1.Text);
                  SALVAR.Params[8].asinteger:=StrToInt(cxSpinEdit2.Text);


                    if CheckBox21.Checked = true then
                      SALVAR.Params[9].asinteger:=1
                      else
                      SALVAR.Params[9].asinteger:=0;

                    salvar.Params[10].Asinteger:=Frm_Quadro_Implantacao.Query_QuadroID_CLIENTE.AsInteger;;
                    salvar.ExecSQL;
              end;

            salvar.close;
            salvar.sql.text:='select count(*) from controle_modotrabalho where id_cliente = :i';
            salvar.Params[0].asinteger:=Frm_Quadro_Implantacao.Query_QuadroID_CLIENTE.AsInteger;
            salvar.Open();

              if salvar.FieldByName('count').AsInteger = 0 then
                 begin
                  salvar.close;
                   salvar.sql.Text:='INSERT INTO controle_modotrabalho(iD_CLIENTE,ID_MODO, '+ //0
                   '                                                  GRADE, '+    //1
                   '                                                  ESTOQUE_POR_DEPTO, '+  //2
                   '                                                  CONTROLE_DE_ENTREGA, '+   //3
                   '                                                  ENTREGA_BAIXA_ESTOQUE, '+    //4
                   '                                                  FRENTE_CAIXA,  '+//5
                   '                                                  ATENDIMENTO, ' +   //6
                   '                                                  BOLETO_BANCARIO, '+       //7
                   '                                                  TRABALHA_OS, '+              //8
                                                                      'PROPRIEDADE, '+                //9
                                                                      'LOTE, '+                          //10
                                                                      'CONDICIONAL, '+                 //11
                                                                      'PREST_SERVI )'+                //12

                   'VALUES (:CODIGO,(select gen_id(controle_modotrabalho_id,1) from RDB$DATABASE), '+   //0
                                                                                                 ' :GRADE, ' +    //1
                                                                                                 ' :EST_DEPTO , ' +  //2
                                                                                                 ' :CONTRO_ENTREGA, ' + //3
                                                                                                 ' :ENT_BAIXA_EST, ' + //4
                                                                                                 ' :FATURA_CAIXA,' +  //5
                                                                                                 ' :FATURA_ATEND, ' + //6
                                                                                                 ' :BOLETO_BANC, ' +  //7
                                                                                                 ' :TRAB_OS, ' +   //8
                                                                                                 ' :TRAB_PROPRI,  ' + //9
                                                                                                 ' :LOTE,  ' +    //10
                                                                                                 ' :TRAB_COND, ' +    //11
                                                                                                 ' :PREST_SERVI ' +  //12
                                                                                                 ' )';

                     salvar.Params[0].Asinteger:=Frm_Quadro_Implantacao.Query_QuadroID_CLIENTE.AsInteger;

                    if CheckBox15.Checked = true then
                      salvar.Params[1].asinteger:=1
                      else                             //grade
                      salvar.Params[1].asinteger:=0;

                    if CheckBox16.Checked = true then
                       salvar.Params[2].asinteger:=1
                      else                            //est_depto
                       salvar.Params[2].asinteger:=0;

                    if CheckBox17.Checked = true then
                       salvar.Params[3].asinteger:=1
                      else                                  //controle_entr
                       salvar.Params[3].asinteger:=0;

                       salvar.Params[4].asinteger:=RadioGroup1.ItemIndex;  //ENT_BAIXA_EST
                       salvar.Params[5].asinteger:=RadioGroup2.ItemIndex; //:FATURA_CAIXA


                    if CheckBox20.Checked = true then
                       salvar.Params[7].asinteger:=1
                      else                                  //BOLETO_BANC
                       salvar.Params[7].asinteger:=0;

                    if CheckBox31.Checked = true then
                       salvar.Params[8].asinteger:=1
                      else                                   //os
                      salvar.Params[8].asinteger:=0;


                    if CheckBox29.Checked = true then
                       salvar.Params[9].asinteger:=1
                      else                                   //TRAB_PROPRI
                       salvar.Params[9].asinteger:=0;

                    if CheckBox18.Checked = true then
                       salvar.Params[10].asinteger:=1
                      else                                    //LOTE
                       salvar.Params[10].asinteger:=0;

                     if CheckBox30.Checked = true then
                       salvar.Params[11].asinteger:=1
                      else                                    //TRAB_COND
                       salvar.Params[11].asinteger:=0;

                       salvar.Params[12].asinteger:=RadioGroup3.ItemIndex;

                        salvar.ExecSQL;
                 end
                 else
                 begin
                  salvar.close;
                   salvar.sql.Text:=' UPDATE controle_modotrabalho SET   GRADE =:GRADE, ' +
                                    '                        ESTOQUE_POR_DEPTO =:EST_DEPTO , ' +
                                    '                      CONTROLE_DE_ENTREGA =:CONTRO_ENTREGA, ' +
                                    '                    ENTREGA_BAIXA_ESTOQUE =:ENT_BAIXA_EST, ' +
                                    '                             FRENTE_CAIXA =:FATURA_CAIXA, ' +
                                    '                              ATENDIMENTO =:FATURA_ATEND, ' +
                                    '                          BOLETO_BANCARIO =:BOLETO_BANC, ' +
                                    '                              TRABALHA_OS =:TRAB_OS, ' +
                                    '                              PROPRIEDADE =:TRAB_PROPRI, ' +
                                    '                                    LOTE  =:LOTE, ' +
                                    '                              CONDICIONAL =:TRAB_COND, ' +
                                    '                              PREST_SERVI =:PREST_SERVI ' +
                                    '              WHERE controle_modotrabalho.id_cliente =:CODIGO';



                    if CheckBox15.Checked = true then
                      salvar.Params[0].asinteger:=1
                      else                             //grade
                      salvar.Params[0].asinteger:=0;

                    if CheckBox16.Checked = true then
                       salvar.Params[1].asinteger:=1
                      else                            //est_depto
                       salvar.Params[1].asinteger:=0;

                    if CheckBox17.Checked = true then
                       salvar.Params[2].asinteger:=1
                      else                                  //controle_entr
                       salvar.Params[2].asinteger:=0;

                       salvar.Params[3].asinteger:=RadioGroup1.ItemIndex;  //ENT_BAIXA_EST
                       salvar.Params[4].asinteger:=RadioGroup2.ItemIndex; //:FATURA_CAIXA


                    if CheckBox20.Checked = true then
                       salvar.Params[5].asinteger:=1
                      else                                  //BOLETO_BANC
                       salvar.Params[5].asinteger:=0;

                    if CheckBox31.Checked = true then
                       salvar.Params[6].asinteger:=1
                      else                                   //os
                      salvar.Params[6].asinteger:=0;


                    if CheckBox29.Checked = true then
                       salvar.Params[7].asinteger:=1
                      else                                   //TRAB_PROPRI
                       salvar.Params[7].asinteger:=0;

                    if CheckBox18.Checked = true then
                       salvar.Params[8].asinteger:=1
                      else                                    //LOTE
                       salvar.Params[8].asinteger:=0;

                     if CheckBox30.Checked = true then
                       salvar.Params[9].asinteger:=1
                      else                                    //TRAB_COND
                       salvar.Params[9].asinteger:=0;

                       salvar.Params[10].asinteger:=RadioGroup3.ItemIndex;

                       salvar.Params[11].asinteger:=RadioGroup3.ItemIndex;

                       salvar.Params[12].Asinteger:=Frm_Quadro_Implantacao.Query_QuadroID_CLIENTE.AsInteger;

                        salvar.ExecSQL;








                 end;

end;

procedure TFrm_Implantacao.FormShow(Sender: TObject);
begin
Query_ImpNotas.Refresh;
 if Query_ClientesCOLISEU_GESTAO.ASINTEGER = 1 then
             CheckBox8.Checked := TRUE
             ELSE
             CheckBox8.Checked := FALSE;


              CheckBox8Click(sender);

          if Query_ClientesCOLISEU_FISCAL.ASINTEGER = 1 then
             CheckBox9.Checked := TRUE
             ELSE
             CheckBox9.Checked := FALSE;

              CheckBox9Click(sender);



          if Query_ClientesSILENUS_PDV.ASINTEGER = 1 then
             CheckBox10.Checked := TRUE
             ELSE
             CheckBox10.Checked := FALSE;



          if Query_ClientesCOLISEU_GRAOS.ASINTEGER = 1 then
             CheckBox11.Checked := TRUE
             ELSE
             CheckBox11.Checked := FALSE;

             CheckBox11Click(sender);



          if Query_ClientesCOLISEU_TRANSPORTE.ASINTEGER = 1 then
             CheckBox12.Checked := TRUE
             ELSE
             CheckBox12.Checked := FALSE;

             CheckBox12Click(sender);



          if Query_ClientesAPP.ASINTEGER = 1 then
             CheckBox13.Checked := TRUE
             ELSE
             CheckBox13.Checked := FALSE;

             CheckBox13Click(sender);




          if Query_ClientesCOLISEU_WEB.ASINTEGER = 1 then
             CheckBox14.Checked := TRUE
             ELSE
             CheckBox14.Checked := FALSE;





          if Query_ClientesNFe.ASINTEGER = 1 then
             CheckBox1.Checked := TRUE
             ELSE
             CheckBox1.Checked := FALSE;




          if Query_ClientesNFCE.ASINTEGER = 1 then
             CheckBox2.Checked := TRUE
             ELSE
             CheckBox2.Checked := FALSE;





          if Query_ClientesNFSE.ASINTEGER = 1 then
             CheckBox3.Checked := TRUE
             ELSE
             CheckBox3.Checked := FALSE;

          if Query_ClientesMDFE.ASINTEGER = 1 then
             CheckBox4.Checked := TRUE
             ELSE
             CheckBox4.Checked := FALSE;

          if Query_ClientesCTE.ASINTEGER = 1 then
             CheckBox5.Checked := TRUE
             ELSE
             CheckBox5.Checked := FALSE;

          if Query_ClientesAPP_SALES.ASINTEGER = 1 then
             CheckBox6.Checked := TRUE
             ELSE
             CheckBox6.Checked := FALSE;

          if Query_ClientesAPP_DASH.ASINTEGER = 1 then
             CheckBox7.Checked := TRUE
             ELSE
             CheckBox7.Checked := FALSE;

          if DM.Query_ClientesINFO_INDUSTRIA.ASINTEGER = 1 then
             CheckBox19.Checked := TRUE
             ELSE
             CheckBox19.Checked := FALSE;

          if DM.Query_ClientesSPED.AsInteger = 1 then
             CheckBox21.Checked := TRUE
             ELSE
             CheckBoX21.Checked := FALSE;
end;

end.
