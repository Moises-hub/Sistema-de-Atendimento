unit UFrm_Quadro_Implantacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, RzDBLbl, Vcl.DBCGrids,
  RzButton, Vcl.Buttons, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.StdCtrls, RzLabel,
  RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, RzRadGrp;

type
  TFrm_Quadro_Implantacao = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    Image10: TImage;
    RzToolbarButton2: TRzToolbarButton;
    RzBitBtn1: TRzBitBtn;
    DBCtrlGrid1: TDBCtrlGrid;
    RzPanel2: TRzPanel;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    DBText1: TDBText;
    DS_Quadro: TDataSource;
    Query_Quadro: TFDQuery;
    RzDBLabel4: TRzDBLabel;
    Query_QuadroTITULO: TStringField;
    Query_QuadroDESCRICAO: TMemoField;
    Query_QuadroUSUARIO: TStringField;
    Query_QuadroDATA_ABERTURA: TSQLTimeStampField;
    Query_QuadroINIC: TStringField;
    RzToolbarButton1: TRzToolbarButton;
    RzDBLabel5: TRzDBLabel;
    Query_QuadroRESPONSAVEL_EM: TStringField;
    Query_QuadroNOME: TStringField;
    Query_QuadroID: TIntegerField;
    Query_QuadroID_CLIENTE: TIntegerField;
    Query_QuadroSTATUS: TIntegerField;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    FINALIZADO1: TMenuItem;
    EmAndamento1: TMenuItem;
    FDQuery1: TFDQuery;
    RzRadioGroup1: TRzRadioGroup;
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure RzToolbarButton1Click(Sender: TObject);
    procedure RzPanel2DblClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzToolbarButton2Click(Sender: TObject);
    procedure FINALIZADO1Click(Sender: TObject);
    procedure EmAndamento1Click(Sender: TObject);
    procedure RzRadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Quadro_Implantacao: TFrm_Quadro_Implantacao;

implementation

{$R *.dfm}

uses UDM, UFrm_Quadro_ImpADD, UFrm_Implantacao;

procedure TFrm_Quadro_Implantacao.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
 if Query_Quadro.RecordCount > 0 then
   BEGIN
       if Query_QuadroSTATUS.AsInteger = 1 then
          BEGIN
          PANEL1.Caption:='EM ANDAMENTO';
          Panel1.Color:=$00EAD1B9;
          Panel1.Font.Color:=clBLACK;
          END
          ELSE
          BEGIN
          PANEL1.Caption:='FINALIZADO';
          PANEL1.Color:=$00400000;
          Panel1.Font.Color:=clWhite;
          END



        {
   if (DBTEXT1.Caption = 'A') OR (DBTEXT1.Caption = 'E') OR (DBTEXT1.Caption = 'I') OR (DBTEXT1.Caption = 'M')
       OR (DBTEXT1.Caption = 'Q') OR (DBTEXT1.Caption = 'U') OR (DBTEXT1.Caption = 'Y') then
      DBTEXT1.COLOR:=$00CC6600
      ELSE
    if (DBTEXT1.Caption = 'B') OR (DBTEXT1.Caption = 'F') OR (DBTEXT1.Caption = 'J') OR (DBTEXT1.Caption = 'N')
       OR (DBTEXT1.Caption = 'R') OR (DBTEXT1.Caption = 'V')  OR (DBTEXT1.Caption = 'Z') then
      DBTEXT1.COLOR:=$00FF8000
      ELSE
    if (DBTEXT1.Caption = 'C') OR (DBTEXT1.Caption = 'G') OR (DBTEXT1.Caption = 'K') OR (DBTEXT1.Caption = 'O')
       OR (DBTEXT1.Caption = 'S') OR (DBTEXT1.Caption = 'W') then
      DBTEXT1.COLOR:=$00800040
      ELSE
    if (DBTEXT1.Caption = 'D') OR (DBTEXT1.Caption = 'H') OR (DBTEXT1.Caption = 'L') OR (DBTEXT1.Caption = 'P')
       OR (DBTEXT1.Caption = 'T') OR (DBTEXT1.Caption = 'X') then
      DBTEXT1.COLOR:=$00400000
      ELSE
      DBTEXT1.COLOR:=$00CC6600; }





      //DBTEXT1.Visible:=TRUE;




   END
   ELSE
   BEGIN

    DBText1.VISIBLE:=FALSE;

   END;
end;

procedure TFrm_Quadro_Implantacao.EmAndamento1Click(Sender: TObject);
begin

     if Query_Quadro.RecordCount<>0 then
       begin
        fdquery1.Close;
        fdquery1.SQL.Text:='update CONTROLE_IMPLANTACAO_CARTAO set status = 1 where id =:f';
        fdquery1.Params[0].AsInteger:=Query_QuadroID.AsInteger;
        FDQuery1.ExecSQL;
       Query_Quadro.Refresh;
       end;

end;

procedure TFrm_Quadro_Implantacao.FINALIZADO1Click(Sender: TObject);

begin
     if Query_Quadro.RecordCount<>0 then
       begin
        fdquery1.Close;
        fdquery1.SQL.Text:='update CONTROLE_IMPLANTACAO_CARTAO set status = 2 where id =:f';
        fdquery1.Params[0].AsInteger:=Query_QuadroID.AsInteger;
        FDQuery1.ExecSQL;
        Query_Quadro.Refresh;
       end;
end;

procedure TFrm_Quadro_Implantacao.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Quadro_Implantacao.RzPanel2DblClick(Sender: TObject);
begin
if Query_Quadro.RecordCount=0 then
  RzToolbarButton1Click(Sender)
  else
  begin
    frm_implantacao:=Tfrm_implantacao.Create(self);
    frm_implantacao.Query_ImpNotas.Params[0].AsInteger:=Query_QuadroID.AsInteger;
    frm_implantacao.Query_Clientes.CLOSE;
    frm_implantacao.Query_Clientes.Params[0].AsInteger:=Query_QuadroID_CLIENTE.AsInteger;
    frm_implantacao.Query_Clientes.OPEN;
    frm_implantacao.Query_ImpNotas.Open();
    frm_implantacao.ShowModal;
    frm_implantacao.Free;
  end;

end;

procedure TFrm_Quadro_Implantacao.RzRadioGroup1Click(Sender: TObject);
begin
     Query_Quadro.Close;
     Query_Quadro.SQL.Text:='select ' +
                            'CONTROLE_IMPLANTACAO_CARTAO.id, ' +
                            'CONTROLE_IMPLANTACAO_CARTAO.titulo, ' +
                            'CONTROLE_IMPLANTACAO_CARTAO.descricao, ' +
                            '''Criado Por: ''||funcionarios.nome usuario, ' +
                            'controle_implantacao_cartao.data_abertura, ' +
                            'clientes.nome_fantasia NOME, ' +
                            'clientes.id_cliente, ' +
                            '''RESP. EMP:''||CONTROLE_IMPLANTACAO_CARTAO.RESPONSAVEL_EM RESPONSAVEL_EM, ' +
                            'SUBSTRING (FUNCIONARIOS.NOME from 1 for 1) inic, ' +
                            'CONTROLE_IMPLANTACAO_CARTAO.STATUS ' +
                            'from CONTROLE_IMPLANTACAO_CARTAO ' +
                            'inner join clientes on clientes.id_cliente = CONTROLE_IMPLANTACAO_CARTAO.id_cliente ' +
                            'inner join funcionarios on funcionarios.id_funcionario = CONTROLE_IMPLANTACAO_CARTAO.id_usuario ';

       if RzRadioGroup1.ItemIndex = 1 then
          Query_Quadro.SQL.add(' where CONTROLE_IMPLANTACAO_CARTAO.STATUS = 1 ')
          else
         if RzRadioGroup1.ItemIndex = 2 then
          Query_Quadro.SQL.add(' where CONTROLE_IMPLANTACAO_CARTAO.STATUS = 2 ');


            Query_Quadro.SQL.add(' order by CONTROLE_IMPLANTACAO_CARTAO.id desc ');

          Query_Quadro.open;




end;

procedure TFrm_Quadro_Implantacao.RzToolbarButton1Click(Sender: TObject);
begin
   Frm_Quadro_ImpADD:=TFrm_Quadro_ImpADD.Create(self);
   Frm_Quadro_ImpAdd.ShowModal;
   Frm_Quadro_ImpAdd.free;
   Query_Quadro.Refresh;
end;

procedure TFrm_Quadro_Implantacao.RzToolbarButton2Click(Sender: TObject);
VAR
DELETE : TFDQUERY;
begin
   if Query_Quadro.RecordCount<>0 then
      begin
      if Application.MessageBox('Deseja Realmente Excluir Este Quadro?','Confirmar',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=mryes then
         if Application.MessageBox('*****ATENÇÃO AO EXCLUIR O QUADRO SERA EXCLUIDO TODAS AS NOTAS VINCULADOS AO '+
         ' QUADRO SELECIONADO, DESEJA REALMENTE EXCLUIR?*******'
         ,'ATENÇÃO',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=mryes then
         BEGIN
           DELETE :=TFDQuery.Create(NIL);
           DELETE.Connection:=DM.Conexao;
           DELETE.SQL.Text:=' DELETE FROM CONTROLE_IMPLANTACAO_CARTAO WHERE CONTROLE_IMPLANTACAO_CARTAO.ID =:I';
           DELETE.Params[0].AsInteger:=Query_QuadroID.AsInteger;
           DELETE.ExecSQL;

           Query_Quadro.Refresh;
           DELETE.Free;
         END;
      end;


end;

end.
