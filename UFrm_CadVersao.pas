unit UFrm_CadVersao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  RzCmboBx, Vcl.Mask, RzEdit, Data.DB, Vcl.Grids, Vcl.DBGrids, RzButton,
  Vcl.DBCtrls, RzDBCmbo, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList;

type
  TFrm_CadVersao = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    Panel4: TPanel;
    RzBitBtn1: TRzBitBtn;
    DBGrid1: TDBGrid;
    Query_Versao: TFDQuery;
    DS_Query_Versao: TDataSource;
    ActionList1: TActionList;
    Act_Sair: TAction;
    Query_VersaoDATA_CADASTRO: TDateField;
    Query_VersaoSOFTWARE: TStringField;
    Query_VersaoVERSAO: TStringField;
    RzBitBtn2: TRzBitBtn;
    Act_novo: TAction;
    Act_Alterar: TAction;
    RzBitBtn3: TRzBitBtn;
    ImageList1: TImageList;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure Act_novoExecute(Sender: TObject);
  private
    { Private declarations }
  public
   var
   cadastro,id : integer;
  end;

var
  Frm_CadVersao: TFrm_CadVersao;

implementation

{$R *.dfm}

uses UDM, UFrm_Versao;

procedure TFrm_CadVersao.Act_novoExecute(Sender: TObject);
begin
   Frm_Versao:=TFrm_versao.Create(self);
   cadastro :=0;
   Frm_Versao.ShowModal;
   Frm_Versao.free;
end;

procedure TFrm_CadVersao.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_CadVersao.DBGrid1DblClick(Sender: TObject);
var
query_id:TFDQuery;
begin
if Query_Versao.RecordCount<>0 then
   begin
   Frm_Versao:=TFrm_versao.Create(self);
   Frm_Versao.RzComboBox1.ItemIndex:=Frm_Versao.RzComboBox1.IndexOf(Query_VersaoSOFTWARE.AsString);
   Frm_Versao.RzComboBox1.Enabled:=false;
   Frm_Versao.Edit1.Text:=Query_VersaoVERSAO.AsString;
   Frm_Versao.Edit1.SetFocus;
                   query_id:=TFDQuery.Create(self);
                   query_id.Connection:=DM.Conexao;
                   query_id.SQL.Text:='select id from controle_versao ' +
                                      'where SOFTWARE =:S and VERSAO =:v and DATA_CADASTRO =:d';
                   query_id.params[0].AsString:=Query_VersaoSOFTWARE.AsString;
                   query_id.Params[1].AsString:=Query_VersaoVERSAO.AsString;
                   query_id.Params[2].AsDate:=Query_VersaoDATA_CADASTRO.AsDateTime;
                   query_id.Open();
                   id:=query_id.FieldByName('id').AsInteger;
                   query_id.Free;
     cadastro :=1;
      Frm_Versao.ShowModal;
      Frm_Versao.free;
   end;

end;

procedure TFrm_CadVersao.FormShow(Sender: TObject);
begin
cadastro :=0;
Query_Versao.Open();
end;

end.
