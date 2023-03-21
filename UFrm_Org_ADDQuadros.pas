unit UFrm_Org_ADDQuadros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dxGDIPlusClasses,
  Vcl.ExtCtrls, RzButton, RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, RzCmboBx, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TFrm_Org_ADDQuadros = class(TForm)
    Panel9: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Panel10: TPanel;
    RzPanel2: TRzPanel;
    Image1: TImage;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzComboBox1: TRzComboBox;
    StringGrid1: TStringGrid;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    Panel8: TPanel;
    Label2: TLabel;
    Panel1: TPanel;
    Image2: TImage;
    Panel2: TPanel;
    Image3: TImage;
    Panel3: TPanel;
    Image4: TImage;
    Panel4: TPanel;
    Image5: TImage;
    Panel5: TPanel;
    Image6: TImage;
    Panel6: TPanel;
    Image7: TImage;
    Panel7: TPanel;
    Image8: TImage;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure usuarios;
    PROCEDURE BLOCOS;
    procedure RzBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function Procurar(pValor : String;pColuna : Integer = 0) : Integer;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
   var
    im : integer;
    id_gen : TFDQuery;
    bmp : TBitmap;
  end;

var
  Frm_Org_ADDQuadros: TFrm_Org_ADDQuadros;

implementation

{$R *.dfm}

uses UDM, UFrm_Principal, UFrm_Organizer;

function TFrm_Org_ADDQuadros.Procurar(pValor : String;pColuna : Integer = 0) : Integer;
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

procedure TFrm_Org_ADDQuadros.BLOCOS;
VAR
BLOCO : TFDQuery;
begin
           BLOCO:=TFDQuery.Create(nil);
           BLOCO.Connection:=dm.Conexao;


             BLOCO.sql.Text:= 'insert into controle_quadro_bloco(id_quadro,id,descricao)' +
                             '    values(:A,(select gen_id(CONTROLE_QUADRO_BLOCO_ID,1)from rdb$database),:B)';

           BLOCO.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
           BLOCO.Params[1].AsString:='SUGESTÕES';
           BLOCO.ExecSQL;

           BLOCO.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
           BLOCO.Params[1].AsString:='A FAZER';
           BLOCO.ExecSQL;

           BLOCO.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
           BLOCO.Params[1].AsString:='EM PRODUÇÃO';
           BLOCO.ExecSQL;

           BLOCO.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
           BLOCO.Params[1].AsString:='EM TESTE';
           BLOCO.ExecSQL;

           BLOCO.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
           BLOCO.Params[1].AsString:='EM IMPLANTAÇÃO';
           BLOCO.ExecSQL;

           BLOCO.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
           BLOCO.Params[1].AsString:='CONCLUIDO';
           BLOCO.ExecSQL;

           BLOCO.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
           BLOCO.Params[1].AsString:='RECUSADO';
           BLOCO.ExecSQL;

           BLOCO.Free;
end;

procedure TFrm_Org_ADDQuadros.FormShow(Sender: TObject);
var
query_carrega : tfdquery;
begin



           query_carrega:=TFDQuery.Create(self);
           query_carrega.Connection:=dm.Conexao;
           query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                   'where funcionarios.status=1 and funcionarios.id_funcionario <>:u ORDER BY funcionarios.nome';
            query_carrega.Params[0].AsInteger:=Frm_Principal.id_usu;
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

procedure TFrm_Org_ADDQuadros.Panel1Click(Sender: TObject);
begin

      im := 2;
      panel1.Color:=clRed;

      panel2.Color:=$00DFDFDF;
      panel3.Color:=$00DFDFDF;
      panel4.Color:=$00DFDFDF;
      panel5.Color:=$00DFDFDF;
      panel6.Color:=$00DFDFDF;
      panel7.Color:=$00DFDFDF;
end;

procedure TFrm_Org_ADDQuadros.Panel2Click(Sender: TObject);
begin
      im := 3;
      panel2.Color:=clRed;

      panel1.Color:=$00DFDFDF;
      panel3.Color:=$00DFDFDF;
      panel4.Color:=$00DFDFDF;
      panel5.Color:=$00DFDFDF;
      panel6.Color:=$00DFDFDF;
      panel7.Color:=$00DFDFDF;
end;

procedure TFrm_Org_ADDQuadros.Panel3Click(Sender: TObject);
begin
      im := 4;
      panel3.Color:=clRed;

      panel2.Color:=$00DFDFDF;
      panel1.Color:=$00DFDFDF;
      panel4.Color:=$00DFDFDF;
      panel5.Color:=$00DFDFDF;
      panel6.Color:=$00DFDFDF;
      panel7.Color:=$00DFDFDF;
end;

procedure TFrm_Org_ADDQuadros.Panel4Click(Sender: TObject);
begin
      im := 5;
      panel4.Color:=clRed;

      panel2.Color:=$00DFDFDF;
      panel1.Color:=$00DFDFDF;
      panel3.Color:=$00DFDFDF;
      panel5.Color:=$00DFDFDF;
      panel6.Color:=$00DFDFDF;
      panel7.Color:=$00DFDFDF;
end;

procedure TFrm_Org_ADDQuadros.Panel5Click(Sender: TObject);
begin
       im := 6;
      panel5.Color:=clRed;

      panel2.Color:=$00DFDFDF;
      panel1.Color:=$00DFDFDF;
      panel4.Color:=$00DFDFDF;
      panel3.Color:=$00DFDFDF;
      panel6.Color:=$00DFDFDF;
      panel7.Color:=$00DFDFDF;
end;

procedure TFrm_Org_ADDQuadros.Panel6Click(Sender: TObject);
begin
        im := 7;
      panel6.Color:=clRed;

      panel2.Color:=$00DFDFDF;
      panel1.Color:=$00DFDFDF;
      panel4.Color:=$00DFDFDF;
      panel5.Color:=$00DFDFDF;
      panel3.Color:=$00DFDFDF;
      panel7.Color:=$00DFDFDF;
end;

procedure TFrm_Org_ADDQuadros.Panel7Click(Sender: TObject);
begin
        im := 8;
      panel7.Color:=clRed;

      panel2.Color:=$00DFDFDF;
      panel1.Color:=$00DFDFDF;
      panel4.Color:=$00DFDFDF;
      panel5.Color:=$00DFDFDF;
      panel3.Color:=$00DFDFDF;
      panel6.Color:=$00DFDFDF;
end;

procedure TFrm_Org_ADDQuadros.RzBitBtn1Click(Sender: TObject);
var
salvar : TFDQuery;
begin





      if length(Edit1.Text) = 0 then
         begin
          ShowMessage('Título do Quadro não pode Ser Nulo!');
          Edit1.SetFocus;
         end
         else
         begin


           salvar:=TFDQuery.Create(nil);
           salvar.Connection:=dm.Conexao;

           id_gen:=TFDQuery.Create(nil);
           id_gen.Connection:=dm.Conexao;
           id_gen.SQL.Text:='select gen_id(CONTROLE_QUADROS_ID,1)from rdb$database';
           id_gen.Open();



           salvar.sql.Text:= 'insert into CONTROLE_QUADROS (id_quadro,descricao,imagem,id_usuario) '+
                                          'values(:A,:B,:C,:d)';
           salvar.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
           salvar.Params[1].AsString:=Edit1.Text;
           salvar.Params[2].AsInteger:=im;
           salvar.Params[3].AsInteger:=Frm_Principal.id_usu;

           salvar.ExecSQL;



        //   ShowMessage(IntToStr(StringGrid1.RowCount));



            if StringGrid1.RowCount<>0 then

               usuarios;

           BLOCOS;





           DM.Conexao.Commit;
           close;
         end;



end;

procedure TFrm_Org_ADDQuadros.RzBitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Org_ADDQuadros.RzBitBtn3Click(Sender: TObject);
 var
 j : integer;
 query_carrega : tfdquery;
 b:TspeedButton;
 r:Trect;
Begin



        if RzComboBox1.text = 'SUPORTE(TODOS)' then
           begin



               for j := 0 to StringGrid1.RowCount -1 do
                   begin
                     StringGrid1.Cells[j,StringGrid1.RowCount-1]:='';
                     StringGrid1.Cells[j,StringGrid1.RowCount-1] :='';
                   //  StringGrid1.Cells[2,j] := '';

                   end;


                  j := 0;
                   query_carrega:=TFDQuery.Create(self);
                     query_carrega.Connection:=dm.Conexao;
                     query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                             'where funcionarios.status=1 and id_funcionario <>:f ORDER BY funcionarios.nome';
                     query_carrega.Params[0].AsInteger:=Frm_Principal.id_usu;
                     query_carrega.open;

                     query_carrega.first;

              while not query_carrega.eof do
                  begin
                    if query_carrega.FieldByName('id_funcionario').AsInteger<>4 then
                     begin
                      if (StringGrid1.Cells[1,StringGrid1.RowCount-1] <> '') then
                      StringGrid1.RowCount := StringGrid1.RowCount + 1;
                      StringGrid1.Cells[0,j]:=IntToStr(query_carrega.FieldByName('id_funcionario').AsInteger);
                      StringGrid1.Cells[1,j] := query_carrega.FieldByName('nome').AsString;
                  //    StringGrid1.Cells[2,j] := '(X) Excluir';

                     end;
                     inc(j);
                      query_carrega.next;
                  end;



           end
          else
        begin

              j := Procurar(RzComboBox1.Value) ;

             if (j = -1) then
                begin
                   if (StringGrid1.Cells[1,StringGrid1.RowCount-1] <> '') then
                   StringGrid1.RowCount := StringGrid1.RowCount + 1;
                   StringGrid1.Cells[0,StringGrid1.RowCount-1] :=RzComboBox1.Value;
                   StringGrid1.Cells[1,StringGrid1.RowCount-1] :=RzComboBox1.text;
                 //  StringGrid1.Cells[2,StringGrid1.RowCount-1] := '(X) Excluir';




                end
                else
                ShowMessage('Usuario Ja Cadastrado');
        end;





end;

procedure TFrm_Org_ADDQuadros.RzBitBtn4Click(Sender: TObject);
var
j : integer;
begin

               for j := 0 to StringGrid1.RowCount do
                   begin
                     StringGrid1.Cells[j,StringGrid1.Row]:='';
                     StringGrid1.Cells[j,StringGrid1.Row] :='';

                   end;
                 StringGrid1.RowCount:=  StringGrid1.Row;
end;

procedure TFrm_Org_ADDQuadros.usuarios;
var
i:integer;
salvar,b_usu : TFDQuery;
begin




        salvar:=TFDQuery.Create(nil);
        salvar.Connection:=dm.Conexao;
        salvar.sql.Text:= 'insert into controle_quadro_usuario (id_quadro,id_usuario,nome) '+
                                  'values(:A,:B,:C)';






           b_usu:=TFDQuery.Create(self);
           b_usu.Connection:=dm.Conexao;
           b_usu.SQL.Text:='select funcionarios.nome from funcionarios ' +
                                   'where funcionarios.id_funcionario =:u ';
            b_usu.Params[0].AsInteger:=Frm_Principal.id_usu;
           b_usu.open;



               salvar.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
               salvar.Params[1].AsINTEGER:=Frm_Principal.id_usu;
               salvar.Params[2].AsString:=b_usu.FieldByName('nome').AsString;

               salvar.ExecSQL;



    try
       for I := 0 to StringGrid1.RowCOUNT-1 do
            begin
               salvar.Params[0].AsInteger:=id_gen.FieldByName('gen_id').AsInteger;
               salvar.Params[1].AsINTEGER:=StrToInt(StringGrid1.Cells[0, i]);
               salvar.Params[2].AsString:=StringGrid1.Cells[1, i];
               salvar.ExecSQL;

            end;

     except

     end;


      b_usu.Free;
    SALVAR.FREE;

end;

end.
