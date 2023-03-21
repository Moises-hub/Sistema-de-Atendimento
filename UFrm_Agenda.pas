unit UFrm_Agenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, RzButton, System.Actions, Vcl.ActnList,
  Vcl.DBCtrls;

type
  TFrm_Agenda = class(TForm)
    RzPanel1: TRzPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBText1: TDBText;
    ActionList1: TActionList;
    Act_Continua: TAction;
    Act_Cancelar: TAction;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    DS_Query_Agenda: TDataSource;
    procedure Act_ContinuaExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    var
    s : integer;
  end;

var
  Frm_Agenda: TFrm_Agenda;

implementation

{$R *.dfm}

uses UFrm_Agendamento;

procedure TFrm_Agenda.Act_CancelarExecute(Sender: TObject);
begin
s:=0;
close;
end;

procedure TFrm_Agenda.Act_ContinuaExecute(Sender: TObject);
begin
s:=1;
close;
end;

end.
