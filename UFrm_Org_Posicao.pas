unit UFrm_Org_Posicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin, RzButton;

type
  TFrm_Org_Posicao = class(TForm)
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Org_Posicao: TFrm_Org_Posicao;

implementation

{$R *.dfm}

uses UFrm_Org_OrdCartao;

procedure TFrm_Org_Posicao.RzBitBtn1Click(Sender: TObject);
begin
TStringGridX(Frm_Org_OrdCartao.StringGrid1).MoveRow(Frm_Org_OrdCartao.StringGrid1.Row, SpinEdit1.Value);
end;

end.
