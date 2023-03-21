unit UFrm_Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, RzCmboBx,
  Vcl.ExtCtrls, Vcl.Grids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Usuarios = class(TForm)
    Panel9: TPanel;
    Label3: TLabel;
    RzComboBox1: TRzComboBox;
    RzBitBtn3: TRzBitBtn;
    StringGrid1: TStringGrid;
    Panel10: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    function Procurar(pValor : String;pColuna : Integer = 0) : Integer;
  public
    { Public declarations }
  end;

var
  Frm_Usuarios: TFrm_Usuarios;

implementation

{$R *.dfm}

uses UDM, UFrm_Organizer;

procedure TFrm_Usuarios.FormShow(Sender: TObject);
var
query_carrega : tfdquery;
begin


           query_carrega:=TFDQuery.Create(self);
           query_carrega.Connection:=dm.Conexao;
           query_carrega.SQL.Text:='select distinct(funcionarios.id_funcionario),funcionarios.nome from funcionarios' +
                                   '       where not exists(select CONTROLE_QUADRO_USUARIO.id_usuario from CONTROLE_QUADRO_USUARIO ' +
                                   '       where CONTROLE_QUADRO_USUARIO.id_usuario = funcionarios.id_funcionario and  CONTROLE_QUADRO_USUARIO.id_quadro =:q ) and funcionarios.id_funcionario <> 4 ' +
                                   '       and  funcionarios.status=1 order by funcionarios.nome ';
            query_carrega.Params[0].AsInteger:=Frm_Organizer.Query_QuadroID_QUADRO.AsInteger;
           query_carrega.open;

           query_carrega.first;
           RzComboBox1.Values.Clear;
           RzComboBox1.Items.Clear;


           while not query_carrega.eof do
           begin
              RzComboBox1.Values.add(IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger));
              RzComboBox1.Items.add(query_carrega.FieldByName('nome').Asstring);

              query_carrega.next;
           end;
           RzComboBox1.ItemIndex:=0;
           query_carrega.Free;
end;

function TFrm_Usuarios.Procurar(pValor : String;pColuna : Integer = 0) : Integer;
var
  I : Integer;
begin
  Result := -1;
  for I := 0 to StringGrid1.RowCount - 1 do begin
    if (StringGrid1.Cells[pColuna,I] = pValor) then begin
      Result := I;
      Break;
    end;
  end;
end;

procedure TFrm_Usuarios.RzBitBtn1Click(Sender: TObject);
var
i:integer;
salvar,b_usu : TFDQuery;
begin




        salvar:=TFDQuery.Create(nil);
        salvar.Connection:=dm.Conexao;
        salvar.sql.Text:= 'insert into controle_quadro_usuario (id_quadro,id_usuario,nome) '+
                                  'values(:A,:B,:C)';







    try
       for I := 0 to StringGrid1.RowCOUNT-1 do
            begin
               salvar.Params[0].AsInteger:=Frm_Organizer.Query_QuadroID_QUADRO.AsInteger;
               salvar.Params[1].AsINTEGER:=StrToInt(StringGrid1.Cells[0, i]);
               salvar.Params[2].AsString:=StringGrid1.Cells[1, i];
               salvar.ExecSQL;

            end;

     except

     end;


      b_usu.Free;
    SALVAR.FREE;

end;



procedure TFrm_Usuarios.RzBitBtn3Click(Sender: TObject);
 var
 j : integer;

begin
               j := Procurar(RzComboBox1.Value) ;

             if (j = -1) then
                begin
                   if (StringGrid1.Cells[1,StringGrid1.RowCount-1] <> '') then
                   StringGrid1.RowCount := StringGrid1.RowCount + 1;
                   StringGrid1.Cells[0,StringGrid1.RowCount-1] :=RzComboBox1.Value;
                   StringGrid1.Cells[1,StringGrid1.RowCount-1] :=RzComboBox1.text;
                 //  StringGrid1.Cells[2,StringGrid1.RowCount-1] := '(X) Excluir';
                end;
end;

end.
