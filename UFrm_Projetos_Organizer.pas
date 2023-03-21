unit UFrm_Projetos_Organizer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids,
  Vcl.ExtCtrls, RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzLabel, RzDBLbl, dxGDIPlusClasses,
  RzBckgnd, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxScrollBar, Vcl.Menus, Vcl.ComCtrls, dxCore,
  dxCoreClasses, cxGraphics, dxGDIPlusAPI, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control,ShellApi, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxColorComboBox, cxDBColorComboBox, RzGroupBar, Vcl.Buttons,
  RzButton, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  Vcl.XPStyleActnCtrls, cxScrollBox, dxSkinscxPCPainter,
  dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl,
  dxColorEdit, dxDBColorEdit, cxGridCustomPopupMenu, cxGridPopupMenu,
   cxMemo, cxRichEdit, cxDBRichEdit, Vcl.WinXCtrls,
  System.ImageList, Vcl.ImgList;

type
  TFrm_Projetos_Organizer = class(TForm)
    RzPanel4: TRzPanel;
    Image3: TImage;
    Image4: TImage;
    Image1: TImage;
    Panel1: TPanel;
    Image2: TImage;
    RzPanel3: TRzPanel;
    RzPanel1: TRzPanel;
    FDStoredProc1: TFDStoredProc;
    Tab_Notificacao: TFDTable;
    Tab_NotificacaoID: TIntegerField;
    Tab_NotificacaoID_NOTA: TIntegerField;
    Tab_NotificacaoID_CARTAO: TIntegerField;
    Tab_NotificacaoID_USUARIO: TIntegerField;
    Tab_NotificacaoSTATUS: TIntegerField;
    Tab_NotificacaoDESCRICAO: TStringField;
    PopupMenu1: TPopupMenu;
    query_not: TFDQuery;
    DS_Query_not: TDataSource;
    query_notID: TIntegerField;
    query_notID_NOTA: TIntegerField;
    query_notID_CARTAO: TIntegerField;
    query_notID_USUARIO: TIntegerField;
    query_notSTATUS: TIntegerField;
    query_notDESCRICAO: TStringField;
    query_notDESCRITIVO: TMemoField;
    Image5: TImage;
    SplitView1: TSplitView;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    cxDBRichEdit1: TcxDBRichEdit;
    Panel2: TPanel;
    Query_Messagens: TFDQuery;
    DS_Query_Messagens: TDataSource;
    DBText2: TDBText;
    Query_MessagensCOUNT: TIntegerField;
    Tab_NotificacaoDATA_HORA: TSQLTimeStampField;
    query_notDATA_HORA: TSQLTimeStampField;
    DBText3: TDBText;
    ImageList1: TImageList;
//    procedure Panel1Click(Sender: TObject);
    function bloco(Panel_Principal_Tit:String;id_bloco:String): String;
    function quer(nome : String):TFDQuery;
    PROCEDURE quer_Y(Sender: TObject);
    procedure Lancar(Sender: TObject);
    procedure Ordenar(sender: TObject);
    procedure exclui_bloco(sender: TObject);
    procedure Pop_Ponto(Sender: TObject);
    procedure Troca_Bloco(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure RzPanel2Click(Sender: TObject);
    procedure RzPanel1Click(Sender: TObject);
    procedure carrega_bloco;
    PROCEDURE NOTE(Sender: TObject);
    PROCEDURE NOTE_DBTex(Sender: TObject);
    procedure NOTE_POP(Sender: TObject);
    procedure Tab_NotificacaoAfterInsert(DataSet: TDataSet);
    procedure Image5Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure FDEventAlerter1Alert(ASender: TFDCustomEventAlerter;
      const AEventName: string; const AArgument: Variant);
    procedure DBCtrlGrid1DblClick(Sender: TObject);
    procedure Query_MessagensAfterOpen(DataSet: TDataSet);
    procedure Query_MessagensAfterRefresh(DataSet: TDataSet);
    procedure RzPanel3Click(Sender: TObject);
    PROCEDURE USUARIOS(Sender: TObject);

  private
    procedure sub_Menu;


  public
  VAR
  EVENTO : INTEGER;

  Const
  InputBoxMsg = WM_USER + 123;

  end;

  TM_Thread = class(TThread)
  private



  public
    constructor Create();
    procedure Execute; override;
  end;




var
  Frm_Projetos_Organizer: TFrm_Projetos_Organizer;

implementation

{$R *.dfm}

uses UDM, UFrm_Organizer, UFrm_Org_ADDQuadros, UFrm_Org_Cartao, UFrm_Org_Notas,
   UFrm_Org_OrdCartao, UFrm_Principal, UFrm_Notificacao, UFrm_Usuarios;








function TFrm_Projetos_Organizer.bloco(Panel_Principal_Tit:String;id_bloco:String): String;
VAR
QUERY,query_quadros : TFDQUERY;
Panel,Panel_tool,tool_menu,Panel_color: Trzpanel;
Panel_tool_Grid: TRzGroupBox;
Panel_Botton,Panel_botton_grid : TPanel;
titulo,Add_Cartao,Alteracao,B_Cartao : TRZLabel;
lista : TDBCtrlGrid;
titulo_cartao : TDBText;
anexo_img,chat_img :TImage;
Enviar,Adionar_Det,Sub_Menu,Adiciona_Cart : TMenuItem;
PopMenu : TPopupMenu;
Data_source : TDataSource;
dxDBColorEdit1 : TdxDBColorEdit;
button : TRzBitBtn;


begin





            Panel:=TRZPanel.Create(Frm_Projetos_Organizer);

            Panel.Name:='Panel_Principal'+id_bloco;

            panel.Width:=250;
            Panel.AlignWithMargins:=true;
            panel.Margins.Left:=10;
            panel.Parent:=  TcxScrollBox(FindComponent('scrool'));
          //  Panel.Transparent:=true;
            Panel.Align := alleft;

        //      Panel.Left := Panel.po[lastbtnidx].Left + bar.Buttons[lastbtnidx].Width


            //panel do bloco

            Panel_tool:=TRzPanel.Create(Frm_Projetos_Organizer);
            Panel_tool.Align := altop;
            Panel_tool.Name:='toolnome'+id_bloco;
            Panel_tool.AlignWithMargins:=false;
            Panel_tool.Color:=CLWHITE;
            Panel_tool.BorderOuter:=RzPanel4.BorderOuter;
            Panel_tool.Height:=50;
            Panel_tool.Parent:= Panel;
            Panel_tool.Transparent:=true;

            titulo:=TRZLabel.Create(Frm_Projetos_Organizer);
            titulo.Align:=alTOP;
           // titulo.AlignWithMargins:=true;
            titulo.Alignment:=taCenter;
            titulo.Margins.Top := 10;
            titulo.Margins.Bottom := 10;
            titulo.Margins.left := 0;
            titulo.Margins.Right := 0;
            TITULO.Color := CLBLACK;
            titulo.Layout:=tlCenter;
            titulo.Font.Name:='Calibri';
            titulo.Font.Style:=titulo.Font.Style+[fsbold];
            titulo.Font.Size:=12;
            titulo.Font.Color:=clWhite;
            titulo.Name:='Titulo_P'+id_bloco;
            titulo.Parent:= Panel_tool;
            titulo.Caption:=Panel_Principal_Tit;
            titulo.Transparent:=false;

            tool_menu:=TRzPanel.Create(Frm_Projetos_Organizer);
            tool_menu.Align := alCLIENT;
            tool_menu.Name:='toolmenu'+id_bloco;
            tool_menu.AlignWithMargins:=false;
            tool_menu.Color:=CLWHITE;;
            tool_menu.BorderOuter:=RzPanel4.BorderOuter;
            tool_menu.Height:=20;
            tool_menu.Parent:= Panel_tool;
            tool_menu.Transparent:=true;
            if (Frm_Principal.id_usu = 1) or (Frm_Principal.id_usu = 3) or  (Frm_Principal.id_usu = 14) then
                tool_menu.Visible:=true
                else
                tool_menu.Visible:=false;




            button:=TRZBitBtn.Create(Frm_Projetos_Organizer);
            button.Align:=alRight;
            button.Images:=ImageList1;
            button.AlignWithMargins:=true;
            button.ImageIndex:=0;
            button.Alignment:=taCenter;
            button.Margins.Top := 3;
            button.Margins.Bottom := 3;
            button.Margins.left := 0;
            button.Margins.Right := 3;
            button.Font.Name:='Calibri';
            BUTTON.COLOR:=CLWHITE;
       //     button.Font.Style:=button.Font.Style+[fsbold];
            button.Font.Size:=6;
            button.Font.Color:=clBLACK;
            button.Name:='Titulo_O'+id_bloco;
            button.Parent:= tool_menu;
            button.Caption:='';
            button.onClick := exclui_bloco;
            button.ThemeAware:=false;
            button.HotTrack:=true;
            button.Cursor:=crHandPoint;
            button.tag:=StrToInt(id_bloco);
            button.Width:=30;




            //fim panel do bloco



            query:=TFDQuery.Create(Frm_Projetos_Organizer);
            query.Connection:=dm.Conexao;
            query.Name:='query_nome'+id_bloco;
            query.SQL.Text:='SELECT CONTROLE_QUADRO_CARTAO.*, ' +
                            ' ''Usuário:''|| FUNCIONARIOS.nome nome, '+
                            ' ''Cliente:''|| clientes.nome_fantasia nome_fantasia ,'+
                            '       (select count(*) from  controle_quadro_cartaonotas where controle_quadro_cartaonotas.id_cartao=CONTROLE_QUADRO_CARTAO.id)Notas, ' +
                            '       (select count(*) from  controle_quadro_cartaoanexo where controle_quadro_cartaoanexo.id_cartao=CONTROLE_QUADRO_CARTAO.id)Anexo '+
                            ' FROM CONTROLE_QUADRO_CARTAO '+
                            ' LEFT JOIN  funcionarios ON   FUNCIONARIOS.id_funcionario = CONTROLE_QUADRO_CARTAO.id_usuario '+
                            ' left join CLIENTES ON CLIENTES.id_cliente=CONTROLE_QUADRO_CARTAO.id_cliente '+
                            ' where ID_BLOCO ='+id_bloco+' order by posicao';
            query.Open();

            Data_source:=TDataSource.Create(Frm_Projetos_Organizer);
            Data_source.Name:='dataset_name'+id_bloco;
            Data_source.DataSet:=query;



            lista:=TDBCtrlGrid.Create(Frm_Projetos_Organizer);
            lista.Align := alClient;
            lista.Name:='L_CtrlG'+id_bloco;
            lista.Color:=clWhite;
           // lista.AlignWithMargins:=true;
            lista.DataSource:=Data_source;
            lista.Parent:= panel;
            lista.RowCount:=6;
            Lista.SelectedColor:=$00EDE6DC;


            Panel_tool_Grid:=TRzGroupBox.Create(Frm_Projetos_Organizer);
            Panel_tool_Grid.Align := alclient;
            Panel_tool_Grid.Name:='Panel_tool_Grid'+id_bloco;
        //    Panel_tool_Grid.BevelOuter:=bvNone;
           // Panel_tool_Grid.Width:=320;
            Panel_tool_Grid.Parent:= TdbCtrlPanel(lista.Controls[0]);
            Panel_tool_Grid.Caption:='';
          //  Panel_tool_Grid.AlignWithMargins:=true;
            Panel_tool_Grid.Margins.Left:=5;
            Panel_tool_Grid.Margins.Right:=5;
            Panel_tool_Grid.Margins.top:=5;
            Panel_tool_Grid.Margins.Bottom:=5;
            Panel_tool_Grid.ParentColor:=false;
            Panel_tool_Grid.Color:=clWhite;
            Panel_tool_Grid.Tag:=StrToInt(id_bloco);
            Panel_tool_Grid.OnDblClick:=NOTE;



            //Panel_tool_Grid.VisualStyle:=RzPanel1.VisualStyle;
           // Panel_tool_Grid.OnDblClick:=quer_Y;






            titulo_cartao:=TDBText.Create(Frm_Projetos_Organizer);
            titulo_cartao.Align:=alTOP;
           // titulo_cartao.AlignWithMargins:=true;
            titulo_cartao.Alignment:=taLeftJustify;
            titulo_cartao.Font.Name:='Calibri';
            titulo_cartao.Font.Style:=titulo_cartao.Font.Style+[fsbold];
            titulo_cartao.Font.Size:=8;
            titulo_cartao.Font.Color:=clblack;
            titulo_cartao.Name:='Titulo_C'+id_bloco;
            titulo_cartao.Parent:=Panel_tool_Grid;
            titulo_cartao.ParentColor:=False;
            titulo_cartao.Transparent:=false;
            titulo_cartao.DataSource:=Data_source;
            titulo_cartao.DataField:='TITULO';
            titulo_cartao.tag:=StrToInt(id_bloco);
            titulo_cartao.OnDblClick:=NOTE_DBTex;


            titulo_cartao:=TDBText.Create(Frm_Projetos_Organizer);
            titulo_cartao.Align:=alTOP;
          //  titulo_cartao.AlignWithMargins:=true;
            titulo_cartao.Alignment:=taLeftJustify;
            titulo_cartao.Font.Name:='Calibri';
            titulo_cartao.Font.Style:=titulo_cartao.Font.Style;
            titulo_cartao.Font.Size:=8;
            titulo_cartao.Font.Color:=clblack;
            titulo_cartao.Name:='USUARIO'+id_bloco;
            titulo_cartao.Parent:=Panel_tool_Grid;
            titulo_cartao.ParentColor:=False;
            titulo_cartao.Transparent:=false;
            titulo_cartao.DataSource:=Data_source;
            titulo_cartao.DataField:='NOME';
            titulo_cartao.tag:=StrToInt(id_bloco);
            titulo_cartao.OnDblClick:=NOTE_DBTex;



            titulo_cartao:=TDBText.Create(Frm_Projetos_Organizer);
            titulo_cartao.Align:=alTOP;
           // titulo_cartao.AlignWithMargins:=true;
            titulo_cartao.Alignment:=taLeftJustify;
            titulo_cartao.Font.Name:='Calibri';
            titulo_cartao.Font.Style:=titulo_cartao.Font.Style;
            titulo_cartao.Font.Size:=8;
            titulo_cartao.Font.Color:=clblack;
            titulo_cartao.Name:='CLIENTE'+id_bloco;
            titulo_cartao.Parent:=Panel_tool_Grid;
            titulo_cartao.ParentColor:=False;
            titulo_cartao.Transparent:=false;
            titulo_cartao.DataSource:=Data_source;
            titulo_cartao.DataField:='nome_fantasia';
            titulo_cartao.tag:=StrToInt(id_bloco);
            titulo_cartao.OnDblClick:=NOTE_DBTex;


            Panel_botton_grid:=TPanel.Create(Frm_Projetos_Organizer);
            Panel_botton_grid.Align := alBottom;
            Panel_botton_grid.Name:='Panel_botton_grid'+id_bloco;
            Panel_botton_grid.Height:=20;
            Panel_botton_grid.BevelOuter:=bvNone;
            Panel_botton_grid.Parent:=Panel_tool_Grid;
            Panel_botton_grid.ShowCaption:=false;

            Panel_botton_grid.ParentColor:=false;
            Panel_botton_grid.Color:=clWhite;

                 B_Cartao:=TRzLabel.Create(Panel_tool_Grid);
            B_Cartao.Align:=alRight;
            B_Cartao.Alignment:=taRightJustify;
            B_Cartao.AutoSize:=TRUE;
            B_Cartao.Caption:='...';
            B_Cartao.Font.Name:='Calibri';
            //B_Cartao.Font.Style:=B_Cartao.Font.Style;
            B_Cartao.Font.Size:=8;
            B_Cartao.Font.Color:=clblack;
            B_Cartao.Name:='PBotton'+id_bloco;
            B_Cartao.Parent:= Panel_botton_grid;
            B_Cartao.tag:=StrToInt(id_bloco);
            B_Cartao.PopupMenu:=PopMenu;
            B_Cartao.OnClick:=Pop_Ponto;
            Screen.Cursor:=crHandPoint;
            B_Cartao.Cursor:=Screen.Cursor;



                                         {
            dxDBColorEdit1:=TdxDBColorEdit.Create(Panel_tool_Grid);
            dxDBColorEdit1.LEFT:=134;
            dxDBColorEdit1.TOP:=0;
            dxDBColorEdit1.Width:=90;
            dxDBColorEdit1.Name:='color'+id_bloco;
        //    dxDBColorEdit1.BevelOuter:=bvNone;
           // dxDBColorEdit1.Width:=320;
            dxDBColorEdit1.Parent:= Panel_botton_grid;
            dxDBColorEdit1.DataBinding.DataField:='ETIQUETA';
            dxDBColorEdit1.Properties.ReadOnly:=TRUE;
            dxDBColorEdit1.AlignWithMargins:=true;
            dxDBColorEdit1.Margins.Left:=5;
            dxDBColorEdit1.Margins.Right:=5;
            dxDBColorEdit1.Margins.top:=5;
            dxDBColorEdit1.Margins.Bottom:=5;
            dxDBColorEdit1.Enabled:=FALSE;   }



            anexo_img :=TImage.Create(Frm_Projetos_Organizer);
            anexo_img.Picture:=Image3.Picture;
            anexo_img.Name:='image_anexo'+id_bloco;
            anexo_img.Parent:=Panel_botton_grid;
            anexo_img.Width:=Image3.Width;
            anexo_img.Height:=Image3.Height;
            anexo_img.Left:=8;
            anexo_img.TOP:=0;
            anexo_img.Proportional:=true;



            titulo_cartao:=TDBText.Create(Panel_botton_grid);
         //  titulo_cartao.Align:=alLEFT;
            titulo_cartao.AlignWithMargins:=true;
            titulo_cartao.Alignment:=taLeftJustify;
            titulo_cartao.Font.Name:='Calibri';
            titulo_cartao.Font.Style:=titulo_cartao.Font.Style+[fsbold];
            titulo_cartao.Font.Size:=10;
            titulo_cartao.Font.Color:=clblack;
            titulo_cartao.Name:='Anexo'+id_bloco;
            titulo_cartao.Parent:=Panel_botton_grid;
            titulo_cartao.ParentColor:=False;
            titulo_cartao.Transparent:=false;
            titulo_cartao.TOP:=0;
            titulo_cartao.LEFT:=37;
            titulo_cartao.DataSource:=Data_source;
            titulo_cartao.DataField:='ANEXO';
           // titulo_cartao.tag:=StrToInt(id_bloco);











            chat_img :=TImage.Create(Frm_Projetos_Organizer);
            chat_img.Picture:=Image4.Picture;
            chat_img.Name:='image_chat'+id_bloco;
            chat_img.Parent:=Panel_botton_grid;
            chat_img.Width:=Image3.Width;
            chat_img.Height:=Image3.Height;
            chat_img.TOP:=0;
            chat_img.LEFT:=71;
           // chat_img.Align:=alleft;
            chat_img.Proportional:=true;




            titulo_cartao:=TDBText.Create(Panel_botton_grid);
           // titulo_cartao.Align:=alLEFT;
            titulo_cartao.AlignWithMargins:=true;
            titulo_cartao.Alignment:=taLeftJustify;
            titulo_cartao.Font.Name:='Calibri';
            titulo_cartao.Font.Style:=titulo_cartao.Font.Style+[fsbold];
            titulo_cartao.Font.Size:=8;
            titulo_cartao.Font.Color:=clblack;
            titulo_cartao.Name:='NOTAS'+id_bloco;
            titulo_cartao.Parent:=Panel_botton_grid;
            titulo_cartao.ParentColor:=False;
            titulo_cartao.Transparent:=false;
            titulo_cartao.DataSource:=Data_source;
            titulo_cartao.DataField:='NOTAS';
            titulo_cartao.TOP:=0;
            titulo_cartao.LEFT:=100;
            titulo_cartao.tag:=StrToInt(id_bloco);


             PopMenu:=TPopupMenu.Create(Frm_Projetos_Organizer);
             PopMenu.Name:='PopMenu'+id_bloco;


            Adiciona_Cart := TMenuItem.Create(PopMenu);

            //Adiciona_Cart.Margins.Top:=5;
            //Adiciona_Cart.Margins.Bottom:=5;
            Adiciona_Cart.Name:= 'Adiciona_Cart'+id_bloco;
            Adiciona_Cart.Tag :=StrToInt(id_bloco);
            Adiciona_Cart.onClick := Lancar;
            Adiciona_Cart.Caption := '+ Adicionar Cartão';

            PopMenu.Items.Add(Adiciona_Cart);

            Adiciona_Cart := TMenuItem.Create(PopMenu);
            Adiciona_Cart.Name:= 'Ordenar_Cart'+id_bloco;
            Adiciona_Cart.Tag :=StrToInt(id_bloco);
            Adiciona_Cart.onClick := Ordenar;
            Adiciona_Cart.Caption := 'ΛV Ordenar Cartão';



            PopMenu.Items.Add(Adiciona_Cart);








            Enviar := TMenuItem.Create(PopMenu);
            Enviar.Caption := 'Adicionar/ Alterar Notas';
            Enviar.Name := 'not'+id_bloco;
            Enviar.Tag  :=StrToInt(id_bloco);
            Enviar.OnClick:=NOTE_POP;

            PopMenu.Items.Add(Enviar);


            Enviar := TmenuItem.Create(PopMenu);
            Enviar.Caption := 'Enviar Para';
            Enviar.Name := 'Enviar'+id_bloco;
            PopMenu.Items.Add(Enviar);




            //sub_menu

                      query_quadros:=TFDQuery.Create(Frm_Projetos_Organizer);
                      query_quadros.Connection:=dm.Conexao;
                      query_quadros.SQL.Text:='SELECT * FROM CONTROLE_QUADRO_BLOCO ' +
                                               'where id_quadro =:c and id <>:i';
                      query_quadros.params[0].AsInteger:=Frm_Organizer.Query_QuadroID_QUADRO.AsInteger;
                      query_quadros.params[1].AsInteger:=StrToInt(id_bloco);
                      query_quadros.Open();


                      query_Quadros.First;
                      while not query_quadros.Eof do
                         begin
                              Sub_Menu := TmenuItem.Create(Enviar);
                              Sub_Menu.Caption := query_quadros.FieldByName('descricao').AsString;
                            //  Sub_Menu.Name := 'Sub_Menu'+id_bloco;
                              Sub_Menu.Tag :=StrToInt(id_bloco) ;
                              Sub_Menu.OnClick:=Troca_Bloco;
                              Sub_Menu.ImageIndex:= query_quadros.FieldByName('id').Asinteger;
                              Enviar.Add(Sub_Menu);
                              query_quadros.next;
                         end;

                     query_quadros.free;
             ////
             ///
             ///
             ///

                     Adiciona_Cart := TMenuItem.Create(PopMenu);
            Adiciona_Cart.Name:= '_'+id_bloco;
            Adiciona_Cart.Caption := '-';



            PopMenu.Items.Add(Adiciona_Cart);

          {  Adiciona_Cart := TMenuItem.Create(PopMenu);
            Adiciona_Cart.Name:= 'exclui_bloco'+id_bloco;
            Adiciona_Cart.Tag :=StrToInt(id_bloco);
            Adiciona_Cart.onClick := exclui_bloco;
            Adiciona_Cart.Caption := 'Excluir Bloco';



            PopMenu.Items.Add(Adiciona_Cart);





            {titulo_cartao:=TDBText.Create(Frm_Projetos_Organizer);
            titulo_cartao.Align:=alclient;
            titulo_cartao.AlignWithMargins:=true;
            titulo_cartao.Alignment:=taLeftJustify;
            titulo_cartao.Font.Name:='Calibri';
            titulo_cartao.Font.Style:=titulo_cartao.Font.Style+[fsbold];
            titulo_cartao.Font.Size:=12;
            titulo_cartao.Font.Color:=clblack;
            titulo_cartao.Name:=Titulo_C;
            titulo_cartao.Parent:=Panel_tool_Grid;
            titulo_cartao.DataSource:=Data_source;
            titulo_cartao.DataField:='TITULO';
            titulo_cartao.tag:=StrToInt(id_bloco);  }








end;

procedure TFrm_Projetos_Organizer.carrega_bloco;
var
 carrega_blocos:TFDQuery;
 scrool_b : TcxScrollBox;
begin

         scrool_b:=TcxScrollBox.Create(Frm_Projetos_Organizer);
         scrool_b.Name := 'scrool';
         scrool_b.Align:=alClient;
         scrool_b.Transparent:=TRUE;
      //   scrool_b.LookAndFeel.ScrollbarMode:=sbmClassic;
         scrool_b.Parent:=Frm_Projetos_Organizer;












             carrega_blocos:=TFDQuery.Create(nil);
             carrega_blocos.Connection:=dm.Conexao;
             carrega_blocos.SQL.Text:='SELECT * FROM CONTROLE_QUADRO_BLOCO ' +
                                     'where id_quadro =:c order by id';

             carrega_blocos.params[0].AsInteger:=Frm_Organizer.Query_QuadroID_QUADRO.AsInteger;
             carrega_blocos.Open();






             if carrega_blocos.RecordCount<>0 then
                begin
                   carrega_blocos.First;
                   while not carrega_blocos.eof do
                    begin
                    Frm_Projetos_Organizer.bloco(carrega_blocos.FieldByName('DESCRICAO').asstring,IntToStr(carrega_blocos.FieldByName('id').AsInteger));

                      carrega_blocos.next;
                    end;

                end;

               carrega_blocos.Free;

end;

procedure TFrm_Projetos_Organizer.DBCtrlGrid1DblClick(Sender: TObject);

VAR
NOTIFIC : TFDQUERY;
begin
if LENGTH(query_notID_NOTA.AsSTRING) <>0 then
   BEGIN
   SplitView1.Close;
   Frm_Org_Notas:=TFrm_Org_Notas.Create(self);
   Frm_Org_Notas.Query_Cartao.Close;
   Frm_Org_Notas.Query_Cartao.Params[0].AsInteger:= query_notID_CARTAO.AsInteger;
   Frm_Org_Notas.Query_Cartao.open;
   Frm_Org_Notas.ShowModal;
   END
   ELSE
   BEGIN
     NOTIFIC:=TFDQUERY.Create(NIL);
     NOTIFIC.Connection:=DM.Conexao;
     NOTIFIC.SQL.Text:='UPDATE CONTROLE_QUADRO_NOTIFICACAO' +
                       ' SET STATUS = 1 ' +
                       ' WHERE  CONTROLE_QUADRO_NOTIFICACAO.id_usuario =:U AND '+
                       ' CONTROLE_QUADRO_NOTIFICACAO.id_nota is NULL AND STATUS = 0 ' +
                       ' AND (SELECT first 1 controle_quadro_bloco.id_quadro FROM controle_quadro_bloco ' +
                       ' left join controle_quadro_cartao on controle_quadro_cartao.id = '+
                       ' controle_quadro_notificacao.id_cartao' +
                       ' inner join controle_quadro_bloco B on B.id = controle_quadro_cartao.id_bloco) =:b';

         NOTIFIC.Params[0].AsInteger:=Frm_Principal.id_usu;
         NOTIFIC.Params[1].AsInteger:=Frm_Organizer.Query_QuadroID_QUADRO.AsInteger;
         NOTIFIC.ExecSQL;
   END;
end;

procedure TFrm_Projetos_Organizer.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
if query_notSTATUS.AsInteger = 0 then
   Panel2.Color:=clSilver
   else
   Panel2.Color:=clWhite;

end;

procedure TFrm_Projetos_Organizer.exclui_bloco(sender: TObject);
var
exclui:TRzBitBtn;
qur_exclui : TFDQuery;
begin
       exclui:= Sender as  TRzBitBtn;
   if Application.MessageBox('deseja realmente exclui o bloco selecionado?',
   'Confirmar',mb_YesNo+mb_IconInformation+mb_DefButton2)=mryes then
   if Application.MessageBox('*****ATENÇÃO AO EXCLUIR O BLOCO SERA EXCLUIDO TODOS OS CARTÕES, NOTAS E ANEXOS VINCULADOS AO BLOCO SELECIONADO, DESEJA REALMENTE EXCLUIR?*******'
   ,'ATENÇÃO',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=mryes then
     BEGIN
      // ShowMessage(IntToStr(exclui.Tag));
      qur_exclui  := TFDQuery.Create(nil);
      qur_exclui.Connection:=dm.Conexao;
      qur_exclui.SQL.Text:='delete from CONTROLE_QUADRO_BLOCO where id =:i';
      qur_exclui.Params[0].AsInteger:=exclui.Tag;
      qur_exclui.ExecSQL;



           EVENTO:=1;

           CLOSE;
     END;
end;

procedure TFrm_Projetos_Organizer.FDEventAlerter1Alert(
  ASender: TFDCustomEventAlerter; const AEventName: string;
  const AArgument: Variant);
begin

     ShowMessage('teste');
   {   query_not.Refresh;
      Query_Messagens.Refresh;}
//      end

end;

procedure TFrm_Projetos_Organizer.Image5Click(Sender: TObject);
begin
if SplitView1.Opened = false then
   SplitView1.Opened := true
   else
   SplitView1.Opened := false;
end;

procedure TFrm_Projetos_Organizer.Lancar(Sender: TObject);
var
lanca:TMenuItem;
begin
   lanca:= Sender as  TMenuItem;
   Frm_Org_Cartao:=TFrm_Org_Cartao.Create(self);
   Frm_Org_Cartao.Tab_Cartao.open;
   Frm_Org_Cartao.Tab_Cartao.Insert;

   Frm_Org_Cartao.Tab_CartaoID_BLOCO.AsInteger:=lanca.tag;
   Frm_Org_Cartao.ShowModal;
   dm.Conexao.Commit;
   TFDQuery(FindComponent('query_nome'+IntToStr(lanca.tag))).Refresh;


 //   quer('query'+IntToStr(lanca.tag));
end;

procedure TFrm_Projetos_Organizer.NOTE(Sender: TObject);
var
tag : TRzGroupBox;
begin
   tag := Sender as  TRzGroupBox;

  if TFDQuery(FindComponent('query_nome'+IntToStr(tag.tag))).RecordCount<>0 then
  BEGIN

   Frm_Org_Notas:=TFrm_Org_Notas.Create(self);
   Frm_Org_Notas.Query_Cartao.Close;
   Frm_Org_Notas.Query_Cartao.Params[0].AsInteger:=  TFDQuery(FindComponent('query_nome'+IntToStr(tag.tag))).FieldByName('id').AsInteger;
   Frm_Org_Notas.Query_Cartao.open;
   Frm_Org_Notas.ShowModal;



   TFDQuery(FindComponent('query_nome'+IntToStr(tag.tag))).Refresh;
  END;

end;

procedure TFrm_Projetos_Organizer.NOTE_DBTex(Sender: TObject);
var
tag : TDBText;
begin
   tag := Sender as  TDBText;
   Frm_Org_Notas:=TFrm_Org_Notas.Create(self);
   Frm_Org_Notas.Query_Cartao.Close;
   Frm_Org_Notas.Query_Cartao.Params[0].AsInteger:=  TFDQuery(FindComponent('query_nome'+IntToStr(tag.tag))).FieldByName('id').AsInteger;
   Frm_Org_Notas.Query_Cartao.open;
   Frm_Org_Notas.ShowModal;
end;

procedure TFrm_Projetos_Organizer.NOTE_POP(Sender: TObject);
var
tag : TMenuItem;
begin
   tag := Sender as  TMenuItem;
   Frm_Org_Notas:=TFrm_Org_Notas.Create(self);
   Frm_Org_Notas.Query_Cartao.Close;
   Frm_Org_Notas.Query_Cartao.Params[0].AsInteger:=  TFDQuery(FindComponent('query_nome'+IntToStr(tag.tag))).FieldByName('id').AsInteger;
   Frm_Org_Notas.Query_Cartao.open;
   Frm_Org_Notas.ShowModal;



   TFDQuery(FindComponent('query_nome'+IntToStr(tag.tag))).Refresh;

end;

procedure TFrm_Projetos_Organizer.Ordenar(sender: TObject);
var
Ordenar:TMenuItem;
begin
   Ordenar:= Sender as  TMenuItem;
   Frm_org_OrdCartao:=TFrm_org_OrdCartao.Create(self);
   Frm_org_OrdCartao.fdquery1.close;
   Frm_org_OrdCartao.fdquery1.params[0].asinteger:=TFDQuery(FindComponent('query_nome'+IntToStr(Ordenar.tag))).FieldByName('id_bloco').AsInteger;
   Frm_org_OrdCartao.fdquery1.Open;
   Frm_org_OrdCartao.showmodal;
   Frm_org_OrdCartao.free;
   TFDQuery(FindComponent('query_nome'+IntToStr(Ordenar.tag))).refresh;
//ShowMessage(DBCtrlGrid1.DataSource.DataSet.Name);
end;

procedure TFrm_Projetos_Organizer.Panel2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Projetos_Organizer.Pop_Ponto(Sender: TObject);
var
pop_p:TRzLabel;

begin

   pop_p:= Sender as  TRzLabel;
   TPopupMenu(FindComponent('PopMenu'+IntToStr(pop_p.tag))).Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);

end;

function TFrm_Projetos_Organizer.quer(nome: String): TFDQuery;

begin


    TFDQuery(FindComponent(nome)).refresh;

end;


procedure TFrm_Projetos_Organizer.Query_MessagensAfterOpen(DataSet: TDataSet);
begin
if Query_MessagensCOUNT.AsInteger > 0 then
   DBText2.Visible:=TRUE
   ELSE
   DBText2.Visible:=FALSE;

end;

procedure TFrm_Projetos_Organizer.Query_MessagensAfterRefresh(
  DataSet: TDataSet);
begin
if Query_MessagensCOUNT.AsInteger > 0 then
   DBText2.Visible:=TRUE
   ELSE
   DBText2.Visible:=FALSE;
end;

procedure TFrm_Projetos_Organizer.quer_Y(Sender: TObject);
var
titulo_cartao:TRZLabel;
begin
   titulo_cartao:= Sender as  TRZLabel;
   ShowMessage('query'+IntToStr(titulo_cartao.tag));

   quer('query'+IntToStr(titulo_cartao.tag));
end;

procedure TFrm_Projetos_Organizer.RzPanel1Click(Sender: TObject);
var
titulo : string[20];
d_Bloco,bloco_q : TFdquery;
gen : integer;


begin

    PostMessage(Handle, InputBoxMsg, 0, 0);
titulo:= inputbox('Título do Bloco','Digite o Título do Bloco','NOVO TITULO');
if length(titulo)<>0 then
   begin
   TRY
     bloco_q:=TFDQuery.Create(nil);
     bloco_q.Connection:=dm.Conexao;
     bloco_q.SQL.Text:='select gen_id(CONTROLE_QUADRO_BLOCO_ID,1) from rdb$database';
     bloco_q.Open();

     gen:=bloco_q.FieldByName('gen_id').AsInteger;

     bloco_q.Close;
     bloco_q.SQL.Text:='insert into CONTROLE_QUADRO_BLOCO (id_quadro,id,descricao) '+
                        '  values(:A,:B,:C) ';
     bloco_q.params[0].AsInteger:=Frm_Organizer.Query_QuadroID_QUADRO.AsInteger;
     bloco_q.Params[1].AsInteger:=gen;
     bloco_q.Params[2].AsString:=UPPERCASE(titulo);
     bloco_q.ExecSQL;

     DM.Conexao.Commit;



           EVENTO:=1;

           CLOSE;




    //  Frm_Projetos_Organizer.bloco(titulo,IntToStr(gen));
       EXCEPT

       END;



   end;




















end;

procedure TFrm_Projetos_Organizer.RzPanel2Click(Sender: TObject);
begin





// Frm_Projetos_Organizer.bloco(carrega_bloco.FieldByName('DESCRICAO').asstring,IntToStr(carrega_bloco.FieldByName('id').AsInteger))
end;

procedure TFrm_Projetos_Organizer.RzPanel3Click(Sender: TObject);
begin
PopupMenu1.Popup(MOUSE.CursorPos.X,MOUSE.CursorPos.Y);
end;

procedure TFrm_Projetos_Organizer.sub_Menu;

begin


end;

procedure TFrm_Projetos_Organizer.Tab_NotificacaoAfterInsert(DataSet: TDataSet);
var
gen_query : tfdquery;
begin
     gen_query:=tfdquery.Create(nil);
     gen_query.Connection:=dm.Conexao;
     gen_query.Close;
     gen_query.SQL.Text:='select gen_id(CONTROLE_QUADRO_NOTIFICACAO,1) from rdb$database';
     gen_query.Open();

     Tab_NotificacaoID.AsInteger:=gen_query.FieldByName('gen_id').AsInteger;
     gen_query.free;
end;

procedure TFrm_Projetos_Organizer.Troca_Bloco(Sender: TObject);
var
Troca:TMenuItem;
Up, Quer_N : TFdquery;
cap,usuario,bloco : string;
begin
   up:=TFDQuery.Create(nil);
   up.Connection:=dm.Conexao;
   up.SQL.Text:='update CONTROLE_QUADRO_CARTAO set id_bloco =:b where id =:i';


   Troca:= Sender as  TMenuItem;
   cap:=StringReplace(troca.Caption,'&','',[rfReplaceAll]);



   quer_n:=TFDQuery.Create(nil);
   quer_n.Connection:=dm.Conexao;
   quer_n.close;
   quer_n.SQL.Text:='select nome from funcionarios where id_funcionario =:f';
   quer_n.Params[0].AsInteger:=Frm_Principal.id_usu;
   quer_n.Open();

   usuario := quer_n.FieldByName('nome').AsString;


   quer_n.close;
   quer_n.SQL.Text:='select CONTROLE_QUADRO_BLOCO.descricao from CONTROLE_QUADRO_BLOCO where id =:f';
   quer_n.Params[0].AsInteger:=troca.ImageIndex;

   quer_n.Open();


   bloco := quer_n.FieldByName('descricao').AsString;

            quer_N.close;
            quer_N.SQL.Text:='select * ' +
                                     ' from controle_quadro_usuario ' +
                                     ' where id_quadro =:c and id_usuario <> :u';

             quer_N.Params[0].AsInteger:=frm_organizer.Query_QuadroID_QUADRO.AsInteger;
             quer_n.Params[1].AsInteger:=Frm_Principal.id_usu;
             quer_N.open;


             Tab_Notificacao.Open();

             quer_N.First;
            while not quer_N.eof do
             begin
                  Tab_Notificacao.Insert;
                 // Frm_Org_Notas.Tab_NotificaoID_NOTA.AsInteger:=Frm_Org_Notas.Tab_Org_NotaID.AsInteger;
                  Tab_NotificacaoID_CARTAO.AsInteger:=TFDQuery(FindComponent('query_nome'+IntToStr(Troca.tag))).FieldByName('id').AsInteger;
                  Tab_NotificacaoID_USUARIO.AsInteger:=quer_n.FieldByName('id_usuario').AsInteger;
                  Tab_NotificacaoSTATUS.AsInteger:=0;
                  Tab_NotificacaoDESCRICAO.AsString:=usuario+'  Moveu o Cartão '+TFDQuery(FindComponent('query_nome'+IntToStr(Troca.tag))).FieldByName('TITULO').ASSTRING+' para '+bloco;
                  Tab_Notificacao.post;
                  quer_N.next;
             end;









 if TFDQuery(FindComponent('query_nome'+IntToStr(Troca.tag))).RecordCount<>0 then
    begin

        if cap = 'EM IMPLANTAÇÃO' then
      begin
        FDStoredProc1.ParamByName('data').AsDate:=now+1;
        FDStoredProc1.ParamByName('hora').AsTime:=now;
        FDStoredProc1.ParamByName('id_cli').asinteger:=TFDQuery(FindComponent('query_nome'+IntToStr(Troca.tag))).FieldByName('id_cliente').AsInteger;
        FDStoredProc1.ParamByName('DETALHE').AsString:=TFDQuery(FindComponent('query_nome'+IntToStr(Troca.tag))).FieldByName('TITULO').ASSTRING;
        FDStoredProc1.ParamByName('AGENDADO').AsInteger:=Frm_Principal.id_usu;
        FDStoredProc1.ParamByName('RESPONSAVEL').AsInteger:=TFDQuery(FindComponent('query_nome'+IntToStr(Troca.tag))).FieldByName('ID_USUARIO').AsInteger;
        FDStoredProc1.ParamByName('STATUS').AsInteger:=1;
        FDStoredProc1.ParamByName('CADASTRO').AsInteger:=1;
        FDStoredProc1.ExecProc;
      end;




       up.Params[0].AsInteger:=troca.ImageIndex;
       up.Params[1].AsInteger:=TFDQuery(FindComponent('query_nome'+IntToStr(Troca.tag))).FieldByName('id').AsInteger;
       up.ExecSQL;

       dm.Conexao.Commit;

       TFDQuery(FindComponent('query_nome'+IntToStr(Troca.tag))).refresh;
       TFDQuery(FindComponent('query_nome'+IntToStr(troca.ImageIndex))).refresh;
    end;
       up.Free;


end;



procedure TFrm_Projetos_Organizer.USUARIOS(Sender: TObject);
begin
Frm_Usuarios:=TFrm_Usuarios.Create(self);
Frm_Usuarios.ShowModal;
Frm_Usuarios.Free;
  EVENTO:=1;
  CLOSE;
end;

{ TMinhaThread }

constructor TM_Thread.Create;
begin
    inherited Create(True);

  { Chama o contrutor herdado. Ele irá temporariamente colocar o
    thread em estado de espera para depois executá-lo. }
  FreeOnTerminate := True; // Libera da memoria o objeto após terminar.

  { Configura sua prioridade na lista de processos do Sistema operacional. }
  Priority := TpLower;

  Resume; // Inicia o Thread.
end;

procedure TM_Thread.Execute;
var
 carrega_blocos:TFDQuery;
 scrool_b : TcxScrollBox;
begin

         scrool_b:=TcxScrollBox.Create(Frm_Projetos_Organizer);
         scrool_b.Name := 'scrool';
         scrool_b.Align:=alClient;
         scrool_b.Transparent:=TRUE;
         scrool_b.Parent:=Frm_Projetos_Organizer;












             carrega_blocos:=TFDQuery.Create(nil);
             carrega_blocos.Connection:=dm.Conexao;
             carrega_blocos.SQL.Text:='SELECT * FROM CONTROLE_QUADRO_BLOCO ' +
                                     'where id_quadro =:c order by id';

             carrega_blocos.params[0].AsInteger:=Frm_Organizer.Query_QuadroID_QUADRO.AsInteger;
             carrega_blocos.Open();






             if carrega_blocos.RecordCount<>0 then
                begin
                   carrega_blocos.First;
                   while not carrega_blocos.eof do
                    begin
                    Frm_Projetos_Organizer.bloco(carrega_blocos.FieldByName('DESCRICAO').asstring,IntToStr(carrega_blocos.FieldByName('id').AsInteger));

                      carrega_blocos.next;
                    end;

                end;

               carrega_blocos.Free;

end;

end.
