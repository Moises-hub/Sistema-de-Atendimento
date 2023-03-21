unit UFrm_App;

interface

uses  Clipbrd,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RzCmboBx,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzButton, System.ImageList,
  Vcl.ImgList, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, Vcl.Menus;

type
  TFrm_App = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Query_Lista_Cliente_App: TFDQuery;
    DS_query_lista_cliente_app: TDataSource;
    Panel1: TPanel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Query_Lista_Cliente_AppAPP: TStringField;
    Query_Lista_Cliente_AppNOME_PROJETO: TStringField;
    Query_Lista_Cliente_AppID: TIntegerField;
    Query_Lista_Cliente_AppNOME: TStringField;
    Query_Lista_Cliente_AppNOME_FANTASIA: TStringField;
    Query_Lista_Cliente_AppID_CLIENTE: TIntegerField;
    Query_Lista_Cliente_AppSTATUS: TStringField;
    Query_Lista_Cliente_AppCOD_FIREBASE: TStringField;
    Query_Lista_Cliente_AppB_EXCLUI: TStringField;
    Query_Lista_Cliente_AppB_STATUS: TStringField;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    ImageList2: TImageList;
    NetHTTPClient1: TNetHTTPClient;
    PopupMenu1: TPopupMenu;
    CopiarCHAVE1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    PROCEDURE EXCLUI;
    procedure firebase_ALTERA_STATUS(STATUS : INTEGER);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CopiarCHAVE1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_App: TFrm_App;

implementation

{$R *.dfm}

uses UDM, UFrm_APP_Cliente;

procedure TFrm_App.CopiarCHAVE1Click(Sender: TObject);
begin
            if LENGTH(Query_Lista_Cliente_AppCOD_FIREBASE.AsString)<>0 then
         BEGIN
         Clipboard.AsText := Query_Lista_Cliente_AppCOD_FIREBASE.AsString;
         ShowMessage('CHAVE:'+Query_Lista_Cliente_AppCOD_FIREBASE.AsString+' Copiada com Sucesso');
         END;
end;

procedure TFrm_App.DBGrid1CellClick(Column: TColumn);
begin
   if DBGrid1.SelectedField.FieldName = 'B_EXCLUI' then
      EXCLUI;


   if DBGrid1.SelectedField.FieldName = 'B_STATUS' then
      BEGIN


                if Query_Lista_Cliente_AppSTATUS.AsString = 'ATIVO' then
                   firebase_ALTERA_STATUS(2)
                ELSE
                if Query_Lista_Cliente_AppSTATUS.AsString = 'INATIVO' then
                   firebase_ALTERA_STATUS(1);
      END;
end;

procedure TFrm_App.DBGrid1DblClick(Sender: TObject);
begin
        if LENGTH(Query_Lista_Cliente_AppCOD_FIREBASE.AsString)<>0 then
         BEGIN
         Clipboard.AsText := Query_Lista_Cliente_AppCOD_FIREBASE.AsString;
         ShowMessage('CHAVE:'+Query_Lista_Cliente_AppCOD_FIREBASE.AsString+' Copiada com Sucesso');
         END;
end;

procedure TFrm_App.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

   if Query_Lista_Cliente_AppSTATUS.AsString = 'ATIVO' then
        begin

          DBGrid1.Canvas.font.Color := clBlack;

          DBGrid1.Canvas.FillRect(Rect);
        end
        ELSE
   if Query_Lista_Cliente_AppSTATUS.AsString = 'ATIVO' then
        begin

          DBGrid1.Canvas.font.Color := clRed;

          DBGrid1.Canvas.FillRect(Rect);
        end;
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);


if datacol =7 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 1);
   end;
    if datacol =6 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);
   end;
end;

procedure TFrm_App.EXCLUI;
VAR
EXCLUI : TFDQUERY;
PROJETO,CHAVE : STRING;
begin
      if Application.MessageBox('AO EXCLUI ESTE CLIENTE ELE PERDERA TODAS AS INFORMAÇÕES CONTIDAS EM NUVEM!, DESEJA REALMENTE EXCLUIR?',
           ' ',mb_YesNo+MB_ICONQUESTION+mb_DefButton2)=mrYes then
         BEGIN

         TRY

           PROJETO:=Query_Lista_Cliente_AppNOME_PROJETO.AsString;
           CHAVE:=Query_Lista_Cliente_AppCOD_FIREBASE.AsString;

           EXCLUI:=TFDQUERY.Create(NIL);
           EXCLUI.Connection:=DM.Conexao;
           NetHTTPClient1.Delete('https://firestore.googleapis.com/v1beta1/projects/'+PROJETO+'/databases/(default)/documents/clientes/'+CHAVE);
           EXCLUI.SQL.Text:='DELETE FROM controle_app_cliente WHERE ID =:I';
           EXCLUI.Params[0].AsInteger:=Query_Lista_Cliente_AppID.AsInteger;
           EXCLUI.ExecSQL;
           EXCLUI.Free;
           DM.FDTransaction1.Commit;
           Query_Lista_Cliente_App.Refresh;
           ShowMessage('REGISTRO EXCLUIDO COM SUCESSO!');
         EXCEPT
           ON E:EXCEPTION DO
             MessageDlg('OUVE UM ERRO AO EXCLUIR O REGISTRO '+E.Message+'!',mtError,[mbOK],0);

         END;
       END;
end;


procedure TFrm_App.firebase_ALTERA_STATUS(STATUS : INTEGER);
var
json : TStringStream;
responde : TStringList;
QUERY_STATUS : tfdquery;
cnpj : string;

begin
     TRY
      QUERY_STATUS:=TFDQuery.Create(nil);
      QUERY_STATUS.Connection:=dm.Conexao;
      QUERY_STATUS.SQL.Text:='select nome,CPF_CNPJ,NOME_FANTASIA from clientes where id_cliente =:f';
      QUERY_STATUS.params[0].AsInteger:=Query_Lista_Cliente_AppID_CLIENTE.AsInteger;
      QUERY_STATUS.open;

     cnpj:=StringReplace(QUERY_STATUS.FieldByName('CPF_CNPJ').AsString,'.','',[rfReplaceAll]);
      cnpj:=StringReplace(cnpj,'/','',[rfReplaceAll]);
      cnpj:=StringReplace(cnpj,'-','',[rfReplaceAll]);

     json:=TStringStream.Create('{' +#13+
              '  "fields": ' +#13+
              '  { ' +#13+
              '    "razao_social": ' +#13+
              '    { ' +#13+
              '      "stringValue":"'+QUERY_STATUS.FieldByName('nome').AsString+'" ' +#13+
               '   } ' +#13+
               ', ' +#13+
               '"id": ' +#13+
               ' { ' +#13+
               ' "integerValue": '+IntToStr(Query_Lista_Cliente_AppID_CLIENTE.AsInteger)+' ' +#13+
               '    }, ' +#13+
               ' "nome_fantasia": ' +#13+
               '   { ' +#13+
               '  "stringValue":"'+QUERY_STATUS.FieldByName('nome_fantasia').AsString+'" ' +#13+
               '    } ' +#13+
               '	, ' +#13+
               ' "cnpj": ' +#13+
               '    { ' +
               '  "stringValue":"'+cnpj+'" ' +#13+
               '    }, ' +#13+
               ' "status": ' +#13+
               '    { ' +
               '  "integerValue":'+IntToStr(STATUS)+#13+
               '    } ' +#13+
               '  }, ' + #13+
               '}');




               NetHTTPClient1.PATCH('https://firestore.googleapis.com/v1beta1/projects/'+Query_Lista_Cliente_AppNOME_PROJETO.ASSTRING+
               '/databases/(default)/documents/clientes/'+Query_Lista_Cliente_AppCOD_FIREBASE.AsString,json).ContentAsString();



                QUERY_STATUS.CLOSE;
                QUERY_STATUS.SQL.Text:='UPDATE controle_app_cliente SET STATUS =:S WHERE ID=:I';
                QUERY_STATUS.params[0].AsInteger:=STATUS;
                QUERY_STATUS.params[1].AsInteger:=Query_Lista_Cliente_AppID.AsInteger;
                QUERY_STATUS.ExecSQL;
                QUERY_STATUS.Free;
                DM.FDTransaction1.Commit;
                Query_Lista_Cliente_App.Refresh;




                ShowMessage('CADASTRO ATUALIZADO COM SUCESSO!');

     EXCEPT
     ON E:Exception DO
        MessageDlg('OUVE UM ERRO AO ATUALIZADO O REGISTRO!'+E.Message,mtError,[mbOK],0);

     END;

end;

procedure TFrm_App.FormShow(Sender: TObject);
begin
dm.Query_App.Open();
dm.Query_App.First;

    RzComboBox1.Items.Add('TODOS');
    RzComboBox1.VALUES.Add('  ');

while not dm.Query_App.eof do
  begin
    RzComboBox1.Items.Add(dm.Query_AppNOME.AsString);
    RzComboBox1.VALUES.Add(' and controle_app_cliente.id_app ='+ dm.Query_AppID.AsString);
    dm.Query_App.next;
  end;

  RzComboBox1.ItemIndex := 0;
dm.Query_App.CLOSE;
RzBitBtn1Click(SENDER);
end;

procedure TFrm_App.RzBitBtn1Click(Sender: TObject);
VAR
BUSCA : STRING;
begin


      if ComboBox1.ItemIndex = 0 then
         BEGIN
           BUSCA := ' WHERE CLIENTES.NOME LIKE :N ';

         END
         ELSE
      if ComboBox1.ItemIndex = 1 then
         BEGIN
           BUSCA := ' WHERE CLIENTES.NOME_FANTASIA LIKE :N ';

         END
         ELSE
      if ComboBox1.ItemIndex = 2 then
         BEGIN

            if LENGTH(EDIT1.Text)=0 then
              BUSCA := ' WHERE CLIENTES.NOME LIKE :N '
              ELSE
              BUSCA := ' WHERE CLIENTES.ID_CLIENTE =:N ';
         END;

      Query_Lista_Cliente_App.Close;
      Query_Lista_Cliente_App.SQL.Text:='select controle_app.nome APP,' +
                                        '       controle_app.nome_projeto, ' +
                                        '       controle_app_cliente.id, ' +
                                        '       CLIENTES.nome, ' +
                                        '       CLIENTES.nome_fantasia, ' +
                                        '       controle_app_cliente.id_cliente, ' +
                                        '      (case when controle_app_cliente.status = 1 then ''ATIVO'' '+
                                        '      when controle_app_cliente.status = 2 then ''INATIVO'' '+
                                        '      END)STATUS, ' +
                                        '      controle_app_cliente.cod_firebase, ' +
                                        '       '' '' b_exclui, ' +
                                        '       '' '' b_status ' +
                                        '       FROM ' +
                                        '       controle_app_cliente ' +
                                        '       INNER JOIN controle_app ON controle_app.id = controle_app_cliente.id_app ' +
                                        '       INNER JOIN CLIENTES ON CLIENTES.id_cliente = controle_app_CLIENTE.id_cliente '+BUSCA+' '+RzComboBox1.Value+' '+RzComboBox2.Value+
                                        ' ORDER BY CLIENTES.nome,controle_app_cliente.id';

         if ComboBox1.ItemIndex = 0 then
         BEGIN

           Query_Lista_Cliente_App.PARAMS[0].AsString:='%'+Edit1.Text+'%';
         END
         ELSE
      if ComboBox1.ItemIndex = 1 then
         BEGIN

           Query_Lista_Cliente_App.PARAMS[0].AsString:='%'+Edit1.Text+'%';
         END
         ELSE
      if ComboBox1.ItemIndex = 2 then
         BEGIN

           if LENGTH(EDIT1.Text)=0 then
              Query_Lista_Cliente_App.PARAMS[0].AsString:='%'
              ELSE
              Query_Lista_Cliente_App.PARAMS[0].AsInteger:=StrToInt(Edit1.Text);
         END;





   Query_Lista_Cliente_App.OPEN;

end;

procedure TFrm_App.RzBitBtn2Click(Sender: TObject);
begin
Frm_APP_Cliente:=TFrm_APP_Cliente.Create(self);
Frm_APP_Cliente.ShowModal;
Frm_APP_Cliente.Free;
Query_Lista_Cliente_App.Refresh;
end;

procedure TFrm_App.RzBitBtn3Click(Sender: TObject);
begin
close;
end;

end.

