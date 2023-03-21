unit UFrm_Grupos_de_Acessos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, RzPanel, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_Grupos_de_Acessos = class(TForm)
    DS_CD_Grupos: TDataSource;
    RzPanel1: TRzPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Query_Grupo: TFDQuery;
    Query_GrupoID_GRUPO: TIntegerField;
    Query_GrupoDESCRICAO: TStringField;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Grupos_de_Acessos: TFrm_Grupos_de_Acessos;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_Grupos_de_Acessos.DBGrid1DblClick(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_Grupos_de_Acessos.Edit1Change(Sender: TObject);
begin
query_grupo.Close;
query_grupo.sql.Text:='select * from GRUPOS_ACESSOS where DESCRICAO like :r';
query_grupo.Params[0].AsString:='%'+Edit1.Text+'%';
query_grupo.Open;
end;

end.
