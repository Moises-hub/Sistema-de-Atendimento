unit UFrm_Obs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DosMove, Vcl.DBCtrls, System.Actions, Vcl.ActnList;

type
  TFrm_Observacao = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    Button1: TButton;
    DBMemo1: TDBMemo;
    ActionList1: TActionList;
    Action1: TAction;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Observacao: TFrm_Observacao;

implementation

{$R *.dfm}

uses UDM, UFrm_CadClientes;

procedure TFrm_Observacao.Button1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_Observacao.FormShow(Sender: TObject);
begin
    DBMemo1.SetFocus;
end;

end.
