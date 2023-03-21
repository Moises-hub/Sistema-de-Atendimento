unit UFrm_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  RzButton, Vcl.StdCtrls, RzPanel, System.Actions, Vcl.ActnList, RzCmboBx,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DosMove, System.ImageList, Vcl.ImgList;

type
  TFrm_Login = class(TForm)
    Image1: TImage;
    RzPanel1: TRzPanel;
    ActionList1: TActionList;
    Action1: TAction;
    DosMove1: TDosMove;
    Label1: TLabel;
    RzComboBox1: TRzComboBox;
    Label2: TLabel;
    Edit2: TEdit;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    ImageList1: TImageList;
    procedure RzBitBtn4Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure confere_senha;
  private
    { Private declarations }
  public
    var
      query_login : TFDQuery;
      senha : string;
      F: TextFile;
      linha: string;
  end;

var
  Frm_Login: TFrm_Login;

implementation

{$R *.dfm}

uses UDM, UFrm_Principal;
function Crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
       KeyPos : Integer;
       OffSet : Integer;
       Dest, Key : String;
       SrcPos : Integer;
       SrcAsc : Integer;
       TmpSrcAsc : Integer;
       Range : Integer;
begin
       if (Src = '') Then
       begin
               Result:= '';
               Goto Fim;
       end;
       Key := 'RARBOCODNENFAGAHLILJDKOLMSNSOCPCQHRHSMWMXIYIZTTZHK';
       Dest := '';
       KeyLen := Length(Key);
       KeyPos := 0;
       SrcPos := 0;
       SrcAsc := 0;
       Range := 256;
       if (Action = UpperCase('C')) then
       begin
               Randomize;
               OffSet := Random(Range);
               Dest := Format('%1.2x',[OffSet]);
               for SrcPos := 1 to Length(Src) do
               begin
                       Application.ProcessMessages;
                       SrcAsc := (Ord(Src[srcPos]) + OffSet) Mod 255;
                       if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

                       SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       Dest := Dest + Format('%1.2x',[srcAsc]);
                       OffSet := SrcAsc;
               end;
       end
       Else if (Action = UpperCase('D')) then
       begin
               OffSet := StrToInt('$' + copy(Src,1,2));//<--------------- adiciona o $ entra as aspas simples
               SrcPos := 3;
               repeat
                       SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));//<--------------- adiciona o $ entra as aspas simples
                       if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
                       TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
                       else TmpSrcAsc := TmpSrcAsc - OffSet;
                       Dest := Dest + Chr(TmpSrcAsc);
                       OffSet := SrcAsc;
                       SrcPos := SrcPos + 2;
               until (SrcPos >= Length(Src));
       end;
       Result:= Dest;
Fim:
end;




procedure TFrm_Login.Action1Execute(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrm_Login.confere_senha;
begin
  query_login:=TFDQuery.Create(self);
  query_login.Connection:=dm.Conexao;
  query_login.SQL.Text:='select  FUNCIONARIOS.id_grupo, FUNCIONARIOS.nome, FUNCIONARIOS.senha, GRUPOS_ACESSOS.descricao from  FUNCIONARIOS left join GRUPOS_ACESSOS ON(GRUPOS_ACESSOS.ID_GRUPO = FUNCIONARIOS.ID_GRUPO) '+
                        ' where FUNCIONARIOS.status = 1 and FUNCIONARIOS.id_funcionario =:f';

end;

procedure TFrm_Login.FormShow(Sender: TObject);
var
query_carrega : tfdquery;
begin
           query_carrega:=TFDQuery.Create(self);
           query_carrega.Connection:=dm.Conexao;
           query_carrega.SQL.Text:='select funcionarios.id_funcionario,funcionarios.nome from funcionarios ' +
                                   'where funcionarios.status=1 ORDER BY funcionarios.nome';
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


          confere_senha;



                                                             if FileExists(ExtractFilePath(Application.ExeName)+'\login.DLL') then
                                                                 begin
                                                                    AssignFile(f,ExtractFilePath(Application.ExeName)+'\login.DLL');

                                                                    Reset(f); //abre o arquivo para leitura;

                                                                    while not eof(f) do

                                                                    begin

                                                                      Readln(f,linha); //le do arquivo e desce uma linha. O conteúdo lido é transferido para a variável linha

                                                                     RzComboBox1.ItemIndex:=StrToInt(linha);

                                                                    end;

                                                                    Closefile(f);

                                                                end
                                                                else
                                                                RzComboBox1.ItemIndex:=1;


end;

procedure TFrm_Login.RzBitBtn3Click(Sender: TObject);
var
F: TextFile;
begin

    if RzComboBox1.ItemIndex>-1 then
       BEGIN


           if Length(Edit2.Text)<>0 then
              begin
                  query_login.close;
                  query_login.Params[0].AsInteger:=StrToInt(RzComboBox1.Value);
                  query_login.Open();

                 if (Edit2.Text=crypt('D',query_login.FieldByName('senha').AsString)) then
                    begin
                           Frm_Principal.grupo:=query_login.FieldByName('id_grupo').AsInteger;
                           Frm_Principal.RzStatusPane6.Caption:='Usuário: '+RzComboBox1.Text;
                           Frm_Principal.RzStatusPane7.Caption:='Grupo de Acesso: '+query_login.FieldByName('DESCRICAO').AsString;
                           AssignFile(f,ExtractFilePath(Application.ExeName)+'\login.DLL');

                      Rewrite(f); //abre o arquivo para escrita
                   //   Writeln(f,); //escreve no arquivo e desce uma linha

                      Write(f,IntToStr(RzComboBox1.ItemIndex)); //escreve no arquivo sem descer a linha

                      Closefile(f); //fecha o handle de arquivo

                      close;
                           Frm_Principal.permissao;
                           Frm_Principal.id_usu:=StrToInt(RzComboBox1.Value);
                           Frm_Principal.Show;
                           close;
                    end
                    else
                        ShowMessage('senha inválida');



              end
                else
                begin
                  MessageDlg('O Campo Senha não pode Ser nulo!',mtWarning,[mbOK],0);
                  Edit2.SetFocus;
                end;

       end
        else
        begin
          MessageDlg('O Login não pode Ser nulo!',mtWarning,[mbOK],0);
          RzComboBox1.SetFocus;
        end;











end;

procedure TFrm_Login.RzBitBtn4Click(Sender: TObject);
begin
Application.Terminate;
end;

end.



