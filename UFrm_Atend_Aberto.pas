unit UFrm_Atend_Aberto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.CheckLst,
  Vcl.ExtCtrls, RzPanel, RzButton;

type
  TFrm_Atend_Aberto = class(TForm)
    Query_Aten_Final: TFDQuery;
    Query_Aten_Finaldata_hora: TSQLTimeStampField;
    Query_Aten_Finalresponsavel: TStringField;
    Query_Aten_Finaldescricao: TStringField;
    DS_Query_Aten_Final: TDataSource;
    Query_Aten_Finalid_atendimento: TIntegerField;
    RzPanel1: TRzPanel;
    CheckListBox1: TCheckListBox;
    CheckBox1: TCheckBox;
    Query_Atualiza: TFDQuery;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Label1: TLabel;
    procedure filtro;
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Atend_Aberto: TFrm_Atend_Aberto;

implementation

{$R *.dfm}

uses UDM;




procedure TFrm_Atend_Aberto.CheckBox1Click(Sender: TObject);
var
i : integer;
begin

for i := 0 to CheckListBox1.Items.Count - 1 do
    begin
      if CheckBox1.Checked = True then
         CheckListBox1.Checked[i]:=true
         else
         CheckListBox1.Checked[i]:=false;
    end;
end;

procedure TFrm_Atend_Aberto.filtro;
begin
  Query_Aten_Final.Close;
  Query_Aten_Final.Params[0].AsInteger:=dm.Query_ClientesID_CLIENTE.AsInteger;
   Query_Aten_Final.Open();

   if Query_Aten_Final.RecordCount<>0 then
      begin
                      CheckListBox1.Items.Clear;
                  while not Query_Aten_Final.eof do
                    begin
                        CheckListBox1.Items.Add(IntToStr(Query_Aten_Finalid_atendimento.AsInteger)+'-'+DateTimeToStr(Query_Aten_Finaldata_hora.AsDateTime)+' / '+Query_Aten_Finalresponsavel.AsString+' / '+Query_Aten_Finaldescricao.AsString);
                        Query_Aten_Final.Next;
                    end;
      end;

end;

procedure TFrm_Atend_Aberto.FormShow(Sender: TObject);
begin
filtro;
end;

procedure TFrm_Atend_Aberto.RzBitBtn1Click(Sender: TObject);
var
i : integer;
begin
        for i := 0 to CheckListBox1.Items.Count - 1 do
            begin
             if CheckListBox1.Checked[i]=true then
                 begin
                    Query_Atualiza.Close;
                    Query_Atualiza.Params[0].AsInteger:=StrToInt(copy(CheckListBox1.Items.Strings[i],1,pos('-',CheckListBox1.Items.Strings[i])-1));
                    Query_Atualiza.ExecSQL;
                 end;
            end;

             ShowMessage('Alterações Salva Com Sucesso!');
             CLOSE;
end;

procedure TFrm_Atend_Aberto.RzBitBtn2Click(Sender: TObject);
begin
close;
end;

end.
