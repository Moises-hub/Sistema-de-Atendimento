
unit UFrm_Organizer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCGrids, RzPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, dxSkinsCore, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxClasses, cxLookAndFeels, dxSkinsForm, Vcl.XPMan,
  dxGDIPlusClasses, RLReport, RzLabel, RzDBLbl, RzButton, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, cxGraphics, cxControls,
  cxLookAndFeelPainters, cxScrollBox, Vcl.Buttons;

type
  TFrm_Organizer = class(TForm)
    RzPanel1: TRzPanel;
    Query_Quadro: TFDQuery;
    Query_QuadroID_QUADRO: TIntegerField;
    Query_QuadroDESCRICAO: TStringField;
    DS_Quadro: TDataSource;
    XPManifest1: TXPManifest;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Query_QuadroIMAGEM: TIntegerField;
    RzBitBtn1: TRzBitBtn;
    RzLabel1: TRzLabel;
    Image10: TImage;
    Query_QuadroID_USUARIO: TIntegerField;
    Query_QuadroNOME: TStringField;
    DBCtrlGrid1: TDBCtrlGrid;
    RzPanel2: TRzPanel;
    Image1: TImage;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    Query_QuadroDATA_HORA: TSQLTimeStampField;
    Query_Quadroinic: TStringField;
    DBText1: TDBText;
    RzToolbarButton1: TRzToolbarButton;
    RzToolbarButton2: TRzToolbarButton;
    Query_QuadroTIPO: TIntegerField;
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure FormShow(Sender: TObject);
    procedure RzPanel2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzToolbarButton1Click(Sender: TObject);
    procedure RzToolbarButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    var
    t : integer;
  end;

var
  Frm_Organizer: TFrm_Organizer;

implementation

{$R *.dfm}

uses UDM, UFrm_Org_ADDQuadros, UFrm_Projetos_Organizer, UFrm_Principal,
  UFrm_Implantacao;

procedure TFrm_Organizer.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
  var R : TRect;
begin
          R := Self.ClientRect;
          if QUERY_QUADROIMAGEM.asinteger = 2 then
             begin
            // RzDBLabel1.Font.Color:=clWhite;
             Image1.Picture:=Image2.Picture

             end
             else
          if QUERY_QUADROIMAGEM.asinteger = 3 then
             begin
            //   RzDBLabel1.Font.Color:=clWhite;
               Image1.Picture:=Image3.Picture
             end
             else
           if QUERY_QUADROIMAGEM.asinteger = 4 then
              begin
             //    RzDBLabel1.Font.Color:=clWhite;
                 Image1.Picture:=Image4.Picture
              end

             else
          if QUERY_QUADROIMAGEM.asinteger = 5 then
              begin
             //  RzDBLabel1.Font.Color:=clWhite;
               Image1.Picture:=Image5.Picture
              end
             else
          if QUERY_QUADROIMAGEM.asinteger = 6 then
              begin
            //   RzDBLabel1.Font.Color:=clWhite;
               Image1.Picture:=Image6.Picture
              end
             else
          if QUERY_QUADROIMAGEM.asinteger = 7 then
              begin
            //   RzDBLabel1.Font.Color:=clWhite;
               Image1.Picture:=Image7.Picture
              end
             else
          if QUERY_QUADROIMAGEM.asinteger = 8 then
              begin

               Image1.Picture:=Image8.Picture
              end
             else
     
             begin

             Image1.Picture:=Image9.Picture;
             end;


       //









end;

procedure TFrm_Organizer.FormShow(Sender: TObject);
begin
if (Frm_Principal.id_usu = 1) or (Frm_Principal.id_usu = 3) or  (Frm_Principal.id_usu = 14) then
   RzToolbarButton2.Visible:=true
   else
   RzToolbarButton2.Visible:=false;

Query_Quadro.Open();
end;

procedure TFrm_Organizer.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Organizer.RzPanel2Click(Sender: TObject);
var
carrega_bloco,CARREG_USU : TFDQuery;
usuarios,SPCE,ADD_USU : TMenuItem;
 vThread : TM_Thread;
I : INTEGER;
begin
      if Query_Quadro.RecordCount<>0 then
         BEGIN
           



                   Frm_Projetos_Organizer:=TFrm_Projetos_Organizer.Create(NIL);

                   Frm_Projetos_Organizer.query_not.Close;
                   Frm_Projetos_Organizer.query_not.Params[0].AsInteger:=Frm_Principal.id_usu;
                   Frm_Projetos_Organizer.query_not.Params[1].AsInteger:=Query_QuadroID_QUADRO.AsInteger;
                   Frm_Projetos_Organizer.query_not.Open();


                   Frm_Projetos_Organizer.Query_Messagens.Close;
                   Frm_Projetos_Organizer.Query_Messagens.Params[0].AsInteger:=Frm_Principal.id_usu;
                   Frm_Projetos_Organizer.Query_Messagens.Params[1].AsInteger:=Query_QuadroID_QUADRO.AsInteger;
                   Frm_Projetos_Organizer.Query_Messagens.Open();



                   Frm_Projetos_Organizer.EVENTO := 0;

                      if QUERY_QUADROIMAGEM.asinteger = 2 then
                         Frm_Projetos_Organizer.Image1.Picture:=Image2.Picture
                         else
                    if QUERY_QUADROIMAGEM.asinteger = 3 then
                         Frm_Projetos_Organizer.Image1.Picture:=Image3.Picture
                         else
                     if QUERY_QUADROIMAGEM.asinteger = 4 then
                         Frm_Projetos_Organizer.Image1.Picture:=Image4.Picture
                         else
                    if QUERY_QUADROIMAGEM.asinteger = 5 then
                         Frm_Projetos_Organizer.Image1.Picture:=Image5.Picture
                        else
                    if QUERY_QUADROIMAGEM.asinteger = 6 then
                        Frm_Projetos_Organizer.Image1.Picture:=Image6.Picture
                         else
                    if QUERY_QUADROIMAGEM.asinteger = 7 then
                         Frm_Projetos_Organizer.Image1.Picture:=Image7.Picture
                         else
                    if QUERY_QUADROIMAGEM.asinteger = 8 then
                         Frm_Projetos_Organizer.Image1.Picture:=Image8.Picture
                         else
                         Frm_Projetos_Organizer.Image1.Picture:=Image9.Picture;



                         Frm_Projetos_Organizer.carrega_bloco;




                        carreg_usu:=TFDQuery.Create(NIL);
                       carreg_usu.Connection:=dm.Conexao;
                       carreg_usu.SQL.Text:='select * ' +
                                               ' from controle_quadro_usuario ' +
                                               ' where id_quadro =:c ';

                       carreg_usu.Params[0].AsInteger:= Query_QuadroID_QUADRO.AsInteger;
                       carreg_usu.open;

                       carreg_usu.First;
                      while not carreg_usu.eof do
                       begin
                        usuarios := TmenuItem.Create(Frm_Projetos_Organizer.PopupMenu1);
                        usuarios.Name:= 'U'+carreg_usu.FieldByName('ID_USUARIO').AsString;
                        usuarios.Caption := carreg_usu.FieldByName('nome').AsString;
                        Frm_Projetos_Organizer.PopupMenu1.Items.Add(usuarios);

                       carreg_usu.next;
                       end;


             
                     //  Frm_Projetos_Organizer.rzLabel1.Caption:='...';
                       SPCE := TmenuItem.Create(Frm_Projetos_Organizer.PopupMenu1);
                       SPCE.Name:= 'SP0';
                       SPCE.Caption := '-';
                       Frm_Projetos_Organizer.PopupMenu1.Items.Add(SPCE);
           

                       ADD_USU := TmenuItem.Create(Frm_Projetos_Organizer.PopupMenu1);
                       ADD_USU.Name:= 'ADD1';
                       ADD_USU.Caption := '(+)USUÁRIO';
                       ADD_USU.OnClick:= Frm_Projetos_Organizer.USUARIOS;
                       Frm_Projetos_Organizer.PopupMenu1.Items.Add(ADD_USU);


                           Frm_Projetos_Organizer.ShowModal;
                           if Frm_Projetos_Organizer.EVENTO = 1 then
                              BEGIN
                                frm_Projetos_Organizer.FREE;
                                RzPanel2Click(Sender);
                              END
                              else
                              frm_Projetos_Organizer.FREE;









         END
         ELSE
         RzToolbarButton1Click(SENDER);







end;

procedure TFrm_Organizer.RzToolbarButton1Click(Sender: TObject);
begin


        Frm_Org_ADDQuadros:=TFrm_Org_ADDQuadros.Create(self);
        Frm_Org_ADDQuadros.ShowModal;
        Frm_Org_ADDQuadros.Free;
        Query_Quadro.Refresh;


end;

procedure TFrm_Organizer.RzToolbarButton2Click(Sender: TObject);
VAR
DELETE : TFDQUERY;
begin
if Application.MessageBox('Deseja Realmente Exclui Este Quadro?','Confirmar',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=mryes then
   if Application.MessageBox('*****ATENÇÃO AO EXCLUIR O QUADRO SERA EXCLUIDO TODOS OS CARTÕES, NOTAS E ANEXOS VINCULADOS AO '+
   ' QUADRO SELECIONADO, DESEJA REALMENTE EXCLUIR?*******'
   ,'ATENÇÃO',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=mryes then
   BEGIN
     DELETE :=TFDQuery.Create(NIL);
     DELETE.Connection:=DM.Conexao;
     DELETE.SQL.Text:=' DELETE FROM CONTROLE_QUADROS WHERE CONTROLE_QUADROS.ID_QUADRO =:I';
     DELETE.Params[0].AsInteger:=Query_QuadroID_QUADRO.AsInteger;
     DELETE.ExecSQL;

     Query_Quadro.Refresh;
     DELETE.Free;
   END;

end;

end.



