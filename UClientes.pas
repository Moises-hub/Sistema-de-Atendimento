unit UClientes;

interface

uses  INIFILES,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, DosMove, System.Actions, Vcl.ActnList,
  Vcl.DBCtrls, RzButton, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList;

type
  TFrm_Clientes = class(TForm)
    Panel1: TPanel;
    RzComboBox1: TRzComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Label2: TLabel;
    Act_Visualizar: TAction;
    Act_novo: TAction;
    Act_Ok: TAction;
    Panel5: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Act_Contrato: TAction;
    DosMove1: TDosMove;
    RzBitBtn5: TRzBitBtn;
    Act_Ocorrencias: TAction;
    RzBitBtn6: TRzBitBtn;
    Act_Atend_Aberto: TAction;
    ImageList1: TImageList;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Act_VisualizarExecute(Sender: TObject);
    procedure Act_novoExecute(Sender: TObject);
    procedure Act_OkExecute(Sender: TObject);
    procedure Act_ContratoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Act_OcorrenciasExecute(Sender: TObject);
    procedure Act_Atend_AbertoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Clientes: TFrm_Clientes;

implementation

{$R *.dfm}

uses UDM, UFrm_CadClientes, UFrm_Atualizacao, UFrm_Principal,
  UFrm_LancAtendimento, UFrm_LancaContrato, UFrm_Cli_Atend, UFrm_Atend_Aberto;

procedure TFrm_Clientes.Act_Atend_AbertoExecute(Sender: TObject);
begin
Frm_Atend_Aberto:=TFrm_Atend_Aberto.Create(self);
Frm_Atend_Aberto.ShowModal;
Frm_Atend_Aberto.free;
end;

procedure TFrm_Clientes.Act_ContratoExecute(Sender: TObject);
var
registro : string;
begin
              dm.Query_Contrato.Close;
              dm.Query_Contrato.Params[0].AsInteger:=dm.Query_ClientesID_CLIENTE.AsInteger;
              dm.Query_Contrato.Open();

              if dm.Query_Contrato.RecordCount > 0 then
                 begin

                   if Application.MessageBox('cliente ja possui contrato, deseja gerar um novo contratos?','Contrato',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON1)=mryes then
                      begin

                                  Frm_LancaContrato:=TFrm_LancaContrato.Create(self);
                                  dm.Query_Contrato.open;
                                  dm.Query_Contrato.insert;
                                  dm.Gen.Close;
                                  dm.Gen.SQL.Text:='select gen_id(GEN_CONTROLE_CONTRATO_ID,1) from RDB$DATABASE';
                                  dm.Gen.open;
                                  Frm_LancaContrato.id_contrato:=dm.GenGEN_ID.AsInteger;
                                  Frm_LancaContrato.id_cliente:=dm.Query_ClientesID_CLIENTE.AsInteger;
                                  Frm_LancaContrato.Edit3.Text:=DateToStr(now);
                                  Frm_LancaContrato.edit2.Text:=dm.Query_ClientesNOME.AsString;

                               if DM.Query_ClientesCOLISEU_GESTAO.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox1.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox1.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_FISCAL.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox2.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox2.Checked := FALSE;

                                if DM.Query_ClientesSILENUS_PDV.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox3.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox3.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_GRAOS.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox4.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox4.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_TRANSPORTE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox5.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox5.Checked := FALSE;

                                if DM.Query_ClientesAPP.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox6.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox6.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_WEB.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox7.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox7.Checked := FALSE;

                                if DM.Query_ClientesNFe.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox8.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox8.Checked := FALSE;

                                if DM.Query_ClientesNFCE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox9.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox9.Checked := FALSE;


                                if DM.Query_ClientesNFSE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox10.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox10.Checked := FALSE;

                                if DM.Query_ClientesMDFE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox11.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox11.Checked := FALSE;

                                if DM.Query_ClientesCTE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox12.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox12.Checked := FALSE;

                                if DM.Query_ClientesAPP_SALES.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox13.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox13.Checked := FALSE;

                                if DM.Query_ClientesAPP_DASH.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox14.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox14.Checked := FALSE;










                        Frm_LancaContrato.ShowModal;



















                     { begin
                             Frm_LancaContrato:=TFrm_LancaContrato.Create(self);
                             dm.Query_Contrato.open;
                              dm.Query_Contrato.insert;
                              dm.Gen.Close;
                              dm.Gen.SQL.Text:='select gen_id(GEN_CONTROLE_CONTRATO_ID,1) from RDB$DATABASE';
                              dm.Gen.open;
                              Frm_LancaContrato.id_contrato:=dm.GenGEN_ID.AsInteger;
                              Frm_LancaContrato.id_cliente:=dm.Query_ClientesID_CLIENTE.AsInteger;
                              Frm_LancaContrato.Edit3.Text:=DateToStr(now);
                              Frm_LancaContrato.edit2.Text:=dm.Query_ClientesNOME.AsString;

                               if DM.Query_ClientesCOLISEU_GESTAO.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox1.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox1.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_FISCAL.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox2.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox2.Checked := FALSE;

                                if DM.Query_ClientesSILENUS_PDV.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox3.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox3.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_GRAOS.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox4.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox4.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_TRANSPORTE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox5.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox5.Checked := FALSE;

                                if DM.Query_ClientesAPP.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox6.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox6.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_WEB.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox7.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox7.Checked := FALSE;

                                if DM.Query_ClientesNFe.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox8.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox8.Checked := FALSE;

                                if DM.Query_ClientesNFCE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox9.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox9.Checked := FALSE;


                                if DM.Query_ClientesNFSE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox10.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox10.Checked := FALSE;

                                if DM.Query_ClientesMDFE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox11.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox11.Checked := FALSE;

                                if DM.Query_ClientesCTE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox12.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox12.Checked := FALSE;

                                if DM.Query_ClientesAPP_SALES.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox13.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox13.Checked := FALSE;

                                if DM.Query_ClientesAPP_DASH.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox14.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox14.Checked := FALSE;

                        Frm_LancaContrato.ShowModal;   }
                      end;

                 end
                 else
                 begin

                              Frm_LancaContrato:=TFrm_LancaContrato.Create(self);
                             dm.Query_Contrato.open;
                              dm.Query_Contrato.insert;
                              dm.Gen.Close;
                              dm.Gen.SQL.Text:='select gen_id(GEN_CONTROLE_CONTRATO_ID,1) from RDB$DATABASE';
                              dm.Gen.open;
                              Frm_LancaContrato.id_contrato:=dm.GenGEN_ID.AsInteger;
                              Frm_LancaContrato.id_cliente:=dm.Query_ClientesID_CLIENTE.AsInteger;
                              Frm_LancaContrato.Edit3.Text:=DateToStr(now);
                              Frm_LancaContrato.edit2.Text:=dm.Query_ClientesNOME.AsString;

                               if DM.Query_ClientesCOLISEU_GESTAO.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox1.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox1.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_FISCAL.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox2.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox2.Checked := FALSE;

                                if DM.Query_ClientesSILENUS_PDV.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox3.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox3.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_GRAOS.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox4.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox4.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_TRANSPORTE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox5.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox5.Checked := FALSE;

                                if DM.Query_ClientesAPP.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox6.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox6.Checked := FALSE;

                                if DM.Query_ClientesCOLISEU_WEB.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox7.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox7.Checked := FALSE;

                                if DM.Query_ClientesNFe.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox8.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox8.Checked := FALSE;

                                if DM.Query_ClientesNFCE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox9.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox9.Checked := FALSE;


                                if DM.Query_ClientesNFSE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox10.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox10.Checked := FALSE;

                                if DM.Query_ClientesMDFE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox11.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox11.Checked := FALSE;

                                if DM.Query_ClientesCTE.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox12.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox12.Checked := FALSE;

                                if DM.Query_ClientesAPP_SALES.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox13.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox13.Checked := FALSE;

                                if DM.Query_ClientesAPP_DASH.ASINTEGER = 1 then
                                   Frm_LancaContrato.RzCheckBox14.Checked := TRUE
                                   ELSE
                                   Frm_LancaContrato.RzCheckBox14.Checked := FALSE;










                        Frm_LancaContrato.ShowModal;

                 end;





















end;

procedure TFrm_Clientes.Act_novoExecute(Sender: TObject);
begin
                 Frm_CadClientes:=TFrm_CadClientes.Create(self);
                 dm.Query_Clientes.Close;
                 dm.Query_Clientes.Close;
                 Frm_CadClientes.acao:=1;
                 Frm_CadClientes.FDQuery2.Close;
                 Frm_CadClientes.FDQuery2.open;
                 Frm_CadClientes.label14.Caption:=IntToStr(Frm_CadClientes.fdquery2.FieldByName('gen_id').AsInteger);

                 Frm_CadClientes.ShowModal;
                 dm.Query_Clientes.open;
                 dm.Query_Clientes.Last;
end;

procedure TFrm_Clientes.Act_OcorrenciasExecute(Sender: TObject);
begin
Frm_Cli_Atend:=TFrm_Cli_Atend.Create(self);
Frm_Cli_Atend.ShowModal;
Frm_Cli_Atend.Free;
end;

procedure TFrm_Clientes.Act_OkExecute(Sender: TObject);
begin
{    if Frm_LancAtendimento<>nil then
       begin
          dm.query_clientebusca.close;
          dm.query_clientebusca.params[0].AsString:=dm.Query_ClientesNOME.AsString;
          dm.Query_ClienteBusca.Open();
       end;     }
    close;

end;

procedure TFrm_Clientes.Act_VisualizarExecute(Sender: TObject);
BEGIN



                 Frm_CadClientes:=TFrm_CadClientes.Create(self);
                 Frm_CadClientes.acao:=2;
                 DM.Conexao.Commit;
                 DM.Query_Clientes.Refresh;

                // dm.Tab_Obs.Open();
                 Frm_CadClientes.ShowModal;
                 DM.Query_Clientes.Refresh;
end;

procedure TFrm_Clientes.Edit1Change(Sender: TObject);
begin

       if length(edit1.Text)<>0 then
         begin
          dm.Query_Clientes.Close;
          dm.Query_Clientes.SQL.Text:='select first 50 * from controle_clientes ' +
                                      'where id_cliente <> 1 '+RzComboBox1.Value;
          if RzComboBox1.ItemIndex = 3 then
             dm.Query_Clientes.params[0].asinteger :=StrToInt(edit1.Text)
             else
             dm.Query_Clientes.params[0].asstring  :='%'+Edit1.Text+'%';

           dm.Query_Clientes.open;
         end
         else
         begin
          dm.Query_Clientes.Close;
          dm.Query_Clientes.SQL.Text:='select first 50 * from controle_clientes ' +
                                      ' order by NOME, id_cliente';
          dm.Query_Clientes.open;
         end;

end;

procedure TFrm_Clientes.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

      if RzComboBox1.ItemIndex = 2 then

       if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_Clientes.FormClose(Sender: TObject; var Action: TCloseAction);
VAR
INI : TINIFILE;
begin
INI:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\conf.ini');
   INI.WriteString('CLIENTES','BUSCA',IntToStr(RzComboBox1.ItemIndex));
   INI.Free;
end;


procedure TFrm_Clientes.FormShow(Sender: TObject);
var
query : tfdquery;
INI : TINIFILE;
begin
        query := TFDQuery.Create(self);
        query.Connection:=dm.Conexao;


           query.close;
           query.sql.text:='SELECT COUNT(*) FROM acessos where id_modulo =10000'+' and id_grupo ='+IntToStr(Frm_Principal.grupo);
           query.open;

           if query.FieldByName('count').AsInteger <>0 then
              Act_novo.Enabled:=true
              ELSE
              BEGIN
              Act_NOVO.Enabled:=FALSE;
              RzBitBtn3.Visible:=FALSE;
              END;


           query.close;
           query.sql.text:='SELECT COUNT(*) FROM acessos where id_modulo =10001'+' and id_grupo ='+IntToStr(Frm_Principal.grupo);
           query.open;

           if query.FieldByName('count').AsInteger <>0 then
              Act_Visualizar.Enabled:=true
              ELSE
              BEGIN
              Act_Visualizar.Enabled:=FALSE;
              RzBitBtn4.Visible:=FALSE;
              END;


           query.close;
           query.sql.text:='SELECT COUNT(*) FROM acessos where id_modulo =10005'+' and id_grupo ='+IntToStr(Frm_Principal.grupo);
           query.open;

           if query.FieldByName('count').AsInteger <>0 then
              BEGIN
              Act_Contrato.Enabled:=true;
              RzBitBtn2.Visible:=TRUE;
              END
              ELSE
              BEGIN
              Act_Contrato.Enabled:=FALSE;
              RzBitBtn2.Visible:=FALSE;
              END;

              query.Free;

Edit1Change(sender);
Edit1.SetFocus;

  INI:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\conf.ini');
  TRY
   RzComboBox1.ItemIndex:=StrToInt(INI.ReadString('CLIENTES','BUSCA',''))
   EXCEPT
   RzComboBox1.ItemIndex:=0;
  END;
    INI.Free;
end;

end.
