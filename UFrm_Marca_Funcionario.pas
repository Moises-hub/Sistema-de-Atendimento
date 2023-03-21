unit UFrm_Marca_Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.CheckLst, RzButton,
  Vcl.ExtCtrls, RzPanel, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_Marca_Funcionario = class(TForm)
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    FDQuery1ID_USUARIO: TIntegerField;
    FDQuery1NOME: TStringField;
    DataSource1: TDataSource;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Marca_Funcionario: TFrm_Marca_Funcionario;

implementation

{$R *.dfm}

uses UDM, UFrm_Org_ADDNota, UFrm_Org_Notas;

procedure TFrm_Marca_Funcionario.DBGrid1DblClick(Sender: TObject);
var
 iPosIni : integer;
begin
                   Frm_Org_ADDNota.cxRichEdit1.Lines.Add((FDQuery1NOME.asstring));
                   iPosIni := Frm_Org_ADDNota.cxRichEdit1.FindText((FDQuery1NOME.asstring), 0, length(Frm_Org_ADDNota.cxRichEdit1.Text), []);

                   if iPosIni >= 0 then
                          begin
                          Frm_Org_ADDNota.cxRichEdit1.SelStart  := iPosIni;
                          Frm_Org_ADDNota.cxRichEdit1.SelLength := length((FDQuery1NOME.asstring)+'  ');
                          Frm_Org_ADDNota.cxRichEdit1.SelAttributes.color := clblue;
                          Frm_Org_ADDNota.cxRichEdit1.SelAttributes.style := [fsBold];
                          end;

                      Frm_Org_ADDNota.cxRichEdit1.SelStart  :=iPosIni+20;
                      Frm_Org_ADDNota.cxRichEdit1.SelAttributes.color := clblack;
                      Frm_Org_ADDNota.cxRichEdit1.SelAttributes.style := [];

                      Frm_Org_Notas.Tab_Notificao.Insert;
                  //    ;
                      Frm_Org_Notas.Tab_NotificaoID_NOTA.AsInteger:=Frm_Org_Notas.Tab_Org_NotaID.AsInteger;
                      Frm_Org_Notas.Tab_NotificaoID_CARTAO.AsInteger:=Frm_Org_Notas.Tab_Org_NotaID_CARTAO.AsInteger;
                      Frm_Org_Notas.Tab_NotificaoID_USUARIO.AsInteger:=FDQuery1ID_USUARIO.AsInteger;
                      Frm_Org_Notas.Tab_NotificaoSTATUS.AsInteger:=0;
                      Frm_Org_Notas.Tab_NotificaoDESCRICAO.AsString:=Frm_Org_Notas.Tab_Org_NotaUSUARIO.AsString+'  Marcou você em uma Nota';
                      Frm_Org_Notas.Tab_Notificao.post;

            close;
end;

procedure TFrm_Marca_Funcionario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=VK_ESCAPE then
      close;
end;

end.
