unit UFrm_Aviso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, RzLabel, RzPanel,
  RzDBLbl;

type
  TFrm_Aviso = class(TForm)
    Timer1: TTimer;
    RzPanel2: TRzPanel;
    Label1: TLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    Query_Alerta: TFDQuery;
    Query_AlertaCLIENTE: TStringField;
    Query_AlertaPROTOCOLO: TStringField;
    Query_AlertaSTATUS: TStringField;
    DataSource1: TDataSource;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Aviso: TFrm_Aviso;

implementation

{$R *.dfm}

uses UDM, UFrm_Principal;

procedure TFrm_Aviso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Query_Alerta.Close;
FRM_AVISO:=NIL;
end;

procedure TFrm_Aviso.FormCreate(Sender: TObject);
begin
Parent:=Frm_Principal;
end;

procedure TFrm_Aviso.FormShow(Sender: TObject);
begin
Query_Alerta.Open();




end;

procedure TFrm_Aviso.Label1Click(Sender: TObject);
begin
CLOSE;
end;

end.

