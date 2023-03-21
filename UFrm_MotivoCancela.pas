unit UFrm_MotivoCancela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DosMove;

type
  TFrm_MotivoCancela = class(TForm)
    RzPanel1: TRzPanel;
    Memo1: TMemo;
    RzPanel2: TRzPanel;
    Button1: TButton;
    FDQuery1: TFDQuery;
    DosMove1: TDosMove;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  VAR
   TIPO_OCO : INTEGER; // 1=ATENDIMENTO 2=AGENDAMENTO
  end;

var
  Frm_MotivoCancela: TFrm_MotivoCancela;


implementation

{$R *.dfm}

uses UDM, UFrm_Principal;

procedure TFrm_MotivoCancela.Button1Click(Sender: TObject);
var
cancelar : TFDQuery;
begin

   if length(Memo1.Lines.Text)<10 then
      begin
        ShowMessage('Minímo 10 caracteres!');
      end
      else
      begin
          if TIPO_OCO = 1 then
             BEGIN
                 cancelar:=TFDQuery.Create(self);
                 cancelar.Connection:=dm.Conexao;
                 cancelar.SQL.text:='update controle_atendimento set status =9 where id_atendimento =:c';

                 cancelar.Params[0].AsInteger:=dm.Query_AtendimentoID_ATENDIMENTO.AsInteger;
                 cancelar.ExecSQL;
                 cancelar.Free;


                 dm.Proc_LancaOcorrencia.params[1].AsInteger := dm.Query_AtendimentoID_ATENDIMENTO.AsInteger;
                 dm.Proc_LancaOcorrencia.params[2].AsMemo := Memo1.TEXT;
                 dm.Proc_LancaOcorrencia.params[3].Asstring := 'ATENDIMENTO CANCELADO';
                 dm.Proc_LancaOcorrencia.params[4].Asstring :=Frm_Principal.respon;
                 dm.Proc_LancaOcorrencia.params[5].AsInteger := 1;
                 dm.Proc_LancaOcorrencia.params[6].AsInteger := Dm.Query_AtendimentoID_CLIENTE.AsInteger;
                 dm.Proc_LancaOcorrencia.params[7].AsInteger := Frm_Principal.id_usu;

                 dm.Proc_LancaOcorrencia.ExecProc;





                                                                 {

                                                  Frm_Principal.cli:=dm.Query_AtendimentoCLIENTE.AsString;
                                                  Frm_Principal.protocolo:=dm.Query_AtendimentoPROTOCOLO.AsString;
                                                  Frm_Principal.status:='CANCELADO';
                                                  Frm_Principal.respon:=dm.Query_AtendimentoRESPONSAVEL.AsString;
                                               //   Frm_Principal.canal:=dm.Query_AtendimentoPROTOCOLO.AsString; RzComboBox3.Text;
                                                  Frm_Principal.data_hora:=DateToStr(NOW);
                                                  Frm_Principal.ATENDIMENTO:='<p>'+Memo1.Lines.Text+';</p>';
                                                  Frm_Principal.gerahtml;


                                                   try
                                                      Frm_Principal.EnviarEmail('smtp.bra.terra.com.br',587,'silenus','45781389',DM.Query_ClienteBuscaEMAIL.AsString,'Cancelamento Atendimento Coliseu Sistemas #'+dm.Query_AtendimentoPROTOCOLO.AsString, True, True);
                                                   //   DeleteFile(ExtractFilePath(Application.ExeName)+'\chamado.html');
                                                   except

                                                   end;     }

                   close;
             END
             ELSE
             BEGIN
                 dm.Proc_LancaOcorrencia.params[1].AsInteger := DM.GenGEN_ID.AsInteger;
                 dm.Proc_LancaOcorrencia.params[2].AsMemo := Memo1.Text;
                 dm.Proc_LancaOcorrencia.params[3].Asstring := 'AGENDAMENTO CANCELADO';
                 dm.Proc_LancaOcorrencia.params[4].Asstring := Frm_Principal.respon;
                 dm.Proc_LancaOcorrencia.params[5].AsInteger := 1;
                 dm.Proc_LancaOcorrencia.params[6].AsInteger := Frm_Principal.Query_AgendamentoID_CLIENTE.AsInteger;
                 dm.Proc_LancaOcorrencia.params[7].AsInteger := Frm_Principal.id_usu;

                 dm.Proc_LancaOcorrencia.ExecProc;







                                                  Frm_Principal.cli:=dm.Query_AtendimentoCLIENTE.AsString;
                                                  Frm_Principal.protocolo:=dm.Query_AtendimentoPROTOCOLO.AsString;
                                                  Frm_Principal.status:='AGENDAMENTO CANCELADO';
                                                  Frm_Principal.respon:=dm.Query_AtendimentoRESPONSAVEL.AsString;
                                                  Frm_Principal.DESC:=Memo1.Text;
                                               //   Frm_Principal.canal:=dm.Query_AtendimentoPROTOCOLO.AsString; RzComboBox3.Text;
                                                  Frm_Principal.data_hora:=DateToStr(NOW);
                                                  Frm_Principal.ATENDIMENTO:='<p>'+Memo1.Lines.Text+';</p>';
                                                  Frm_Principal.gerahtml;


                                                   try
                                                      Frm_Principal.EnviarEmail('smtp.bra.terra.com.br',587,'silenus','45781389',DM.Query_ClienteBuscaEMAIL.AsString,'Cancelamento Atendimento Coliseu Sistemas #'+dm.Query_AtendimentoPROTOCOLO.AsString, True, True);
                                                   //   DeleteFile(ExtractFilePath(Application.ExeName)+'\chamado.html');
                                                   except

                                                   end;

                 close;

             END;

      end;
end;

end.

