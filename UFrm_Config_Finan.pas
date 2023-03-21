unit UFrm_Config_Finan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxdbtrel, Vcl.StdCtrls, RzCmboBx,
  RzDBCmbo, RzButton, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrm_Config_Finan = class(TForm)
    DS_QUERY_PLANO: TDataSource;
    Query_Plano_contas: TFDQuery;
    Query_Plano_contasID_PLANO: TIntegerField;
    Query_Plano_contasCLASSE: TStringField;
    Query_Plano_contasPAI: TIntegerField;
    Panel1: TPanel;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    dxDBLookupTreeView1: TdxDBLookupTreeView;
    dxDBLookupTreeView2: TdxDBLookupTreeView;
    dxDBLookupTreeView3: TdxDBLookupTreeView;
    dxDBLookupTreeView4: TdxDBLookupTreeView;
    procedure RzBitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Config_Finan: TFrm_Config_Finan;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Config_Finan.FormShow(Sender: TObject);
var
custo : tfdquery;
begin

    custo:=TFDQuery.Create(self);
    custo.Connection:=dm.Conexao;
    custo.SQL.Text:='select id_centro, descricao from centro_custos';
    custo.open;
    custo.First;
   while not custo.Eof do
     begin
       RzDBComboBox1.Items.Add(custo.FieldByName('descricao').AsString);
       RzDBComboBox1.Values.Add(custo.FieldByName('id_centro').AsString);
       custo.next;
     end;

     custo.free;




dm.Query_Config_Financeiro.Open();
 if dm.Query_Config_Financeiro.RecordCount=0 then
    dm.Query_Config_Financeiro.insert
    else
   dm.Query_Config_Financeiro.edit;


Query_Plano_contas.Open();
end;

procedure TFrm_Config_Finan.RzBitBtn4Click(Sender: TObject);
begin

CLOSE;
end;

procedure TFrm_Config_Finan.RzBitBtn5Click(Sender: TObject);

begin


dm.Query_Config_Financeiro.POST;
dm.Query_Config_Financeiro.ApplyUpdates();
close;
end;

end.
