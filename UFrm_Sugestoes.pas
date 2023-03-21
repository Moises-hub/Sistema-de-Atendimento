unit UFrm_Sugestoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, REST.Client, json, IdText, System.Threading,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls, Vcl.DBCGrids, RzButton,
  System.ImageList, Vcl.ImgList, RzCmboBx, IBX.IBDatabase, IBX.IBCustomDataSet,
  IBX.IBQuery, System.Actions, Vcl.ActnList, Vcl.Menus, dxGDIPlusClasses,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  IdServerIOHandler, IdSSL, IdSSLOpenSSL, RzRadGrp, Vcl.Mask, RzEdit, DosMove,
  IdHTTP;

type
  TFrm_Sugestao = class(TForm)
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    RzPanel1: TRzPanel;
    NetHTTPClient1: TNetHTTPClient;
    Panel1: TPanel;
    DS_Query_Sugestoes: TDataSource;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    RzToolButton1: TRzToolButton;
    RzComboBox1: TRzComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    RzComboBox2: TRzComboBox;
    Label3: TLabel;
    ActionList1: TActionList;
    Act_Atualizar: TAction;
    Act_Visualizar: TAction;
    Act_EmAnalize: TAction;
    PopupMenu1: TPopupMenu;
    Act_Aprovado: TAction;
    Act_Recusado: TAction;
    ActAtualizar1: TMenuItem;
    Visualizar1: TMenuItem;
    Status1: TMenuItem;
    EmAnalize1: TMenuItem;
    Aprovado1: TMenuItem;
    Recusado1: TMenuItem;
    RzComboBox3: TRzComboBox;
    Label4: TLabel;
    ImageList2: TImageList;
    RzPanel2: TRzPanel;
    Image1: TImage;
    Act_Desenvolvimento: TAction;
    Act_Concluido: TAction;
    Act_Atualizado: TAction;
    EmDesenvolvimento1: TMenuItem;
    Concluido1: TMenuItem;
    Atualizado1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel2: TPanel;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzPanel6: TRzPanel;
    RzPanel7: TRzPanel;
    RzPanel8: TRzPanel;
    Act_ResponsavelColiseu: TAction;
    N3: TMenuItem;
    AlterarResponsvelColiseu1: TMenuItem;
    RzComboBox4: TRzComboBox;
    Label5: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    DosMove1: TDosMove;
    IdHTTP1: TIdHTTP;
    Query_Sugestoes: TFDQuery;
    Query_SugestoesID_COLSUGESTOES: TIntegerField;
    Query_SugestoesDATA: TSQLTimeStampField;
    Query_SugestoesCNPJ: TStringField;
    Query_SugestoesNOME: TStringField;
    Query_SugestoesNOME_FANTASIA: TStringField;
    Query_SugestoesPROTOCOLO: TStringField;
    Query_SugestoesSOLICITACAO: TStringField;
    Query_SugestoesDESCRICAO: TStringField;
    Query_SugestoesRESPONSAVEL: TStringField;
    Query_SugestoesFONE: TStringField;
    Query_SugestoesEMAIL: TStringField;
    Query_SugestoesDESCRITIVOS_FINAIS: TMemoField;
    Query_SugestoesDATA_PREVISTA: TDateField;
    Query_SugestoesDATA_APROVA: TDateField;
    Query_SugestoesVALOR: TBCDField;
    Query_SugestoesTIPO_: TStringField;
    Query_SugestoesTIPO: TIntegerField;
    Query_SugestoesCASE: TStringField;
    Query_SugestoesSTATUS: TIntegerField;
    Query_SugestoesAPROVADO_POR: TStringField;
    Query_SugestoesATUALIZADO_POR: TStringField;
    Query_SugestoesRESPONSAVEL_COLISEU: TStringField;
    Query_SugestoesRESPONSAVEL_EMPRESA: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_AtualizarExecute(Sender: TObject);
    procedure Act_AprovadoExecute(Sender: TObject);
    procedure Act_RecusadoExecute(Sender: TObject);
    procedure Act_EmAnalizeExecute(Sender: TObject);
    procedure Act_DesenvolvimentoExecute(Sender: TObject);
    procedure Act_ConcluidoExecute(Sender: TObject);
    procedure Act_AtualizadoExecute(Sender: TObject);
    procedure Act_ResponsavelColiseuExecute(Sender: TObject);
    procedure RzRadioGroup1Changing(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);


  private
    { Private declarations }
  public
    procedure EnviarEmail(tex : string);
  end;



var
  Frm_Sugestao: TFrm_Sugestao;

implementation

{$R *.dfm}

uses UDM, UFrm_VSugestoes, UFrm_Confirma_Recusa, UFrm_Principal, BuscaRegistro,
  USugestao_Responsavel;

procedure TFrm_Sugestao.Act_AprovadoExecute(Sender: TObject);
begin
       if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger <> 2 then
         BEGIN
           dm.Query_Funcionario.Open();
          Frm_Confirma_Recusa:=TFrm_Confirma_Recusa.Create(self);
          Frm_Confirma_Recusa.RzDateTimeEdit1.Date:=now+15;
          Frm_Confirma_Recusa.DBLookupComboBox1.KeyValue:=Frm_Principal.id_usu;
          Frm_Confirma_Recusa.ST := 2;
          Frm_Confirma_Recusa.ShowModal;
          Frm_Confirma_Recusa.Free;



          

         END;
end;

procedure TFrm_Sugestao.Act_AtualizadoExecute(Sender: TObject);

var
q : TFDQUery;
begin
  if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger <> 6 then
         BEGIN

                   ShowMessage(IntToStr(Frm_Principal.id_usu));

                 q:=TFDQuery.Create(nil);
                  q.Connection:=dm.Conexao;
                  q.SQL.Text:='update COL_SUGESTOES set status =:ST,col_sugestoes.atualizado_por =:A ';

                     BEGIN
                      q.SQL.add('where  ID_COLSUGESTOES =:B ');
                      q.Params[0].AsInteger:=6;
                      Q.Params[1].asinteger:=Frm_Principal.id_usu;
                      q.Params[2].AsInteger:=Frm_Sugestao.Query_SugestoesID_COLSUGESTOES.AsInteger;
                     END;


            q.ExecSQL;

            EnviarEmail('SOLICITAÇÃO CONCLUIDA COM SUCESSO!');

              q.Free;



          


         END;

end;

procedure TFrm_Sugestao.Act_AtualizarExecute(Sender: TObject);
var
solicitacoes : TFDQUERY;
receb : BuscarRegistro;
begin


     receb := BuscarRegistro.create;
     receb.execute;
     receb.Destroy;
     if Query_Sugestoes.Active = true then
        begin
          Query_Sugestoes.Refresh;
        end;


           (*   DM.Conexao.Close;

               Query_Sugestoes.CLOSE;
               IBDatabase1.Close;
               IBDatabase1.OPEN;
               QUERY_SUGESTOES.OPEN;
               dm.Conexao.Open(); *)
end;

procedure TFrm_Sugestao.Act_ConcluidoExecute(Sender: TObject);
var
q : TFDQUery;
begin
  if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger <> 5 then
         BEGIN



                 q:=TFDQuery.Create(nil);
                  q.Connection:=dm.Conexao;
                  q.SQL.Text:='update COL_SUGESTOES set status =:ST ';

                     BEGIN
                      q.SQL.add('where  ID_COLSUGESTOES =:a ');
                      q.Params[0].AsInteger:=5;
                      q.Params[1].AsInteger:=Frm_Sugestao.Query_SugestoesID_COLSUGESTOES.AsInteger;
                     END;


            q.ExecSQL;

            EnviarEmail('SUA SOLICITAÇÃO ESTA CONCLUIDA '+#13+'BREVE ENTRAREMOS EM CONTATO PARA ATUALIZAÇÃO');

              q.Free;



            

         END;
end;

procedure TFrm_Sugestao.Act_DesenvolvimentoExecute(Sender: TObject);
var
q : TFDQuery;
begin
  if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger <> 4 then
         BEGIN



                 q:=TFDQuery.Create(nil);
                  q.Connection:=dm.Conexao;
                  q.SQL.Text:='update COL_SUGESTOES set status =:ST ';

                     BEGIN
                      q.SQL.add('where  ID_COLSUGESTOES =:a ');
                      q.Params[0].AsInteger:=4;
                      q.Params[1].AsInteger:=Frm_Sugestao.Query_SugestoesID_COLSUGESTOES.AsInteger;
                     END;


            q.ExecSQL;

            EnviarEmail('SUA SOLICITAÇÃO ESTA EM DESENVOLVIMENTO');

              q.Free;



              DM.Conexao.Close;



         END;
end;

procedure TFrm_Sugestao.Act_EmAnalizeExecute(Sender: TObject);
var
q : tfdquery;
begin
    if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger <> 1 then
         BEGIN
              q:=TFDQuery.Create(nil);
              q.Connection:=dm.Conexao;
              q.SQL.Text:='update COL_SUGESTOES  set status = 1  ' +
                          'where  ID_COLSUGESTOES =:a ';
              q.Params[0].AsInteger:=Frm_Sugestao.Query_SugestoesID_COLSUGESTOES.AsInteger;
              q.ExecSQL;
              q.Free;
         END;


end;

procedure TFrm_Sugestao.Act_RecusadoExecute(Sender: TObject);
begin
  if Frm_Sugestao.Query_SugestoesSTATUS.AsInteger <> 3 then
         BEGIN

          Frm_Confirma_Recusa:=TFrm_Confirma_Recusa.Create(self);
          Frm_Confirma_Recusa.ST := 3;

          Frm_Confirma_Recusa.RzDateTimeEdit1.Visible:=false;
          Frm_Confirma_Recusa.Label2.Visible:=false;
          Frm_Confirma_Recusa.Label7.Visible:=false;
          Frm_Confirma_Recusa.Label9.Visible:=false;
          Frm_Confirma_Recusa.DBLookupComboBox1.Visible:=false;
          Frm_Confirma_Recusa.cxCurrencyEdit1.Visible:=false;

          Frm_Confirma_Recusa.ShowModal;
          Frm_Confirma_Recusa.Free;
          DM.Conexao.Close;

            
         END;
end;

procedure TFrm_Sugestao.Act_ResponsavelColiseuExecute(Sender: TObject);
begin
              Sugestao_Responsavel:=tSugestao_Responsavel.Create(self);

              dm.Query_Funcionario.Open();
              if length(Query_SugestoesRESPONSAVEL_COLISEU.AsString)<>0 then

              Sugestao_Responsavel.DBLookupComboBox1.KeyValue:=Query_Sugestoesresponsavel_empresa.AsInteger
              ELSE
              Sugestao_Responsavel.DBLookupComboBox1.KeyValue:= Frm_Principal.id_usu;
              Sugestao_Responsavel.ShowModal;

             
end;

procedure TFrm_Sugestao.Button1Click(Sender: TObject);
begin
end;

{ BuscarRegistros }

procedure  TFrm_Sugestao.EnviarEmail(tex : string);
var
 AuthSSL : TIdSSLIOHandlerSocketOpenSSL;
 IdSMTP    : TIdSMTP;
 IdMessage : TIdMessage;
  IdText : TIdText;
  q : tfdquery;

 TEXTO : TStringList;
 i : integer;
begin

  IdSMTP    := TIdSMTP.Create(nil);
  IdMessage := TIdMessage.Create(nil);
  try
    IdSMTP.Host     :=  'smtp.bra.terra.com.br';
    IdSMTP.Port     := 587;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Username :=  'silenus';
    IdSMTP.Password := '45781389';

    try
    IdSMTP.Connect;



    IdMessage.From.Address := 'silenus@terra.com.br';
    IdMessage.ReplyTo.EMailAddresses := ' contato@coliseusistemas.com.br';
    IdMessage.Recipients.EMailAddresses  := Query_Sugestoes.fieldbyname('email').AsString;
    IdMessage.Subject:='RE: '+Query_SugestoesTIPO_.AsString+' PROTOCOLO:'+Frm_Sugestao.Query_SugestoesPROTOCOLO.Text;
    IdMessage.ContentType := 'multipart/mixed';
    IdMessage.Encoding :=meMIME;
    IdText := TIdText.Create(IdMessage.MessageParts);

    TEXTO:=TStringList.Create;
    TEXTO.Add('DATA:'+DateTimeToStr(now)+#13);
    TEXTO.Add('PROTOCOLO:'+Frm_Sugestao.Query_SugestoesPROTOCOLO.Text+#13);
    TEXTO.Add('STATUS:'+Frm_Sugestao.Query_SugestoesCASE.AsString+#13);
    TEXTO.Add(Frm_Sugestao.Query_SugestoesTIPO_.AsString+': '+Frm_Sugestao.Query_SugestoesDESCRICAO.AsString+#13);
    TEXTO.Add('A/C Sr(a) '+Frm_Sugestao.Query_SugestoesRESPONSAVEL.AsString+#13);

    TEXTO.Add(tex+#13);



         Texto.Add(#13);
         Texto.Add(#13);
         Texto.Add(#13);
         Texto.Add('Coliseu Sistemas');



            IdText.Body.Text:=Texto.Text;


    //
    // IdText.ContentType := 'text/html;';


    IdSMTP.Send(IdMessage);






      dm.Conexao.Close;
      dm.Conexao.Open();


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

end;





procedure TFrm_Sugestao.DBGrid1DblClick(Sender: TObject);
begin
     Frm_VSugestoes:=TFrm_VSugestoes.Create(self);
     Frm_VSugestoes.ShowModal;

     dm.FDTransaction1.StartTransaction;
     dm.Conexao.Commit;
     Edit1Change(sender);
   

end;

procedure TFrm_Sugestao.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
 var
  R : TRect;
begin
  R := Rect;
  Dec(R.Bottom,0);
    If Column.Field =Query_SugestoesDESCRICAO Then
      Begin
        DBGrid1.Canvas.FillRect(Rect);
        DrawText(DBGrid1.Canvas.Handle,PChar(Query_SugestoesDESCRICAO.AsString),
        Length(Query_SugestoesDESCRICAO.AsString),R,DT_WORDBREAK);
    End;


      if Query_SugestoesSTATUS.AsInteger = 1 then
        begin

          DBGrid1.CAnvas.Brush.Color:=clRed;
          DBGrid1.Canvas.font.Color := clWhite;
          DBGrid1.Canvas.FillRect(Rect);
        end
        ELSE
      if Query_SugestoesSTATUS.AsInteger = 2 then
        begin


            DBGrid1.CAnvas.Brush.Color:=$00C66300;
          DBGrid1.Canvas.font.Color := clWhite;
          DBGrid1.Canvas.FillRect(Rect);


        end
        ELSE
       if Query_SugestoesSTATUS.AsInteger = 3 then
        begin

          DBGrid1.Canvas.font.Color := clsilver;

         DBGrid1.Canvas.font.Style := Font.Style + [fsStrikeOut];
         TDBGrid(Sender).Canvas.FillRect(Rect);
        end
        ELSE
       if Query_SugestoesSTATUS.AsInteger = 4 then
        begin

             DBGrid1.CAnvas.Brush.Color:=clYellow;
          DBGrid1.Canvas.font.Color := clBlack;
         TDBGrid(Sender).Canvas.FillRect(Rect);
        end

        ELSE
       if Query_SugestoesSTATUS.AsInteger = 5 then
        begin

             DBGrid1.CAnvas.Brush.Color:=clInactiveCaption;
          DBGrid1.Canvas.font.Color := clBlack;
         TDBGrid(Sender).Canvas.FillRect(Rect);
        end
        ELSE
       if Query_SugestoesSTATUS.AsInteger = 6 then
        begin

             DBGrid1.CAnvas.Brush.Color:=clsilver;
          DBGrid1.Canvas.font.Color := clBlack;
         TDBGrid(Sender).Canvas.FillRect(Rect);
        end;
        DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);

       if Query_Sugestoestipo.AsInteger = 1 then
        begin
         IF DataCol = 0 THEN
           BEGIN
           TDBGrid(Sender).Canvas.FillRect(Rect);
           ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 1);
           END;
        end
        else
       if Query_Sugestoestipo.AsInteger = 2 then
        begin
          IF DataCol = 0 THEN
           BEGIN
          TDBGrid(Sender).Canvas.FillRect(Rect);
           ImageList2.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);
           END;
        end;




end;

procedure TFrm_Sugestao.Edit1Change(Sender: TObject);
begin
       Query_Sugestoes.Close;
       Query_Sugestoes.SQL.Text:='select col_sugestoes.ID_COLSUGESTOES, '+
                                 '       col_sugestoes.data, ' +
                                 '       col_sugestoes.cnpj,' +
                                 '       clientes.nome, ' +
                                 '       clientes.nome_fantasia, ' +
                                 '       col_sugestoes.protocolo, ' +
                                 '       col_sugestoes.solicitacao, ' +
                                 '       cast(col_sugestoes.descricao as varchar(500)) descricao, ' +
                                 '       col_sugestoes.responsavel, ' +
                                 '       col_sugestoes.fone, ' +
                                 '       col_sugestoes.email, ' +
                                 '       case when col_sugestoes.tipo = 1 then ''SUGESTÃO''  ' +
                                 '            when col_sugestoes.tipo =2 then  ''SOLICITAÇÃO'' ' +
                                 '       end tipo_, ' +
                                 '       col_sugestoes.tipo, ' +
                                 '       col_sugestoes.VALOR, '+
                                 '       case when col_sugestoes.status = 1 then ''EM ANÁLISE''  ' +
                                 '       when col_sugestoes.status = 2 then ''APROVADO'' ' +
                                 '       when col_sugestoes.status = 3 then ''RECUSADO'' ' +
                                 '       when col_sugestoes.status = 4 then ''EM DESENVOLVIMENTO'' '+
                                 '       when col_sugestoes.status = 5 then ''CONCLUIDO'' '+
                                 '       when col_sugestoes.status = 6 then ''ATUALIZADO'' '+
                                 '       end, ' +
                                 '       DESCRITIVOS_FINAIS, ' +
                                 '       DATA_PREVISTA,  '+
                                 '       DATA_APROVA, '+
                                 '       STATUS, '+
                                 '       col_sugestoes.responsavel_empresa, '+
                                 '       (SELECT FUNCIONARIOS.nome FROM FUNCIONARIOS WHERE funcionarios.id_funcionario = col_sugestoes.aprovado_por) APROVADO_POR, '+
                                 '       (SELECT FUNCIONARIOS.nome FROM FUNCIONARIOS WHERE funcionarios.id_funcionario = col_sugestoes.atualizado_por) ATUALIZADO_POR, '+
                                 '       (SELECT FUNCIONARIOS.nome FROM FUNCIONARIOS WHERE funcionarios.id_funcionario = col_sugestoes.responsavel_empresa) RESPONSAVEL_COLISEU '+
                                 '       from col_sugestoes ' +
                                 '        left join clientes on clientes.id_cliente = col_sugestoes.id_cliente ' +RzComboBox4.Value+' '+
                                 RzComboBox2.Value+' '+RzComboBox1.Value+' '+RzComboBox3.Value;





          //Memo1.Lines.Text:= Query_Sugestoes.SQL.Text;


        Query_Sugestoes.Params[0].AsDate:=RzDateTimeEdit1.Date;
        Query_Sugestoes.Params[1].AsDate:=RzDateTimeEdit2.Date;
        Query_Sugestoes.Params[2].AsString:='%'+Edit1.Text+'%';
        Query_Sugestoes.Open();

end;

procedure TFrm_Sugestao.FormShow(Sender: TObject);

begin
   Act_AtualizarExecute(Sender);

     RzDateTimeEdit1.Date:=NOW-1;
     RzDateTimeEdit2.Date:=NOW+15;

     Edit1Change(SENDER);
     Query_Sugestoes.Refresh;
     dm.Query_Funcionario.Open();


end;



procedure TFrm_Sugestao.RzRadioGroup1Changing(Sender: TObject;
  NewIndex: Integer; var AllowChange: Boolean);
begin
Edit1Change(sender);
end;

end.
