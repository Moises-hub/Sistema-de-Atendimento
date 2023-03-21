unit UFrm_Contratos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  RzButton, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzCmboBx, Vcl.ExtCtrls, RzPanel,
  Vcl.DBCtrls, RzDBCmbo, System.ImageList, Vcl.ImgList, ekbasereport,
  ekrtf, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Contratos = class(TForm)
    RzGroupBox3: TRzGroupBox;
    RzPanel1: TRzPanel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzBitBtn1: TRzBitBtn;
    RzDateTimeEdit2: TRzDateTimeEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;

    ImageList1: TImageList;
    Panel2: TPanel;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    EkRTF1: TEkRTF;
    Query_Cli: TFDQuery;
    Query_CliID_CLIENTE: TIntegerField;
    Query_CliNOME: TStringField;
    DS_Query_Cli: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure lancamento;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Contratos: TFrm_Contratos;

implementation

{$R *.dfm}

uses UDM, UFrm_Contas, UClientes, UFrm_LancaContrato, UFrm_Principal;

procedure TFrm_Contratos.DBGrid1CellClick(Column: TColumn);
begin



          if dm.Query_Controle_contrato.RecordCount<>0 then
           begin

              dm.Query_Controle_ContratoItens.close;
              dm.Query_Controle_ContratoItens.Params[0].AsInteger:=dm.Query_Controle_contratoID_CONTRATO.AsInteger;
              dm.Query_Controle_ContratoItens.Open();



              if DBGrid1.SelectedField.FieldName = 'BUTTON' then
                 lancamento;
           end;
end;

procedure TFrm_Contratos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if datacol = 3 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList1.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 1);
   end;
end;

procedure TFrm_Contratos.DBGrid2CellClick(Column: TColumn);
begin
if DBGrid2.SelectedField.FieldName = 'BUTTON' then
   BEGIN
         Frm_Contas:=TFrm_Contas.Create(self);

        dm.Query_Contas.close;
        dm.Query_Contas.params[0].AsInteger := dm.Query_Controle_contratoID_CLIENTE.AsInteger;
        dm.Query_Contas.params[1].AsINTEGER := dm.Query_Controle_ContratoItensid_itens.asinteger;
        dm.Query_Contas.open;

         Frm_Contas.ShowModal;
         Frm_Contas.Free;

   END;
end;

procedure TFrm_Contratos.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if datacol = 5 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList1.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);
   end;

end;

procedure TFrm_Contratos.DBGrid2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if (DBGrid2.MouseCoord(X, Y).X in [5]) then
begin
     DBGrid2.ShowHint := False;
     DBGrid2.ShowHint := True;
     DBGrid2.Hint := 'Visualizar Parcela';
end
else

     DBGrid1.ShowHint := False;
end;

procedure TFrm_Contratos.FormShow(Sender: TObject);
begin
DBLookupComboBox1.KeyValue:=0;
RzDateTimeEdit1.Date:=date-30;
RzDateTimeEdit2.Date:=date;
dm.Query_Clientes.Open();
RzBitBtn1Click(sender);

end;

procedure TFrm_Contratos.lancamento;
begin
               dm.Query_Contrato.Close;
              dm.Query_Contrato.Params[0].AsInteger:=dm.Query_Controle_contratoID_CLIENTE.AsInteger;
              dm.Query_Contrato.Open();
              dm.Query_Contrato.Locate('ID_CONTRATO',dm.Query_Controle_contratoID_CONTRATO.asinteger,[]);
              dm.Query_Clientes.Locate('id_cliente',dm.Query_Controle_contratoID_CLIENTE.AsInteger,[]);

                              Frm_LancaContrato:=TFrm_LancaContrato.Create(self);
                              dm.Query_Contrato.edit;
                              Frm_LancaContrato.id_contrato:=dm.Query_Controle_contratoID_CONTRATO.asinteger;
                              Frm_LancaContrato.id_cliente:=dm.Query_Controle_contratoID_CLIENTE.AsInteger;
                              Frm_LancaContrato.Edit3.Text:=dm.Query_ContratoDATA_EMISSAO.AsString;
                              Frm_LancaContrato.edit2.Text:=dm.Query_Controle_contratoNOME.AsString;
                              Frm_LancaContrato.edit4.Text:=dm.Query_Controle_contratoPERC_MENS.ASSTRING;
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
                        Frm_LancaContrato.free;
                        dm.Query_Clientes.Refresh;
                        dm.Query_Contrato.refresh;
                        dm.Query_Controle_contrato.Refresh;
                         dm.Query_Controle_ContratoItens.Refresh;

end;

procedure TFrm_Contratos.RzBitBtn1Click(Sender: TObject);
var
client : string;
begin
      if DBLookupComboBox1.KeyValue <> 0 then
            CLIENT:=' AND controle_contrato.ID_CLIENTE = '+DBLookupComboBox1.KeyValue
            ELSE
            CLIENT:='';



         dm.Query_controle_Contrato.Close;
         dm.Query_controle_Contrato.SQL.Text:='select controle_contrato.id_contrato,' +
                                              '       controle_contrato.id_cliente, ' +
                                              '       clientes.nome, ' +
                                              '       controle_contrato.data_emissao, ' +
                                              '       controle_contrato.PERC_MENS, '+
                                              '       '''' as button '+
                                              '       from controle_contrato ' +
                                              '       left join clientes on (clientes.id_cliente = controle_contrato.id_cliente)' +
                                              ' where  ((controle_contrato.data_emissao >=:i) and (controle_contrato.data_emissao <=:f))'+client+' order by controle_contrato.data_emissao';

        dm.Query_controle_Contrato.params[0].AsDate:=RzDateTimeEdit1.Date;
        dm.Query_Controle_contrato.Params[1].AsDate:=RzDateTimeEdit2.Date;
        dm.Query_controle_Contrato.open;

        if dm.Query_controle_Contrato.RecordCount<>0 then
           begin
              dm.Query_Controle_ContratoItens.close;
              dm.Query_Controle_ContratoItens.Params[0].AsInteger:=dm.Query_Controle_contratoID_CONTRATO.AsInteger;
              dm.Query_Controle_ContratoItens.Open();
           end
           else
            dm.Query_ContratoItens.close;


end;

procedure TFrm_Contratos.RzBitBtn2Click(Sender: TObject);
begin
ShowMessage('selecione o cliente antes de gerar um novo cliente, na tela de cliente selecione gerar novo contrato!');
frm_clientes:=TFrm_Clientes.Create(self);
Frm_Clientes.showmodal;
Frm_Clientes.Free;
end;

procedure TFrm_Contratos.RzBitBtn3Click(Sender: TObject);
begin
dm.Imprimi_Contrato.Close;
dm.Imprimi_Contrato.Params[0].AsInteger:=dm.Query_Controle_contratoID_CONTRATO.AsInteger;
dm.Imprimi_Contrato.Open();
   EKRTF1.OutFile:='CONTRATO_'+dm.Imprimi_ContratoCLIENTE.AsString+'.doc';
   EKRTF1.InFile := 'CONTRATO.rtf';
   EKRTF1.ExecuteOpen([dm.Imprimi_Contrato],SW_SHOW);
end;

procedure TFrm_Contratos.RzBitBtn5Click(Sender: TObject);
begin
close;
end;

end.
