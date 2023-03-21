unit UFrm_Org_OrdCartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, RzButton, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_Org_OrdCartao = class(TForm)
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    StringGrid1: TStringGrid;
    FDQuery1: TFDQuery;
    FDQuery1ID: TIntegerField;
    FDQuery1ID_BLOCO: TIntegerField;
    FDQuery1ID_CLIENTE: TIntegerField;
    FDQuery1ID_USUARIO: TIntegerField;
    FDQuery1TITULO: TStringField;
    FDQuery1DATA_ABERTURA: TSQLTimeStampField;
    FDQuery1DESCRICAO: TMemoField;
    FDQuery1ETIQUETA: TStringField;
    FDQuery1PREVISAO: TDateField;
    FDQuery1POSICAO: TIntegerField;
    FDQuery1USUARIO: TStringField;
    FDQuery1CLIENTE: TStringField;
    FDQuery2: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    MemoField1: TMemoField;
    StringField2: TStringField;
    DateField1: TDateField;
    IntegerField5: TIntegerField;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
  private

    Const
InputBoxMsg = WM_USER + 123;
  public


  end;

       type
  TStringGridX = class(TStringGrid)
  public
    procedure MoveColumn(FromIndex, ToIndex: Longint);
    procedure MoveRow(FromIndex, ToIndex: Longint);
  end;


var
  Frm_Org_OrdCartao: TFrm_Org_OrdCartao;

implementation

{$R *.dfm}

uses UDM, UFrm_Org_Posicao;

procedure TFrm_Org_OrdCartao.FormShow(Sender: TObject);
var

  i: integer;

begin

   i:=1;
            StringGrid1.Cells[0,0]:='id';
            StringGrid1.Cells[1,0]:='Titulo';
            StringGrid1.Cells[2,0]:='Solicitacao';
            StringGrid1.Cells[3,0]:='Cliente';
           FDQuery1.first;

              while not FDQuery1.eof do
                  begin


                      StringGrid1.RowCount :=  i+1;
                      StringGrid1.Cells[0,i]:=IntToStr(FDQuery1ID.AsInteger);
                      StringGrid1.Cells[1,i] := FDQuery1TITULO.AsString;
                      StringGrid1.Cells[2,i] := FDQuery1USUARIO.AsString;
                      StringGrid1.Cells[3,i] := FDQuery1CLIENTE.AsString;
                  //    StringGrid1.Cells[2,j] := '(X) Excluir';


                      inc(i);
                      FDQuery1.next;
                  end;
end;

procedure TFrm_Org_OrdCartao.RzBitBtn1Click(Sender: TObject);

begin
if StringGrid1.Row>1 then


TStringGridX(StringGrid1).MoveRow(StringGrid1.Row, StringGrid1.Row-1);
end;

procedure TFrm_Org_OrdCartao.RzBitBtn2Click(Sender: TObject);
var
i : integer;
begin

       for I := 1 to StringGrid1.RowCOUNT-1 do
            begin
               fdquery2.Params[0].AsInteger:=i;
               fdquery2.Params[1].AsINTEGER:=StrToInt(StringGrid1.Cells[0, i]);
               fdquery2.ExecSQL;

            end;


               for I := 1 to StringGrid1.RowCount do
                   begin
                     StringGrid1.Cells[I,StringGrid1.Row]:='';
                     StringGrid1.Cells[I,StringGrid1.Row] :='';
                     StringGrid1.Cells[I,StringGrid1.Row] :='';
                     StringGrid1.Cells[I,StringGrid1.Row] :='';

                   end;
                 StringGrid1.RowCount:=  StringGrid1.Row;




               FDQuery1.Refresh;


                  i:=1;
            StringGrid1.Cells[0,0]:='ID';
            StringGrid1.Cells[1,0]:='TÍTULO';
            StringGrid1.Cells[2,0]:='SOLICITAÇÃO';
            StringGrid1.Cells[3,0]:='CLIENTE';
           FDQuery1.first;

              while not FDQuery1.eof do
                  begin


                      StringGrid1.RowCount :=  i+1;
                      StringGrid1.Cells[0,i]:=IntToStr(FDQuery1ID.AsInteger);
                      StringGrid1.Cells[1,i] := FDQuery1TITULO.AsString;
                      StringGrid1.Cells[2,i] := FDQuery1USUARIO.AsString;
                      StringGrid1.Cells[3,i] := FDQuery1CLIENTE.AsString;
                  //    StringGrid1.Cells[2,j] := '(X) Excluir';


                      inc(i);
                      FDQuery1.next;
                  end;
end;

procedure TFrm_Org_OrdCartao.RzBitBtn3Click(Sender: TObject);
begin
if ((StringGrid1.Row+1)=StringGrid1.RowCount) or (StringGrid1.Row=0) then
  else
 TStringGridX(StringGrid1).MoveRow(StringGrid1.Row, StringGrid1.Row+1);
end;

procedure TFrm_Org_OrdCartao.RzBitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Org_OrdCartao.RzBitBtn5Click(Sender: TObject);
begin
     frm_org_posicao:=tfrm_org_posicao.create(self);
     frm_org_posicao.SpinEdit1.MaxValue:=fdquery1.RecordCount;
     frm_org_posicao.ShowModal;
     frm_org_posicao.free;


end;

{ TStringGridX }

procedure TStringGridX.MoveColumn(FromIndex, ToIndex: Integer);
begin
 inherited;
end;

procedure TStringGridX.MoveRow(FromIndex, ToIndex: Integer);
begin
  inherited;
end;

end.
