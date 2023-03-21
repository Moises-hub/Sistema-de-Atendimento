unit UFrm_Regiao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  RzPanel, Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ActnList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzLabel, DosMove;

type
  TFrm_Regiao = class(TForm)
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Act_novo: TAction;
    Act_Alterar: TAction;
    Act_Sair: TAction;
    RzPanel3: TRzPanel;
    Button4: TButton;
    RzPanel2: TRzPanel;
    Edit1: TEdit;
    Query_Regiao: TFDQuery;
    Query_RegiaoID_REGIAO: TIntegerField;
    Query_RegiaoCIDADE: TStringField;
    Query_RegiaoUF: TStringField;
    DataSource1: TDataSource;
    DosMove1: TDosMove;
    RzLabel1: TRzLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Regiao: TFrm_Regiao;

implementation

{$R *.dfm}

uses UDM;



procedure TFrm_Regiao.Act_SairExecute(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_Regiao.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Regiao.Edit1Change(Sender: TObject);
begin
      if Length(Edit1.Text)<>0 then
         BEGIN
         query_regiao.Close;
           query_regiao.PARAMS[0].AsString:='%'+Edit1.Text+'%';
         query_regiao.OPEN;
         END;

end;

procedure TFrm_Regiao.FormShow(Sender: TObject);
begin
         query_regiao.Close;
         query_regiao.PARAMS[0].AsString:='%';
         query_regiao.OPEN;
end;

end.
