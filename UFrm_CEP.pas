unit UFrm_CEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DosMove;

type
  TFrm_CEP = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Button1: TButton;
    DosMove1: TDosMove;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CEP: TFrm_CEP;

implementation

{$R *.dfm}

uses UDM, UFrm_CadClientes;

procedure TFrm_CEP.Button1Click(Sender: TObject);
begin

      Frm_CadClientes.Edit5.Text:=COPY(dm.FD_CEPCEP.AsString,1,5)+'-'+COPY(dm.FD_CEPCEP.AsString,6,3);
      Frm_CadClientes.Edit6.Text:= DM.FD_CEPLOG_NOME.Text;
      Frm_CadClientes.Edit8.Text:= DM.FD_CEPBAI_NO.Text;
      close;
end;

procedure TFrm_CEP.Edit1Change(Sender: TObject);
begin
DM.FD_CEP.Close;
DM.FD_CEP.Params[0].AsString:='%'+Edit1.Text+'%';
dm.FD_CEP.Open();
end;

end.
