unit UDM;

interface

uses Registry,
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Stan.StorageBin, FireDAC.Phys.IBBase,
  Vcl.ExtCtrls,  ACBrBase, ACBrExtenso;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    Query_Clientes: TFDQuery;
    Query_ClientesID_CLIENTE: TIntegerField;
    Query_ClientesNOME: TStringField;
    Query_ClientesFANTASIA: TStringField;
    Query_ClientesFONE: TStringField;
    Query_ClientesFONE2: TStringField;
    Query_ClientesCELULAR: TStringField;
    Query_ClientesCEP: TStringField;
    Query_ClientesENDERECO: TStringField;
    Query_ClientesBAIRRO: TStringField;
    Query_ClientesCIDADE: TStringField;
    Query_ClientesCOLISEU_GESTAO: TIntegerField;
    Query_ClientesCOLISEU_FISCAL: TIntegerField;
    Query_ClientesSILENUS_PDV: TIntegerField;
    Query_ClientesCOLISEU_GRAOS: TIntegerField;
    Query_ClientesCOLISEU_TRANSPORTE: TIntegerField;
    Query_ClientesAPP: TIntegerField;
    Query_ClientesCOLISEU_WEB: TIntegerField;
    Query_ClientesNFE: TIntegerField;
    Query_ClientesNFCE: TIntegerField;
    Query_ClientesNFSE: TIntegerField;
    Query_ClientesMDFE: TIntegerField;
    Query_ClientesCTE: TIntegerField;
    Query_ClientesAPP_SALES: TIntegerField;
    Query_ClientesAPP_DASH: TIntegerField;
    DS_Clientes: TDataSource;
    Query_ClientesCPF_CNPJ: TStringField;
    Query_Atualizacao: TFDQuery;
    DS_Atualizacao: TDataSource;
    Query_AtualizacaoVERSAO: TStringField;
    Query_AtualizacaoSOFTWARE: TStringField;
    Query_AtualizacaoDATA: TSQLTimeStampField;
    Query_ModoTrabalho: TFDQuery;
    DS_ModoTrabalho: TDataSource;
    Query_ModoTrabalhoID_CLIENTE: TIntegerField;
    Query_ModoTrabalhoID_MODO: TIntegerField;
    Query_ModoTrabalhoDETALHE: TBlobField;
    Query_ClientesENDERECO_1: TStringField;
    Query_ClientesNUMERO: TStringField;
    Query_ClientesCOMPLEMENTO: TStringField;
    Query_ClientesIE: TStringField;
    Query_ClientesIM: TStringField;
    Query_ClientesEMAIL: TStringField;
    DS_Query_CEP: TDataSource;
    FD_CEP: TFDQuery;
    FD_CEPLOG_NOME: TStringField;
    FD_CEPLOG_COMPLEMENTO: TStringField;
    FD_CEPBAI_NO: TStringField;
    FD_CEPCEP: TStringField;
    Proc_Cliente: TFDStoredProc;
    CIDADE: TFDQuery;
    DS_Cidade: TDataSource;
    Query_Atendimento: TFDQuery;
    DS_Atendimento: TDataSource;
    Query_AtendimentoDATA_HORA: TSQLTimeStampField;
    Query_AtendimentoCLIENTE: TStringField;
    Query_AtendimentoID_ATENDIMENTO: TIntegerField;
    Query_AtendimentoATENDENTE: TStringField;
    Query_AtendimentoSTATUS: TStringField;
    Query_AtendimentoID_STATUS: TIntegerField;
    Query_AtendimentoRESPONSAVEL: TStringField;
    FDTransaction1: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    Proc_LancaAtende: TFDStoredProc;
    Query_ClienteBusca: TFDQuery;
    Query_ClienteBuscaID_CLIENTE: TIntegerField;
    Query_ClienteBuscaNOME: TStringField;
    Query_AtendimentoALT: TStringField;
    Query_AtendimentoDEL: TStringField;
    Query_AtendimentoCAN: TStringField;
    Query_AtendimentoATE: TStringField;
    Query_AtendimentoICO_CANAL: TStringField;
    Query_AtendimentoCANAL: TIntegerField;
    Query_AtendimentoID_ATENDENTE: TIntegerField;
    Query_AtendimentoID_RESPONSAVEL: TIntegerField;
    Query_Ocorrencias: TFDQuery;
    DS_Query_Ocorrencia: TDataSource;
    Proc_LancaOcorrencia: TFDStoredProc;
    Query_AtendimentoID_CLIENTE: TIntegerField;
    Query_ListSoftware: TFDQuery;
    Query_ListSoftwareSOFTWARE: TStringField;
    DS_Query_ListSoftware: TDataSource;
    Query_ListSoftwareVERSAO: TStringField;
    Query_ListSoftwareATUALIZACAO: TDateField;
    Proc_Atualiza: TFDStoredProc;
    Query_OcorrenciasID_ATENDIMENTO: TIntegerField;
    Query_OcorrenciasSOFTWARE: TStringField;
    Query_OcorrenciasDETALHE: TMemoField;
    Query_OcorrenciasTIPO: TStringField;
    Query_OcorrenciasVERSAO: TStringField;
    Query_OcorrenciasDATA_HORA: TSQLTimeStampField;
    Query_OcorrenciasRESPONSAVEL: TStringField;
    Query_Historico: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField5: TStringField;
    DS_Query_Historico: TDataSource;
    Query_OcorrenciasID_CLIENTE: TIntegerField;
    Query_OcorrenciasBTN: TStringField;
    Query_OcorrenciasID: TIntegerField;
    Query_OcorrenciasID_RESPONSAVEL: TIntegerField;
    Proc_Agendar: TFDStoredProc;
    Query_Agendamento: TFDQuery;
    DS_Agendamento: TDataSource;
    Query_AgendamentoID: TIntegerField;
    Query_AgendamentoDATA_HORA: TSQLTimeStampField;
    Query_AgendamentoAGENDAMENTO: TSQLTimeStampField;
    Query_AgendamentoID_STATUS: TIntegerField;
    Query_AgendamentoAGENDADO: TStringField;
    Query_AgendamentoRESPONSAVEL: TStringField;
    Query_AgendamentoCLIENTE: TStringField;
    Query_AgendamentoSTATUS: TStringField;
    Query_AgendamentoATE: TStringField;
    Query_AgendamentoCANC: TStringField;
    Query_AgendamentoVISU: TStringField;
    Gen: TFDQuery;
    GenGEN_ID: TLargeintField;
    Query_ClientesBANCOS: TBlobField;
    Query_ClientesRESPONSAVEL_EMPRESA: TStringField;
    Query_ClientesID_COLISEU_RESP: TIntegerField;
    Query_ClientesGRADE: TIntegerField;
    Query_ClientesESTOQUE_POR_DEPTO: TIntegerField;
    Query_ClientesCONTROLE_DE_ENTREGA: TIntegerField;
    Query_ClientesENTREGA_BAIXA_ESTOQUE: TIntegerField;
    Query_ClientesFRENTE_CAIXA: TIntegerField;
    Query_ClientesATENDIMENTO: TIntegerField;
    Query_ClientesBOLETO_BANCARIO: TIntegerField;
    Query_ClientesTRABALHA_OS: TIntegerField;
    Query_ClientesPROPRIEDADE: TIntegerField;
    Query_ClientesLOTE: TIntegerField;
    Query_ClientesCONDICIONAL: TIntegerField;
    Query_ClientesPREST_SERVI: TIntegerField;
    Query_ClientesEMISS_VENDA: TIntegerField;
    Query_ClientesN_DISPO_SALES: TIntegerField;
    Query_ClientesN_DISPO_DARSH: TIntegerField;
    Query_ClientesOBS: TBlobField;
    Tab_Obs: TFDTable;
    Tab_ObsID_CLIENTE: TIntegerField;
    Tab_ObsID_OBS: TIntegerField;
    Tab_ObsDATA_HORA: TSQLTimeStampField;
    Tab_ObsTIPO: TSmallintField;
    Tab_ObsID_USUARIO: TIntegerField;
    Tab_ObsOBS: TMemoField;
    DS_Tab_Obs: TDataSource;
    Query_log: TFDQuery;
    Query_Soma: TFDQuery;
    Query_SomaURGENTE: TIntegerField;
    Query_SomaESPERA: TIntegerField;
    Query_SomaATENDIMENTO: TIntegerField;
    DS_Query_Soma: TDataSource;
    Query_AtendimentoPROTOCOLO: TStringField;
    Query_Empresa: TFDQuery;
    Query_EmpresaSMTP_ENDERECO: TStringField;
    Query_EmpresaSMTP_USUARIO: TStringField;
    Query_EmpresaSMTP_SENHA: TStringField;
    Query_EmpresaSMTP_PORTA: TIntegerField;
    Query_EmpresaEMAIL: TStringField;
    Query_ClienteBuscaEMAIL: TStringField;
    Query_Cli: TFDQuery;
    Query_CliID_CLIENTE: TIntegerField;
    Query_CliNOME: TStringField;
    DS_Query_Cli: TDataSource;
    Query_AgendamentoID_CLIENTE: TIntegerField;
    Query_Contrato: TFDQuery;
    Query_ContratoItens: TFDQuery;
    Query_ContratoItensID_CONTRATO: TIntegerField;
    Query_ContratoItensID_ITENS: TIntegerField;
    Query_ContratoItensDESCRICAO: TStringField;
    Query_ContratoItensVALOR: TFloatField;
    Query_ContratoItensN_PARCELA: TIntegerField;
    Query_ContratoItensDIA_VENCIMENTO: TIntegerField;
    Query_ContratoItensID_PLANODECONTAS: TIntegerField;
    DS_ContratoItens: TDataSource;
    DS_Contrato: TDataSource;
    Query_Contas: TFDQuery;
    Query_ContasID_CONTA: TIntegerField;
    Query_ContasID_PEDIDO: TIntegerField;
    Query_ContasDESCRICAO: TStringField;
    Query_ContasID_CLIENTE: TIntegerField;
    Query_ContasDATA_EMISSAO: TDateField;
    Query_ContasDATA_VENCIMENTO: TDateField;
    Query_ContasPEDIDO: TStringField;
    Query_ContasNOTA_FISCAL: TStringField;
    Query_ContasID_ESPECIE: TIntegerField;
    Query_ContasN_DOC: TStringField;
    Query_ContasPARCELA: TStringField;
    Query_ContasID_PLANO: TIntegerField;
    Query_ContasID_MOEDA: TIntegerField;
    Query_ContasJUROS_ANTES: TSingleField;
    Query_ContasJUROS_DEPOIS: TSingleField;
    Query_ContasMULTA: TSingleField;
    Query_ContasVALOR: TBCDField;
    Query_ContasDATA_PAGAMENTO: TDateField;
    Query_ContasVALOR_PAGO: TBCDField;
    Query_ContasDC: TSmallintField;
    Query_ContasBAIXA: TSmallintField;
    Query_ContasOBS: TBlobField;
    Query_ContasSELECIONA: TSmallintField;
    Query_ContasTIPO: TSmallintField;
    Query_ContasID_CHEQUE: TIntegerField;
    Query_ContasID_DEPTO: TIntegerField;
    Query_ContasDESCONTO: TSingleField;
    Query_ContasID_PORTADOR: TIntegerField;
    Query_ContasAUTENTICACAO: TIntegerField;
    Query_ContasID_FECHAMENTO: TIntegerField;
    Query_ContasID_VENDEDOR: TIntegerField;
    Query_ContasID_CARTAO: TIntegerField;
    Query_ContasVALOR_JUROS: TBCDField;
    Query_ContasVALOR_DESCONTO: TBCDField;
    Query_ContasNEGATIVADO: TSmallintField;
    Query_ContasDATA_NEGATIVACAO: TDateField;
    Query_ContasAGENDADO: TSmallintField;
    Query_ContasNOMINAL: TSmallintField;
    Query_ContasDADOS_NOMINAL: TStringField;
    Query_ContasDATA_COMUNICACAO: TDateField;
    Query_ContasDATA_AGENDAMENTO: TDateField;
    Query_ContasSERIE: TStringField;
    Query_ContasDETALHADO: TSmallintField;
    Query_ContasID_LIQUIDA_LOTE: TIntegerField;
    Query_ContasMOVIMENTO: TSmallintField;
    Query_ContasID_NEGOCIACAO: TIntegerField;
    Query_ContasBAIXAR: TSmallintField;
    Query_ContasID_PROPRIEDADE: TIntegerField;
    Query_ContasID_USUARIO: TIntegerField;
    Query_ContasTIPO_AUT: TSmallintField;
    Query_ContasID_CC: TIntegerField;
    Query_ContasID_CONVENIO: TIntegerField;
    Query_ContasID_CAIXA: TIntegerField;
    Query_ContasID_MOVIMENTO: TIntegerField;
    Query_ContasID_ENTREGA: TIntegerField;
    Query_ContasNOSSO_NUMERO: TStringField;
    Query_ContasID_CEDENTE: TIntegerField;
    Query_ContasDATA_BAIXAR: TDateField;
    Query_ContasTIPO_BAIXA: TSmallintField;
    Query_ContasVALOR_NEGOCIADO: TBCDField;
    Query_ContasCORRECAO_SERASA: TSmallintField;
    Query_ContasID_OP: TIntegerField;
    Query_ContasDAV: TIntegerField;
    Query_ContasNPV: TIntegerField;
    Query_ContasTIPO_PEDIDO: TSmallintField;
    Query_ContasID_USUARIO_BAIXA: TIntegerField;
    Query_ContasID_EMPRESA_BAIXA: TIntegerField;
    Query_ContasID_EMPRESA: TIntegerField;
    Query_ContasSALDO: TBCDField;
    Query_ContasSALDO_MOV: TBCDField;
    Query_ContasNOTA_FISCAL_SERV: TStringField;
    Query_ContasSTATUS_ANTERIOR: TSmallintField;
    Query_ContasID_CUPOM: TIntegerField;
    Query_ContasID_ECF: TIntegerField;
    Query_ContasCOO: TStringField;
    Query_ContasCCF: TStringField;
    Query_ContasGNF: TStringField;
    Query_ContasCODE: TStringField;
    Query_ContasCRZ: TStringField;
    Query_ContasMODELO_NF: TStringField;
    Query_ContasREMESSA: TSmallintField;
    Query_ContasID_LAN_CHEQUE: TIntegerField;
    Query_ContasVALOR_SALDO: TBCDField;
    Query_ContasREIMPRESSO: TSmallintField;
    Query_ContasDIAS_CARENCIA: TSmallintField;
    Query_ContasDESCONTO_VALOR: TBCDField;
    Query_ContasDESCONTO_DATA: TDateField;
    Query_ContasNFCE_NUMERO: TStringField;
    Query_ContasID_OPERADORA: TIntegerField;
    Query_ContasID_BANDEIRA: TIntegerField;
    Query_ContasDATA_BOLETO: TDateField;
    Query_ContasINTEGRA_BOLETO: TStringField;
    Query_ContasID_BAIXA: TIntegerField;
    Query_ContasID_MOBILE: TIntegerField;
    Query_ContasBOLETO_REMESSA: TIntegerField;
    Query_ContasBOLETO_LOTE: TIntegerField;
    Query_ContasBOLETO_STATUS: TSmallintField;
    Query_ContasBOLETO_BAIXA: TSmallintField;
    Query_ContasCRD_VALORU: TBCDField;
    Query_ContasCRD_STATUS: TSmallintField;
    Query_ContasID_CONTAO: TIntegerField;
    Query_ContasID_CONTROLELANCA: TIntegerField;
    DS_Query_Contas: TDataSource;
    Query_ContratoID_CONTRATO: TIntegerField;
    Query_ContratoID_CLIENTE: TIntegerField;
    Query_ContratoDATA_EMISSAO: TDateField;
    Query_ContratoID_CENTROCUSTO: TIntegerField;
    Query_ContratoVISITAS: TIntegerField;
    Query_ContratoItensID_ESPECIE: TIntegerField;
    Query_Controle_contrato: TFDQuery;
    DS_Controle_contrato: TDataSource;
    Query_Controle_contratoID_CONTRATO: TIntegerField;
    Query_Controle_contratoID_CLIENTE: TIntegerField;
    Query_Controle_contratoNOME: TStringField;
    Query_Controle_contratoDATA_EMISSAO: TDateField;
    Query_Controle_ContratoItens: TFDQuery;
    DS_Query_Controle_ContratoItens: TDataSource;
    Query_Controle_ContratoItensID_CONTRATO: TIntegerField;
    Query_Controle_ContratoItensID_ITENS: TIntegerField;
    Query_Controle_ContratoItensDESCRICAO: TStringField;
    Query_Controle_ContratoItensVALOR: TFloatField;
    Query_Controle_ContratoItensN_PARCELA: TIntegerField;
    Query_Controle_ContratoItensDIA_VENCIMENTO: TIntegerField;
    Query_Controle_ContratoItensID_PLANODECONTAS: TIntegerField;
    Query_Controle_ContratoItensID_ESPECIE: TIntegerField;
    Query_Controle_ContratoItensBUTTON: TStringField;
    Query_Config_Financeiro: TFDQuery;
    DS_Query_Config_Financeiro: TDataSource;
    Query_Config_FinanceiroID_PLANO_IMPLANTA: TIntegerField;
    Query_Config_FinanceiroID_PLANO_MANUTENCAO: TIntegerField;
    Query_Config_FinanceiroID_PLANO_MODULOS: TIntegerField;
    Query_Config_FinanceiroID_PLANO_VISITAS: TIntegerField;
    Query_Config_FinanceiroID_CENTRO_CUSTO: TIntegerField;
    Query_Controle_contratoBUTTON: TStringField;
    Query_AtendimentoSOLICITANTE: TStringField;
    Imprimi_Contrato: TFDQuery;
    DS_imprimi_contrato: TDataSource;
    Imprimi_ContratoID_CONTRATO: TIntegerField;
    Imprimi_ContratoCLIENTE: TStringField;
    Imprimi_ContratoENDERECO: TStringField;
    Imprimi_ContratoNUMERO: TStringField;
    Imprimi_ContratoBAIRRO: TStringField;
    Imprimi_ContratoCEP: TStringField;
    Imprimi_ContratoCIDADE: TStringField;
    Imprimi_ContratoUF: TStringField;
    Imprimi_ContratoCNPJ: TStringField;
    Imprimi_ContratoIE: TStringField;
    Imprimi_ContratoPDV: TStringField;
    Imprimi_ContratoCOLISEU: TStringField;
    Imprimi_ContratoINDUSTRIA: TStringField;
    Imprimi_ContratoGRAOS: TStringField;
    Imprimi_ContratoCOLISEU_WEB: TStringField;
    Imprimi_ContratoNFE: TStringField;
    Imprimi_ContratoNFCE: TStringField;
    Imprimi_ContratoNFSE: TStringField;
    Imprimi_ContratoMDFE: TStringField;
    Imprimi_ContratoCTE: TStringField;
    Imprimi_ContratoAPP_SALES: TStringField;
    Imprimi_ContratoAPP_DARSH: TStringField;
    Imprimi_ContratoSPED: TStringField;
    Imprimi_ContratoIMPLANTACAO: TBCDField;
    Imprimi_ContratoMANUTENCAO: TBCDField;
    Imprimi_ContratoPERC_MANU: TBCDField;
    Imprimi_ContratoCARENCIA: TIntegerField;
    Imprimi_ContratoN_PARCELA: TIntegerField;
    Imprimi_ContratoDATA: TDateField;
    Imprimi_ContratoIMPLANT_ESTENSO: TStringField;
    ACBrExtenso1: TACBrExtenso;
    Imprimi_Contratoemissaocont: TStringField;
    Query_ClientesINFO_INDUSTRIA: TIntegerField;
    Query_ClientesSPED: TIntegerField;
    Query_ClientesREPONSAVEL_CPF: TStringField;
    Query_ClientesREPONSAVEL_ENDERECO: TStringField;
    Query_ClientesREPONSAVEL_NUMERO: TStringField;
    Query_ClientesREPONSAVEL_BAIRRO: TStringField;
    Query_ClientesREPONSAVEL_CIDADE: TStringField;
    Query_ClientesREPONSAVEL_UF: TStringField;
    Query_ClientesRESPONSAVEL_RG: TStringField;
    Query_ContratoPERC_MENS: TBCDField;
    Imprimi_ContratoRESPONSAVEL_EMPRESA: TStringField;
    Imprimi_ContratoRESP_END: TStringField;
    Imprimi_ContratoRESP_NUMERO: TStringField;
    Imprimi_ContratoRESP_BAIRRO: TStringField;
    Imprimi_ContratoRESP_CID: TStringField;
    Imprimi_ContratoRESP_CPF: TStringField;
    Imprimi_ContratoRESP_RG: TStringField;
    Imprimi_ContratoPERC_MENS: TBCDField;
    Imprimi_ContratoPERC: TStringField;
    Query_Config_FinanceiroVERSAO_INFO: TStringField;
    Query_OcorrenciasDESCRICAO: TStringField;
    Query_HistoricoSOLICITANTE: TStringField;
    Proc_Lanca_Contas: TFDStoredProc;
    Query_ClientesREGIAO: TIntegerField;
    Query_AgendamentoDETALHE: TStringField;
    Query_App: TFDQuery;
    DS_Query_App: TDataSource;
    Query_AppID: TIntegerField;
    Query_AppNOME: TStringField;
    Query_AppDESCRICAO: TMemoField;
    Query_AppNOME_PROJETO: TStringField;
    Query_Controle_contratoPERC_MENS: TBCDField;
    Query_HistoricoDETALHE: TStringField;
    Query_Funcionario: TFDQuery;
    Query_FuncionarioID_FUNCIONARIO: TIntegerField;
    Query_FuncionarioNOME: TStringField;
    DS_Query_Funcionario: TDataSource;
    Query_AtendimentoDESCRICAO: TStringField;
    procedure Tab_ObsAfterInsert(DataSet: TDataSet);
    procedure Tab_ObsBeforeInsert(DataSet: TDataSet);
    procedure Tab_ObsOBSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure Tab_ObsBeforeOpen(DataSet: TDataSet);
    procedure ConexaoAfterConnect(Sender: TObject);
    procedure Query_ContratoItensBeforeDelete(DataSet: TDataSet);
    procedure Imprimi_ContratoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFrm_Obs, UFrm_CadClientes, UFrm_Principal, UFrm_Aviso;

{$R *.dfm}

function Extenso(Valor : Extended; Moeda: Boolean; Tipo : Integer = 0): String;
var
  Centavos, Centena, Milhar, Milhao, Bilhao, Texto : string;
const
  Unidades: array [1..9] of string = ('um', 'dois', 'três','quatro','cinco',
  'seis', 'sete', 'oito','nove');
  Dez     : array [1..9] of string = ('onze', 'doze', 'treze', 'quatorze',
  'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');
  Dezenas : array [1..9] of string = ('dez', 'vinte', 'trinta',
  'quarenta', 'cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  Centenas: array [1..9] of string = ('cento', 'duzentos', 'trezentos',
  'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
  'novecentos');
  function ifs( Expressao: Boolean; CasoVerdadeiro, CasoFalso:String): String;
  begin
    if Expressao then
      Result := CasoVerdadeiro
    else
      Result :=CasoFalso;
  end;
  function MiniExtenso( Valor: ShortString ): string;
  var
    Unidade, Dezena, Centena: String;
  begin
    if (Valor[2] = '1') and (Valor[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(Valor[3])];
      Dezena := '';
    end
    else
    begin
     if Valor[2] <> '0' then
       Dezena := Dezenas[StrToInt(Valor[2])];
     if Valor[3] <> '0' then
       unidade := Unidades[StrToInt(Valor[3])];
    end;
    if (Valor[1] = '1') and (Unidade = '') and (Dezena = '') then
      centena := 'cem'
    else
      if Valor[1] <> '0' then
        Centena := Centenas[StrToInt(Valor[1])]
      else
        Centena := '';

    Result := Centena + ifs( (Centena <> '') and ((Dezena <> '') or
    (Unidade <> '')),' e ', '') + Dezena + ifs( (Dezena <> '') and
    (Unidade <> ''), ' e ','') + Unidade;
  end;
begin
  if Valor = 0 then
  begin
    if Moeda then
      Result := ''
    else
      Result := 'zero';

    Exit;
  end;

  Texto := FormatFloat( '000000000000.00', Valor );
  Centavos := MiniExtenso( '0' + Copy( Texto, 14, 2 ) );
  Centena  := MiniExtenso( Copy( Texto, 10, 3 ) );
  Milhar   := MiniExtenso( Copy( Texto,  7, 3 ) );

  if Milhar <> '' then
    Milhar := Milhar + ' mil';

  Milhao   := MiniExtenso( Copy( Texto,  4, 3 ) );

  if Milhao <> '' then
  begin
    Milhao := Milhao
    + ifs( Copy( Texto, 4,
    3 ) = '001', ' milhão', ' milhões');
  end;

  Bilhao   := MiniExtenso( Copy( Texto,  1, 3 ) );

  if Bilhao <> '' then
  begin
    Bilhao := Bilhao + ifs( Copy( Texto, 1, 3 ) = '001', ' bilhão',
    ' bilhões');
  end;

  Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
  Centena <> ''),
  ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
  Milhao + Milhar + Centena ) > 0), ', ', ' e '), '') +
  Milhao + ifs( (Milhao <> '') and (Milhar + Centena <> ''),
  ifs((Pos(' e ', Milhao) > 0) or
  (Pos( ' e ', Milhar + Centena ) > 0 ),', ',    ' e '), '') +
  Milhar + ifs( (Milhar <> '') and
  (Centena <> ''), ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '),'') +
  Centena;

  if Moeda then
  begin
    if Tipo=0 then
    begin
      if (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
        Result := Bilhao + ' de reais'
      else
      if (Milhao <> '') and (Milhar + Centena = '') then
        Result := Milhao + ' de reais'
      else
        Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
        Centena <> ''), ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
        Milhao +Milhar + Centena ) > 0), ', ', ' e '), '') + Milhao + ifs(
        (Milhao <> '') and (Milhar + Centena <> ''), ifs((Pos(' e ',
        Milhao) > 0) or (Pos( ' e ', Milhar + Centena ) > 0 ),', ',
        ' e '), '') + Milhar + ifs( (Milhar <> '') and (Centena <> ''),
        ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '),'') +
        Centena + ifs( Int(Valor) = 1, ' real', ' reais');
      if Centavos <> '' then
      begin
        if Valor > 1 then
          Result := Result + ' e ' + Centavos + ifs( Copy(
          Texto, 14, 2 )= '01', ' centavo', ' centavos' )
        else
          Result := Centavos + ifs( Copy( Texto, 14, 2 )= '01',
          ' centavo', ' centavos' );
      end;
    end
    else
    begin
      if (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
        Result := Bilhao + ' de dolares americanos'
      else
      if (Milhao <> '') and (Milhar + Centena = '') then
        Result := Milhao + ' de dolares americanos'
      else
        Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
        Centena <> ''), ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
        Milhao + Milhar + Centena ) > 0),', ', ' e '), '') + Milhao +
        ifs( (Milhao <> '') and (Milhar + Centena <> ''), ifs((Pos(' e ',
        Milhao) > 0) or (Pos( ' e ', Milhar + Centena ) > 0 ),', ',
        ' e '), '') + Milhar + ifs( (Milhar <> '') and (Centena <> ''),
        ifs(Pos( ' e ', Centena ) > 0,', ', ' e '),'') + Centena + ifs(
        Int(Valor) = 1, ' dolar americano', ' dolares americanos');

      if Centavos <> '' then
      begin
        if Valor > 1 then
          Result := Result + ' e ' + Centavos + ifs( Copy( Texto, 14, 2 )=
          '01', ' cent', ' cents' )
        else
          Result := Centavos + ifs( Copy( Texto, 14, 2 )= '01', ' cent', ' ' +
          'cents' );
      end;
    end;
  end;
end;

procedure TDM.ConexaoAfterConnect(Sender: TObject);
begin
query_soma.Open();
Query_Cli.Open();



end;

procedure TDM.Imprimi_ContratoCalcFields(DataSet: TDataSet);
begin
ACBrExtenso1.Valor:=Imprimi_ContratoIMPLANTACAO.AsCurrency;
Imprimi_ContratoIMPLANT_ESTENSO.AsString:=ACBrExtenso1.Texto;
Imprimi_Contratoemissaocont.AsString:=FormatDateTime('DD" de "MMMM" de "yyyy',now);
Imprimi_ContratoPERC.AsString:='0.'+FloatToStr(Imprimi_ContratoPERC_MENS.AsFloat)+'%('+Extenso(Imprimi_ContratoPERC_MENS.AsFloat,FALSE)+' por cento)';

end;

procedure TDM.Query_ContratoItensBeforeDelete(DataSet: TDataSet);
begin
        dm.Query_Contas.close;
        dm.Query_Contas.params[0].AsInteger := dm.Query_ContratoItensID_ITENS.AsInteger;
        dm.Query_Contas.params[1].AsINTEGER := dm.Query_ContratoItensID_ITENS.AsInteger;
        dm.Query_Contas.open;
        if dm.Query_Contas.RecordCount<>0 then
        begin
        dm.Query_Contas.First;
        while not query_contas.Eof do
         begin
           dm.Query_Contas.Delete;
           dm.Query_Contas.Next;
         end;
        end;
end;

procedure TDM.Tab_ObsAfterInsert(DataSet: TDataSet);
begin

Frm_Observacao:=TFrm_Observacao.Create(self);
Frm_Observacao.ShowModal;


dm.gen.Close;
dm.gen.SQL.Text:='select gen_id(GEN_CLIENTES_OBS,1)from rdb$database';
dm.gen.Open();
if Frm_CadClientes<> nil then
   dm.Tab_ObsID_CLIENTE.AsInteger:=StrToInt(Frm_CadClientes.Label14.Caption);

   dm.Tab_ObsID_OBS.AsInteger:= dm.GenGEN_ID.AsInteger;
   dm.Tab_ObsDATA_HORA.AsDateTime:=now;


end;

procedure TDM.Tab_ObsBeforeInsert(DataSet: TDataSet);
begin
;
end;

procedure TDM.Tab_ObsBeforeOpen(DataSet: TDataSet);
begin
//Tab_ObsOBS.OnGetText:= GetTextBlob;
end;

procedure TDM.Tab_ObsOBSGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
Text := Sender.AsString;
end;

end.
