unit UFrm_Contas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  RzButton, Vcl.ExtCtrls;

type
  TFrm_Contas = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    RzBitBtn5: TRzBitBtn;
    procedure RzBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Contas: TFrm_Contas;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Contas.RzBitBtn5Click(Sender: TObject);
begin
close;
end;

end.
