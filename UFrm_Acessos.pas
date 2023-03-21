unit UFrm_Acessos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBckgnd,
  Vcl.ExtCtrls, RzPanel, RLReport, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Vcl.StdCtrls, Vcl.CheckLst, Vcl.DBCtrls, RzDBCmbo, Vcl.Buttons, RzLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  RzButton, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList;

type
  TFrm_Acessos = class(TForm)
    RzPanel1: TRzPanel;
    Image1: TImage;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    CheckListBox1: TCheckListBox;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    RzPanel4: TRzPanel;
    CheckBox1: TCheckBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    Query_modulos: TFDQuery;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    ActionList1: TActionList;
    ImageList1: TImageList;
    Act_Salvar: TAction;
    Act_Sair: TAction;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Acessos: TFrm_Acessos;

implementation

{$R *.dfm}

uses UDM,  UFrm_Grupos_de_Acessos;

procedure TFrm_Acessos.Act_SalvarExecute(Sender: TObject);
var
i : integer;
busca : TFDQuery;
begin
if Edit1.Text<>'' then
  begin

        busca:=TFDQuery.Create(self);
        busca.Connection:=dm.Conexao;
        for i := 0 to CheckListBox1.Items.Count - 1 do
            begin


              if CheckListBox1.Checked[i]=true then
                 begin
                    busca.Close;
                    busca.sql.Text:='SELECT COUNT(*) FROM acessos where id_modulo ='+Copy(CheckListBox1.Items.Strings[i],1,5)+' and id_grupo ='+Edit1.Text;
                    busca.Open;
                    if busca.FieldByName('count').AsInteger=0 then
                      begin

                            busca.Close;
                            busca.sql.Text:='INSERT INTO acessos (id_modulo, id_grupo) values('+Copy(CheckListBox1.Items.Strings[i],1,5)+', '+Edit1.Text+')';
                            busca.ExecSQL();
                      end;
                 end
                 else
                 if CheckListBox1.Checked[i]=false then
                 begin
                            busca.Close;
                            busca.sql.Text:='delete from acessos where id_modulo ='+Copy(CheckListBox1.Items.Strings[i],1,5)+' and id_grupo ='+Edit1.Text;
                            busca.ExecSQL();
                 end;




            end;
                              ShowMessage('Alterações Salva Com Sucesso!');
  end;


end;

procedure TFrm_Acessos.Act_SairExecute(Sender: TObject);
begin
     close;
end;

procedure TFrm_Acessos.Button1Click(Sender: TObject);
var
i : integer;
busca : TFDQuery;
begin
Frm_Grupos_de_Acessos:=TFrm_Grupos_de_Acessos.Create(self);
Frm_grupos_de_acessos.ShowModal;
if (Frm_grupos_de_acessos.query_grupo.active=true) and (Frm_grupos_de_acessos.query_grupo.RecordCount<>0)  then
   begin
                  edit1.Text:=Frm_grupos_de_acessos.query_grupoID_GRUPO.AsString;
                  edit2.Text:=Frm_grupos_de_acessos.query_grupoDESCRICAO.AsString;
                  Frm_grupos_de_acessos.Destroy;

                  busca:=TFDQuery.Create(self);
                  busca.Connection:=dm.Conexao;
                  Query_modulos.Close;
                  Query_modulos.sql.text:='SELECT * FROM MODULOS WHERE MODULOS.id_modulo >=10000 and id_modulo < 11000 order by id_modulo';
                  Query_modulos.Open;
                  i:=0;
                  Query_modulos.First;
                  CheckListBox1.Items.Clear;
                  while not Query_modulos.eof do
                    begin
                        CheckListBox1.Items.Add(Query_modulos.FieldByName('id_modulo').AsString+' - '+Query_modulos.FieldByName('descricao').AsString);
                        busca.Close;
                        busca.sql.text:='SELECT COUNT(*) FROM acessos where id_modulo ='+Query_modulos.FieldByName('id_modulo').AsString+' and id_grupo ='+Edit1.Text;
                        busca.Open;

                        if busca.FieldByName('count').AsInteger<>0  then
                            CheckListBox1.Checked[i]:=true;

                         i:=i+1;

                         Query_modulos.Next;

                    end;

                    busca.Destroy;
   end;



end;

procedure TFrm_Acessos.CheckBox1Click(Sender: TObject);
var
i : integer;
begin

for i := 0 to CheckListBox1.Items.Count - 1 do
    begin
      if CheckBox1.Checked = true then
         begin
         CheckListBox1.Checked[i]:=true;
         CheckBox1.Caption:='Desmarcar tudo';
         end
         else
         begin
         CheckListBox1.Checked[i]:=false;
         CheckBox1.Caption:='Selecionar Tudo';
         end;
    end;


end;

procedure TFrm_Acessos.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
