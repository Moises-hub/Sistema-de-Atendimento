unit UOrdenar_Cartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.DBCGrids, RzButton;

type
  TOrdenar_Cartao = class(TForm)
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    procedure RzBitBtn4Click(Sender: TObject);

  private








      type
  TStringGridX = class(TStringGrid)
  public

  end;
  public


  end;

var
  Ordenar_Cartao: TOrdenar_Cartao;

implementation

{$R *.dfm}

procedure TOrdenar_Cartao.RzBitBtn2Click(Sender: TObject);
begin

end;

procedure TOrdenar_Cartao.RzBitBtn4Click(Sender: TObject);
begin
close;
end;

end.
