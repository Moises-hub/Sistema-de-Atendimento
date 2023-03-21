unit UFrm_LancAtendimento;

interface

uses IdComponent,IdTCPConnection,IdTCPClient, IdHTTP, IdBaseComponent,IdMessage, IdExplicitTLSClientServerBase,
IdMessageClient,IdSMTPBase,IdSMTP,IdIOHandler,IdIOHandlerSocket,IdIOHandlerStack,IdSSL,IdSSLOpenSSL,IdAttachmentFile, IdText,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.ExtCtrls,
  Vcl.Buttons, RzButton, DosMove, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, RzDBCmbo;

type
  TFrm_LancAtendimento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    ActionList1: TActionList;
    Act_Novo: TAction;
    DosMove1: TDosMove;
    Label7: TLabel;
    Act_Salvar: TAction;
    Act_Sair: TAction;
    Act_BuscaCli: TAction;
    ImageList1: TImageList;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    Label5: TLabel;
    RzComboBox3: TRzComboBox;
    RzComboBox4: TRzComboBox;
    Label6: TLabel;
    Panel4: TPanel;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    Label8: TLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1NOME: TStringField;
    FDQuery1ID_CLIENTE: TIntegerField;
    Edit1: TEdit;
    procedure Act_NovoExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_BuscaCliExecute(Sender: TObject);
    procedure carregacombobox(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure SendData( const copyDataStruct: TCopyDataStruct) ;

  private
    { Private declarations }
  public
    VAR
    AGEND : INTEGER;
    dupli : tfdquery;
  end;

var
  Frm_LancAtendimento: TFrm_LancAtendimento;

implementation

{$R *.dfm}

uses UFrm_Principal, UDM, UClientes, UFrm_Atendimento, UEnviaEmail;




function EnviarEmail(aHost : String; aPort : Integer; aLogin, aSenha,aListaEmail, aAssunto :String; aCorpo : TStrings; aAuth, aAuthSSL : Boolean) : Boolean;
var
 AuthSSL : TIdSSLIOHandlerSocketOpenSSL;
 IdSMTP    : TIdSMTP;
 IdMessage : TIdMessage;

begin
  Result:= False;
  IdSMTP    := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  try
    IdSMTP.Host     := aHost;
    IdSMTP.Port     := aPort;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Username := aLogin;
    IdSMTP.Password := aSenha;
    if aAuthSSL then
    begin
      AuthSSL                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      IdSMTP.IOHandler          := AuthSSL;
      IdSMTP.UseTLS             := utUseImplicitTLS;
      AuthSSL.SSLOptions.Method := sslvSSLv23;
      AuthSSL.SSLOptions.Mode   := sslmClient;





    end;
    if aAuth then
      IdSMTP.AuthType := satDefault
    else
      IdSMTP.AuthType := satNone;
    try
    IdSMTP.Connect;

    IdMessage.From.Address               := aLogin;
    IdMessage.Recipients.EMailAddresses  := aListaEmail;
    IdMessage.Subject                    := aAssunto;
    idmessage.Body.Add('<html>');
    idmessage.Body.Add('<body>');
    idmessage.Body.Add('<h1><b><i> #+protocolo </i></b></h1>');
    idmessage.Body.Add('<img src="E:\Delphi_Projetos\Coliseu_Controle\Win32\Debug\Imagens\Imagem1.png" alt="Trulli" width="500" height="333">');
    idmessage.Body.Add('<h1><b><i> #+protocolo </i></b></h1>');
    idmessage.Body.Add('</body>');
    idmessage.Body.Add('</html>');
    idmessage.ContentType := 'text/html; charset=iso-8859-1';


    IdSMTP.Send(IdMessage);
   // ShowMessage('E-Mail Enviado com sucesso para: ' +  aListaEmail);
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao enviar E-Mail:'+#13#10+e.Message);
        Exit;
      end;
    end;
  finally
    IdSMTP.Disconnect;
    FreeAndNil(IdSMTP);
    FreeAndNil(IdMessage);
    if AuthSSL <> nil then
    FreeAndNil(AuthSSL);
  end;
  Result:= True;
end;


procedure TFrm_LancAtendimento.Act_BuscaCliExecute(Sender: TObject);
begin
Frm_Clientes:=TFrm_Clientes.Create(SELF);
dm.Query_Clientes.refresh;
Frm_Clientes.ShowModal;
RzDBLookupComboBox1.KeyValue:= dm.Query_ClientesID_CLIENTE.value;



Frm_Clientes.Free;

end;

procedure TFrm_LancAtendimento.Act_NovoExecute(Sender: TObject);
begin

Edit2.Clear;
RZComboBox4.ItemIndex := 1;
RzComboBox3.ItemIndex := 0;
dm.Proc_LancaAtende.Params[6].asinteger:=1;
                     RzComboBox1.Value:=IntToStr(Frm_Principal.id_usu);
                     RzComboBox2.Value:=IntToStr(Frm_Principal.id_usu);


end;

procedure TFrm_LancAtendimento.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_LancAtendimento.Act_SalvarExecute(Sender: TObject);
var
status : tfdquery;
C,i,int : INTEGER;
float : single;


begin
                             C:=0;

                             dupli:=TFDQuery.Create(self);
                              dupli.Connection:=DM.Conexao;
                             if dm.Proc_LancaAtende.ParamByName('CADASTRO').asinteger = 1 then
                                   BEGIN
                                   if LENGTH(RzDBLookupComboBox1.Text)<>0 then
                                      BEGIN



                                       dupli.SQL.Text:='select count(*) from controle_atendimentos ' +
                                                       'where ((id_status = 0) or (id_status = 4) or (id_status = 1) or (id_status = 2)) ' +
                                                       'and id_cliente =:f and (current_date - cast(controle_atendimentos.data_hora as date)) >= 7';
                                       dupli.ParamS[0].AsInteger:=RzDBLookupComboBox1.KeyValue;
                                       dupli.open;
                                           C:=dupli.FieldByName('count').AsInteger;
                                      END;
                                   END;




                             if length(RzDBLookupComboBox1.Text)=0 then
                                begin
                                  ShowMessage('selecione o cliente!');
                                  Act_BuscaCliExecute(sender);
                                end
                                else
                               if C >= 1 then
                                 ShowMessage('Cliente ja possui um atendimento em aberto!')
                                    ELSE
                             if length(RzComboBox1.Text)=0 then
                                begin
                                  ShowMessage('selecione o Atendente!');
                                  RzComboBox1.SetFocus;
                                end
                                else
                             if length(RzComboBox2.Text)=0 then
                                begin
                                  ShowMessage('selecione o Responsável!');
                                  RzComboBox2.SetFocus;
                                end
                                else
                                begin
                                 dm.Proc_LancaAtende.ParamByName('CLI').asinteger:=RzDBLookupComboBox1.KeyValue;
                                 dm.Proc_LancaAtende.ParamByName('FUN').asinteger:=StrToInt(RzComboBox1.Value);
                                 dm.Proc_LancaAtende.ParamByName('RESP').asinteger:=StrToInt(RzComboBox2.Value);
                                 dm.Proc_LancaAtende.ParamByName('DESCRI').asstring:=Edit2.Text;
                                 dm.Proc_LancaAtende.ParamByName('STATUS').asinteger:=StrToInt(RzComboBox4.Value);
                                 dm.Proc_LancaAtende.ParamByName('CANAL').asinteger:= StrToInt(RzComboBox3.Value);


                                 if dm.Proc_LancaAtende.ParamByName('CADASTRO').asinteger = 2 then
                                    dm.Proc_LancaAtende.ParamByName('ID').asinteger :=DM.Query_AtendimentoID_ATENDIMENTO.AsInteger
                                    else
                                    begin
                                      dm.gen.close;
                                      dm.Gen.Open();
                                      dm.Proc_LancaAtende.ParamByName('ID').asinteger :=DM.GenGEN_ID.AsInteger;


                                          for i := 1 to 10 do
                                          begin
                                          int := 1 + Random(100000+DM.GenGEN_ID.AsInteger);
                                          end;

                                        dm.Proc_LancaAtende.ParamByName('PROTO').AsString :=IntToStr(int);

                                        {DM.Query_ClienteBusca.Close;
                                        DM.Query_ClienteBusca.ParamByName('SOLIC').AsInteger:= DM.Query_AtendimentoID_CLIENTE.AsInteger;
                                        DM.Query_ClienteBusca.Open();}
                                        TRY

                                        Frm_Principal.protocolo:=IntToStr(DM.GenGEN_ID.AsInteger)+IntToStr(int);
                                        Frm_Principal.status:=RzComboBox4.Text;
                                        Frm_Principal.respon:=RzComboBox2.Text;
                                        Frm_Principal.canal:=RzComboBox3.Text;
                                        Frm_Principal.data_hora:=FormatDateTime('dd"/"mm"/"yyyy" "hh":"mm":"ss',now);
                                        Frm_Principal.DESC:=EDIT2.Text;

                                        EXCEPT

                                        END;

                                      {   try
                                            Frm_Principal.EnviarEmail('smtp.bra.terra.com.br',587,'silenus','45781389',dm.Query_ClienteBuscaEMAIL.AsString,'Atendimento Coliseu Sistemas #'+IntToStr(DM.GenGEN_ID.AsInteger)+IntToStr(int), True, True);
                                            DeleteFile(ExtractFilePath(Application.ExeName)+'\chamado.html');
                                         except

                                         end; }
                                              {
                                    Frm_Principal.EnviarEmail(dm.Query_EmpresaSMTP_ENDERECO.AsString, dm.Query_EmpresaSMTP_PORTA.AsInteger,
                                    dm.Query_EmpresaEMAIL.AsString,dm.Query_EmpresaSMTP_SENHA.AsString,//
                                    'moisessnog@gmail.com','Atendimento Coliseu Sistemas #'+
                                    IntToStr(DM.GenGEN_ID.AsInteger)+IntToStr(int),'', True, True);
                                             }

                                    end;














                                 dm.Proc_LancaAtende.ParamByName('SOLIC').asstring:=edit1.Text;

                                 dm.Proc_LancaAtende.ExecProc;

                                 dm.FDTransaction1.Commit;
                                   if AGEND = 1 then
                                    begin
                                       status:=TFDQuery.Create(self);
                                       status.Connection:=DM.Conexao;
                                       status.SQL.Text:='update CONTROLE_AGENDAMENTO set status =2 where id =:f';
                                       status.Params[0].AsInteger:=Frm_Principal.Query_AgendamentoID.AsInteger;
                                       status.ExecSQL;
                                       status.Free;
                                       Frm_Principal.Query_Agendamento.Refresh;
                                        Frm_Atendimento:=TFrm_Atendimento.Create(self);
                                        Frm_Atendimento.RzComboBox3.Value:= RzComboBox3.Value;
                                        Frm_Atendimento.Edit2.Text:= Edit2.Text;
                                        Frm_Atendimento.RZComboBox4.Value:=RZComboBox4.Value;

                                       Frm_Atendimento.Query_atend.Close;
                                       Frm_Atendimento.Query_atend.params[0].AsInteger:= DM.GenGEN_ID.AsInteger;
                                       Frm_Atendimento.Query_atend.open;
                                     //  ShowMessage(IntToStr(Frm_Atendimento.Query_atendID_ATENDIMENTO.asinteger));

                                      {  DM.Query_Clientes.Close;
                                        dm.Query_Clientes.SQL.Text:='select  * from controle_clientes WHERE id_cliente =:F';
                                        dm.Query_Clientes.ParamByName(0).AsInteger:= Frm_Atendimento.Query_atendID_CLIENTE.AsInteger;
                                        dm.Query_Clientes.OPEN; }

                                        dm.Query_ListSoftware.Close;
                                        dm.Query_ListSoftware.params[0].AsInteger:= Frm_Atendimento.Query_atendID_CLIENTE.AsInteger;
                                        dm.Query_ListSoftware.open;
                                        DM.Query_Clientes.Open();




                                         dm.Query_Historico.Close;
                                         dm.Query_Historico.params[0].AsInteger:=Frm_Atendimento.Query_atendID_CLIENTE.AsInteger;
                                         dm.Query_Historico.params[1].AsInteger:=Frm_Atendimento.Query_atendID_ATENDIMENTO.AsInteger;
                                         dm.Query_Historico.open;






                                       Frm_Atendimento.ShowModal;
                                        DM.Query_Atendimento.Refresh;
                                        close;



                                    end
                                    else
                                    ShowMessage('Atendimento Lançado com Sucesso!');

                                    close;






                                end;



               dm.Proc_LancaAtende.ParamByName('CADASTRO').asinteger:=1;
end;

procedure TFrm_LancAtendimento.Button1Click(Sender: TObject);
begin
 ShowMessage(RzDBLookupComboBox1.KeyValue);
end;

procedure TFrm_LancAtendimento.carregacombobox(Sender: TObject);
var
query_carrega : TFDQuery;
begin
           query_carrega:=TFDQuery.Create(self);
           query_carrega.Connection:=dm.Conexao;
           query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                   'where funcionarios.status=1';
           query_carrega.open;

           query_carrega.first;
           RzComboBox1.Values.Clear;
           RzComboBox1.Items.Clear;

           RzComboBox2.Values.Clear;
           RzComboBox2.Items.Clear;
           while not query_carrega.eof do
           begin
              RzComboBox1.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              RzComboBox1.Items.add(query_carrega.FieldByName('nome').Asstring);

              RzComboBox2.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              RzComboBox2.Items.add(query_carrega.FieldByName('nome').Asstring);

              query_carrega.next;
           end;

          if AGEND = 1 then
           BEGIN

              RzComboBox1.ItemIndex:=RZComboBox1.Items.indexof(Frm_Principal.Query_AgendamentoRESPONSAVEL.AsString);
              RzComboBox2.ItemIndex:=RZComboBox2.Items.indexof(Frm_Principal.Query_AgendamentoRESPONSAVEL.AsString);
              RzComboBox4.ItemIndex:=1;
           END;


                              RzComboBox1.ItemIndex:=RzComboBox1.IndexOf(StringReplace(Frm_Principal.RzStatusPane6.Caption,'Usuário: ','',[rfReplaceAll]));
                              RzComboBox2.ItemIndex:=RzComboBox2.IndexOf(StringReplace(Frm_Principal.RzStatusPane6.Caption,'Usuário: ','',[rfReplaceAll]));


end;

procedure TFrm_LancAtendimento.FormShow(Sender: TObject);
begin

                  carregacombobox(sender);
               IF dm.Proc_LancaAtende.Params[6].asinteger =2 THEN
                   BEGIN
                              RzComboBox1.Value:=IntToStr(DM.Query_AtendimentoID_ATENDENTE.AsInteger);
                              RzComboBox2.VALUE:=IntToStr(DM.Query_AtendimentoID_RESPONSAVEL.AsInteger);

                   END
                   else
                   RzComboBox2.VALUE:=IntToStr(4);
                   dm.Query_Clientes.Open();
end;

procedure TFrm_LancAtendimento.SendData( const copyDataStruct: TCopyDataStruct) ;
var  receiverHandle : THandle;
res : integer;
begin
    receiverHandle := FindWindow(PChar('TReceiverMainForm'),PChar('ReceiverMainForm')) ;
    if receiverHandle = 0 then
    begin    ShowMessage('CopyData Receiver NOT found!') ;
    Exit;
    end ;
    res := SendMessage(receiverHandle, WM_COPYDATA, Integer(Handle), Integer(@copyDataStruct)) ;
 end ;







end.






