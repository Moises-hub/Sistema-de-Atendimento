unit UFrm_APP_Cliente;

interface

uses json,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.DBCtrls, RzDBCmbo,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RzCmboBx, System.Actions,
  Vcl.ActnList;

type
  TFrm_APP_Cliente = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    NetHTTPClient1: TNetHTTPClient;
    RzComboBox1: TRzComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RzBitBtn3: TRzBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    procedure firebase_cadastra_cliente(id_cliente,naparelhos : integer; projeto : string);
    PROCEDURE SALVAR(ID_CLIENTE,ID_APP : INTEGER; CHAVE : STRING);
    function getCamposJsonString(json,value:String): String;
  public
    { Public declarations }
  end;

var
  Frm_APP_Cliente: TFrm_APP_Cliente;

implementation

{$R *.dfm}

uses UDM, UClientes;

{ TFrm_APP_Cliente }

procedure TFrm_APP_Cliente.FormShow(Sender: TObject);
begin
dm.Query_Clientes.Open();
dm.Query_App.Open();
dm.Query_App.First;
while not dm.Query_App.eof do
  begin
    RzComboBox1.Items.Add(dm.Query_AppNOME.AsString);
    RzComboBox1.VALUES.Add(dm.Query_AppID.AsString);
    dm.Query_App.next;
  end;
dm.Query_App.CLOSE;
RzComboBox1.ItemIndex :=0;
end;

function TFrm_APP_Cliente.getCamposJsonString(json,value:String): String;
var
   LJSONObject: TJSONObject;
   function TrataObjeto(jObj:TJSONObject):string;
   var i:integer;
       jPar: TJSONPair;
   begin
        result := '';
        for i := 0 to jObj.Size - 1 do
        begin
             jPar := jObj.Get(i);
             if jPar.JsonValue Is TJSONObject then
                result := TrataObjeto((jPar.JsonValue As TJSONObject)) else
             if sametext(trim(jPar.JsonString.Value),value) then
             begin
                  Result := jPar.JsonValue.Value;
                  break;
             end;
             if result <> '' then
                break;
        end;
   end;
begin
   try
      LJSONObject := nil;
      LJSONObject := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(json),0) as TJSONObject;
      result := TrataObjeto(LJSONObject);
   finally
      LJSONObject.Free;
   end;
end;

procedure TFrm_APP_Cliente.RzBitBtn1Click(Sender: TObject);
VAR
QUERY_APP : TFDQUERY;
begin
     if RzComboBox1.ItemIndex = -1 then
     BEGIN
       MessageDlg('SELECIONE O APP',mtWarning,[MBOK],0);
       RzComboBox1.SetFocus;
     END
     ELSE
     if Length(RzDBLookupComboBox2.KeyValue) = 0 then
     BEGIN
       MessageDlg('SELECIONE O CLIENTE',mtWarning,[MBOK],0);
       RzDBLookupComboBox2.SetFocus;
     END
     ELSE
     BEGIN
      QUERY_APP := TFDQUERY.Create(NIL);
      QUERY_APP.Connection:=DM.Conexao;

      QUERY_APP.SQL.Text:='SELECT CONTROLE_APP.nome,COD_FIREBASE,CASE WHEN STATUS = 1 then ''STATUS: ATIVO''' +
                                                    'WHEN STATUS = 2 then ''STATUS: INATIVO'''+
                                                    '  END STATUS FROM CONTROLE_APP_CLIENTE ' +
                                                    ' INNER JOIN controle_app ON controle_app_cliente.id_app = controle_app.id '+
                                                    'WHERE ID_CLIENTE =:D AND ID_APP =:A';
      QUERY_APP.params[0].AsInteger:=RzDBLookupComboBox2.KeyValue;
      QUERY_APP.params[1].AsInteger:=StrToInt(RzComboBox1.Value);
      QUERY_APP.open;

      if LENGTH(QUERY_APP.FieldByName('COD_FIREBASE').AsString) = 0 then
         BEGIN
              QUERY_APP.SQL.Text:='select NOME_PROJETO from CONTROLE_APP where id =:f';
              QUERY_APP.params[0].AsInteger:=StrToInt(RzComboBox1.Value);
              QUERY_APP.open;


              firebase_cadastra_cliente(RzDBLookupComboBox2.KeyValue,1,QUERY_APP.FieldByName('NOME_PROJETO').AsString);
         END
         ELSE
         ShowMessage('CLIENTE JÁ REGISTRADO '+#13+QUERY_APP.FieldByName('NOME').AsString+#13+
         'CHAVE FIREBASE: '+QUERY_APP.FieldByName('COD_FIREBASE').AsString+#13+QUERY_APP.FieldByName('STATUS').AsString);
      QUERY_APP.Free;

     END;
end;

procedure TFrm_APP_Cliente.RzBitBtn2Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_APP_Cliente.SALVAR(ID_CLIENTE, ID_APP: INTEGER; CHAVE : STRING);
VAR
QUERY_SALVAR : TFDQUERY;
begin
               QUERY_SALVAR := TFDQUERY.Create(NIL);
               QUERY_SALVAR.Connection:=DM.Conexao;
               QUERY_SALVAR.SQL.Text:='INSERT INTO CONTROLE_APP_CLIENTE (ID,ID_CLIENTE,ID_APP,COD_FIREBASE,STATUS,NAPARELHOS) '+
                                                          'VALUES((SELECT GEN_ID(CONTROLE_APP_CLIENTE,1) FROM RDB$DATABASE),' +
                                                                  ':A, ' +
                                                                  ':B,' +
                                                                  ':C,'+
                                                                  '1,'+
                                                                  ':D)';
               QUERY_SALVAR.PARAMS[0].AsInteger:=ID_CLIENTE;
               QUERY_SALVAR.PARAMS[1].AsInteger:=ID_APP;
               QUERY_SALVAR.PARAMS[2].AsString:=CHAVE;
             //  QUERY_SALVAR.PARAMS[3].AsString:=N
               QUERY_SALVAR.ExecSQL;
               DM.FDTransaction1.Commit;
end;

procedure TFrm_APP_Cliente.Action1Execute(Sender: TObject);
begin
Frm_Clientes:=TFrm_Clientes.Create(SELF);
Frm_Clientes.ShowModal;
RzDBLookupComboBox2.KeyValue:=dm.Query_ClientesID_CLIENTE.AsInteger;
Frm_Clientes.free;
end;

procedure TFrm_APP_Cliente.firebase_cadastra_cliente(id_cliente,naparelhos : integer; projeto : string);
var
json : TStringStream;
responde : TStringList;
query_Cliente : tfdquery;
cnpj : string;
begin
     TRY
      query_Cliente:=TFDQuery.Create(nil);
      query_cliente.Connection:=dm.Conexao;
      query_cliente.SQL.Text:='select nome,CPF_CNPJ,NOME_FANTASIA from clientes where id_cliente =:f';
      query_cliente.params[0].AsInteger:=id_cliente;
      query_cliente.open;

            cnpj:=StringReplace(query_cliente.FieldByName('CPF_CNPJ').AsString,'.','',[rfReplaceAll]);
      cnpj:=StringReplace(cnpj,'/','',[rfReplaceAll]);
      cnpj:=StringReplace(cnpj,'-','',[rfReplaceAll]);

     json:=TStringStream.Create('{' +#13+
              '  "fields": ' +#13+
              '  { ' +#13+
              '    "razao_social": ' +#13+
              '    { ' +#13+
              '      "stringValue":"'+query_Cliente.FieldByName('nome').AsString+'" ' +#13+
               '   } ' +#13+
               ', ' +#13+
               '"id": ' +#13+
               ' { ' +#13+
               ' "integerValue": '+IntToStr(id_cliente)+' ' +#13+
               '    }, ' +#13+
               ' "nome_fantasia": ' +#13+
               '   { ' +#13+
               '  "stringValue":"'+query_Cliente.FieldByName('nome_fantasia').AsString+'" ' +#13+
               '    } ' +#13+
               '	, ' +#13+
               ' "cnpj": ' +#13+
               '    { ' +
               '  "stringValue":"'+cnpj+'" ' +#13+
               '    }, ' +#13+
               ' "status": ' +#13+
               '    { ' +
               '  "integerValue":1 ' +#13+
               '    } ' +#13+
               '  }, ' + #13+
               '}');

              responde:=TStringList.Create;


                responde.Text:=NetHTTPClient1.pOST('https://firestore.googleapis.com/v1beta1/projects/'+projeto+'/databases/(default)/documents/clientes/',json).ContentAsString();
                Edit1.Text:=StringReplace(getCamposJsonString( responde.Text,'name'),'projects/'+projeto+'/databases/(default)/documents/clientes/','',[rfReplaceAll]);
                SALVAR(RzDBLookupComboBox2.KeyValue,StrToInt(RzComboBox1.Value),Edit1.Text);
              //  responde.SaveToFile('JSONE.TXT');
                ShowMessage('CADASTRO EFETUADO COM SUCESSO!');
                CLOSE;
     EXCEPT
     ON E:Exception DO
        MessageDlg('OUVE UM ERRO AO SALVAR O REGISTRO!'+E.Message,mtError,[mbOK],0);

     END;
end;

end.
