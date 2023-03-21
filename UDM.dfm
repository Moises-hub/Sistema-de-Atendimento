object DM: TDM
  OldCreateOrder = False
  Height = 663
  Width = 1295
  object Conexao: TFDConnection
    Params.Strings = (
      'Port=3050'
      'CharacterSet='
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = FDTransaction1
    AfterConnect = ConexaoAfterConnect
    Left = 32
    Top = 16
  end
  object Query_Clientes: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select first 50 * from controle_clientes'
      'where id_cliente <> 1'
      'order by NOME, id_cliente')
    Left = 120
    Top = 16
    object Query_ClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_ClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
    object Query_ClientesFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 50
    end
    object Query_ClientesFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 18
    end
    object Query_ClientesFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FONE2'
      Size = 18
    end
    object Query_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 18
    end
    object Query_ClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object Query_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 92
    end
    object Query_ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object Query_ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 54
    end
    object Query_ClientesCOLISEU_GESTAO: TIntegerField
      FieldName = 'COLISEU_GESTAO'
      Origin = 'COLISEU_GESTAO'
    end
    object Query_ClientesCOLISEU_FISCAL: TIntegerField
      FieldName = 'COLISEU_FISCAL'
      Origin = 'COLISEU_FISCAL'
    end
    object Query_ClientesSILENUS_PDV: TIntegerField
      FieldName = 'SILENUS_PDV'
      Origin = 'SILENUS_PDV'
    end
    object Query_ClientesCOLISEU_GRAOS: TIntegerField
      FieldName = 'COLISEU_GRAOS'
      Origin = 'COLISEU_GRAOS'
    end
    object Query_ClientesCOLISEU_TRANSPORTE: TIntegerField
      FieldName = 'COLISEU_TRANSPORTE'
      Origin = 'COLISEU_TRANSPORTE'
    end
    object Query_ClientesAPP: TIntegerField
      FieldName = 'APP'
      Origin = 'APP'
    end
    object Query_ClientesCOLISEU_WEB: TIntegerField
      FieldName = 'COLISEU_WEB'
      Origin = 'COLISEU_WEB'
    end
    object Query_ClientesNFE: TIntegerField
      FieldName = 'NFE'
      Origin = 'NFE'
    end
    object Query_ClientesNFCE: TIntegerField
      FieldName = 'NFCE'
      Origin = 'NFCE'
    end
    object Query_ClientesNFSE: TIntegerField
      FieldName = 'NFSE'
      Origin = 'NFSE'
    end
    object Query_ClientesMDFE: TIntegerField
      FieldName = 'MDFE'
      Origin = 'MDFE'
    end
    object Query_ClientesCTE: TIntegerField
      FieldName = 'CTE'
      Origin = 'CTE'
    end
    object Query_ClientesAPP_SALES: TIntegerField
      FieldName = 'APP_SALES'
      Origin = 'APP_SALES'
    end
    object Query_ClientesAPP_DASH: TIntegerField
      FieldName = 'APP_DASH'
      Origin = 'APP_DASH'
    end
    object Query_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object Query_ClientesENDERECO_1: TStringField
      FieldName = 'ENDERECO_1'
      Origin = 'ENDERECO_1'
      Size = 50
    end
    object Query_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object Query_ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 30
    end
    object Query_ClientesIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 18
    end
    object Query_ClientesIM: TStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 18
    end
    object Query_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object Query_ClientesBANCOS: TBlobField
      FieldName = 'BANCOS'
      Origin = 'BANCOS'
    end
    object Query_ClientesRESPONSAVEL_EMPRESA: TStringField
      FieldName = 'RESPONSAVEL_EMPRESA'
      Origin = 'RESPONSAVEL_EMPRESA'
      Size = 70
    end
    object Query_ClientesID_COLISEU_RESP: TIntegerField
      FieldName = 'ID_COLISEU_RESP'
      Origin = 'ID_COLISEU_RESP'
    end
    object Query_ClientesGRADE: TIntegerField
      FieldName = 'GRADE'
      Origin = 'GRADE'
    end
    object Query_ClientesESTOQUE_POR_DEPTO: TIntegerField
      FieldName = 'ESTOQUE_POR_DEPTO'
      Origin = 'ESTOQUE_POR_DEPTO'
    end
    object Query_ClientesCONTROLE_DE_ENTREGA: TIntegerField
      FieldName = 'CONTROLE_DE_ENTREGA'
      Origin = 'CONTROLE_DE_ENTREGA'
    end
    object Query_ClientesENTREGA_BAIXA_ESTOQUE: TIntegerField
      FieldName = 'ENTREGA_BAIXA_ESTOQUE'
      Origin = 'ENTREGA_BAIXA_ESTOQUE'
    end
    object Query_ClientesFRENTE_CAIXA: TIntegerField
      FieldName = 'FRENTE_CAIXA'
      Origin = 'FRENTE_CAIXA'
    end
    object Query_ClientesATENDIMENTO: TIntegerField
      FieldName = 'ATENDIMENTO'
      Origin = 'ATENDIMENTO'
    end
    object Query_ClientesBOLETO_BANCARIO: TIntegerField
      FieldName = 'BOLETO_BANCARIO'
      Origin = 'BOLETO_BANCARIO'
    end
    object Query_ClientesTRABALHA_OS: TIntegerField
      FieldName = 'TRABALHA_OS'
      Origin = 'TRABALHA_OS'
    end
    object Query_ClientesPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
    end
    object Query_ClientesLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object Query_ClientesCONDICIONAL: TIntegerField
      FieldName = 'CONDICIONAL'
      Origin = 'CONDICIONAL'
    end
    object Query_ClientesPREST_SERVI: TIntegerField
      FieldName = 'PREST_SERVI'
      Origin = 'PREST_SERVI'
    end
    object Query_ClientesEMISS_VENDA: TIntegerField
      FieldName = 'EMISS_VENDA'
      Origin = 'EMISS_VENDA'
    end
    object Query_ClientesN_DISPO_SALES: TIntegerField
      FieldName = 'N_DISPO_SALES'
      Origin = 'N_DISPO_SALES'
    end
    object Query_ClientesN_DISPO_DARSH: TIntegerField
      FieldName = 'N_DISPO_DARSH'
      Origin = 'N_DISPO_DARSH'
    end
    object Query_ClientesOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'OBS'
    end
    object Query_ClientesINFO_INDUSTRIA: TIntegerField
      FieldName = 'INFO_INDUSTRIA'
      Origin = 'INFO_INDUSTRIA'
    end
    object Query_ClientesSPED: TIntegerField
      FieldName = 'SPED'
      Origin = 'SPED'
    end
    object Query_ClientesREPONSAVEL_CPF: TStringField
      FieldName = 'REPONSAVEL_CPF'
      Origin = 'REPONSAVEL_CPF'
      Size = 18
    end
    object Query_ClientesREPONSAVEL_ENDERECO: TStringField
      FieldName = 'REPONSAVEL_ENDERECO'
      Origin = 'REPONSAVEL_ENDERECO'
      Size = 50
    end
    object Query_ClientesREPONSAVEL_NUMERO: TStringField
      FieldName = 'REPONSAVEL_NUMERO'
      Origin = 'REPONSAVEL_NUMERO'
      Size = 8
    end
    object Query_ClientesREPONSAVEL_BAIRRO: TStringField
      FieldName = 'REPONSAVEL_BAIRRO'
      Origin = 'REPONSAVEL_BAIRRO'
      Size = 30
    end
    object Query_ClientesREPONSAVEL_CIDADE: TStringField
      FieldName = 'REPONSAVEL_CIDADE'
      Origin = 'REPONSAVEL_CIDADE'
      Size = 50
    end
    object Query_ClientesREPONSAVEL_UF: TStringField
      FieldName = 'REPONSAVEL_UF'
      Origin = 'REPONSAVEL_UF'
      Size = 2
    end
    object Query_ClientesRESPONSAVEL_RG: TStringField
      FieldName = 'RESPONSAVEL_RG'
      Origin = 'RESPONSAVEL_RG'
    end
    object Query_ClientesREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
    end
  end
  object DS_Clientes: TDataSource
    DataSet = Query_Clientes
    Left = 120
    Top = 72
  end
  object Query_Atualizacao: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT VERSAO,'
      '       SOFTWARE,'
      '       DATA'
      '       from CONTROLE_ATUALIZACOES'
      '      WHERE ID_CLIENTE =:F'
      '      ORDER BY ID_ATUALIZACOES DESC')
    Left = 200
    Top = 16
    ParamData = <
      item
        Name = 'F'
        ParamType = ptInput
      end>
    object Query_AtualizacaoVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
    object Query_AtualizacaoSOFTWARE: TStringField
      FieldName = 'SOFTWARE'
      Origin = 'SOFTWARE'
      Size = 40
    end
    object Query_AtualizacaoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
  object DS_Atualizacao: TDataSource
    DataSet = Query_Atualizacao
    Left = 200
    Top = 72
  end
  object Query_ModoTrabalho: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CONTROLE_MODOTRABALHO'
      'where id_cliente =:f')
    Left = 320
    Top = 16
    ParamData = <
      item
        Name = 'F'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Query_ModoTrabalhoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_ModoTrabalhoID_MODO: TIntegerField
      FieldName = 'ID_MODO'
      Origin = 'ID_MODO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_ModoTrabalhoDETALHE: TBlobField
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
    end
  end
  object DS_ModoTrabalho: TDataSource
    DataSet = Query_ModoTrabalho
    Left = 320
    Top = 72
  end
  object DS_Query_CEP: TDataSource
    DataSet = FD_CEP
    Left = 1008
    Top = 72
  end
  object FD_CEP: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select cep.log_nome,'
      '       cep.log_complemento,'
      '       cep.bai_no,'
      '       cep.cep'
      '       from cep'
      '       where  cep.log_nome like :n')
    Left = 1008
    Top = 16
    ParamData = <
      item
        Name = 'N'
        DataType = ftString
        ParamType = ptInput
        Size = 125
        Value = Null
      end>
    object FD_CEPLOG_NOME: TStringField
      FieldName = 'LOG_NOME'
      Origin = 'LOG_NOME'
      Size = 125
    end
    object FD_CEPLOG_COMPLEMENTO: TStringField
      FieldName = 'LOG_COMPLEMENTO'
      Origin = 'LOG_COMPLEMENTO'
      Size = 100
    end
    object FD_CEPBAI_NO: TStringField
      FieldName = 'BAI_NO'
      Origin = 'BAI_NO'
      Size = 72
    end
    object FD_CEPCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 8
    end
  end
  object Proc_Cliente: TFDStoredProc
    Connection = Conexao
    StoredProcName = 'CONTROLE_CADASTRA_CLIENTE'
    Left = 32
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 70
      end
      item
        Position = 3
        Name = 'FANTASIA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = 'CADASTRO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'CPF_CNPJ'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 6
        Name = 'IE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = 'REGIAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'ENDERECO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 9
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 10
        Name = 'BAIRRO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 11
        Name = 'COMPLEMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 12
        Name = 'CEP'
        DataType = ftString
        ParamType = ptInput
        Size = 9
      end
      item
        Position = 13
        Name = 'FONE_RES'
        DataType = ftString
        ParamType = ptInput
        Size = 18
      end
      item
        Position = 14
        Name = 'CELULAR'
        DataType = ftString
        ParamType = ptInput
        Size = 18
      end
      item
        Position = 15
        Name = 'EMAIL'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 16
        Name = 'NFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'NFCE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'NFSE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 19
        Name = 'MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'CTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 21
        Name = 'SALES'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 22
        Name = 'DARSH'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 23
        Name = 'COLISEU_GESTAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 24
        Name = 'COLISEU_FISCAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 25
        Name = 'SILENUS_PDV'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 26
        Name = 'COLISEU_GRAOS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 27
        Name = 'COLISEU_TRANSPORTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 28
        Name = 'APP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 29
        Name = 'N_DISPO_S'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 30
        Name = 'N_DISPO_D'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 31
        Name = 'COLISEU_WEB'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 32
        Name = 'DETALHE'
        DataType = ftString
        ParamType = ptInput
        Size = 300
      end
      item
        Position = 33
        Name = 'GRADE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 34
        Name = 'EST_DEPTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 35
        Name = 'CONTRO_ENTREGA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 36
        Name = 'ENT_BAIXA_EST'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 37
        Name = 'FATURA_CAIXA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 38
        Name = 'FATURA_ATEND'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 39
        Name = 'BOLETO_BANC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 40
        Name = 'TRAB_OS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 41
        Name = 'TRAB_PROPRI'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 42
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 43
        Name = 'TRAB_COND'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 44
        Name = 'PREST_SERVI'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 45
        Name = 'EMISS_VENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 46
        Name = 'RESP'
        DataType = ftString
        ParamType = ptInput
        Size = 70
      end
      item
        Position = 47
        Name = 'ID_FUNC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 48
        Name = 'OBS'
        DataType = ftString
        ParamType = ptInput
        Size = 300
      end
      item
        Position = 49
        Name = 'RESP_CPF'
        DataType = ftString
        ParamType = ptInput
        Size = 18
      end
      item
        Position = 50
        Name = 'RESP_RG'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 51
        Name = 'RESP_ENDERECO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 52
        Name = 'RESP_NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 53
        Name = 'RESP_BAIRRO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 54
        Name = 'RESP_CIDADE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 55
        Name = 'RESP_UF'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 56
        Name = 'INFO_INDUSTRIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 57
        Name = 'SPED'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FONE2'
        DataType = ftString
        ParamType = ptInput
        Size = 18
      end>
  end
  object CIDADE: TFDQuery
    Connection = Conexao
    Left = 520
    Top = 16
  end
  object DS_Cidade: TDataSource
    DataSet = CIDADE
    Left = 520
    Top = 72
  end
  object Query_Atendimento: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from controle_atendimentos'
      'where (cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:i) '
      '  and (cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:F)'
      '')
    Left = 704
    Top = 16
    ParamData = <
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_AtendimentoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object Query_AtendimentoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object Query_AtendimentoID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = 'ID_ATENDIMENTO'
    end
    object Query_AtendimentoATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Origin = 'ATENDENTE'
      Size = 50
    end
    object Query_AtendimentoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 18
    end
    object Query_AtendimentoID_STATUS: TIntegerField
      FieldName = 'ID_STATUS'
      Origin = 'ID_STATUS'
    end
    object Query_AtendimentoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object Query_AtendimentoALT: TStringField
      FieldName = 'ALT'
      Origin = 'ALT'
      FixedChar = True
      Size = 0
    end
    object Query_AtendimentoDEL: TStringField
      FieldName = 'DEL'
      Origin = 'DEL'
      FixedChar = True
      Size = 0
    end
    object Query_AtendimentoCAN: TStringField
      FieldName = 'CAN'
      Origin = 'CAN'
      FixedChar = True
      Size = 0
    end
    object Query_AtendimentoATE: TStringField
      FieldName = 'ATE'
      Origin = 'ATE'
      FixedChar = True
      Size = 0
    end
    object Query_AtendimentoICO_CANAL: TStringField
      FieldName = 'ICO_CANAL'
      Origin = 'ICO_CANAL'
      FixedChar = True
      Size = 0
    end
    object Query_AtendimentoCANAL: TIntegerField
      FieldName = 'CANAL'
      Origin = 'CANAL'
    end
    object Query_AtendimentoID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
      Origin = 'ID_ATENDENTE'
    end
    object Query_AtendimentoID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
      Origin = 'ID_RESPONSAVEL'
    end
    object Query_AtendimentoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_AtendimentoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 100
    end
    object Query_AtendimentoSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 30
    end
    object Query_AtendimentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object DS_Atendimento: TDataSource
    DataSet = Query_Atendimento
    Left = 704
    Top = 72
  end
  object FDTransaction1: TFDTransaction
    Options.AutoStop = False
    Connection = Conexao
    Left = 112
    Top = 296
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 1200
    Top = 152
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 1200
    Top = 208
  end
  object Proc_LancaAtende: TFDStoredProc
    CachedUpdates = True
    Connection = Conexao
    StoredProcName = 'CONTROLE_LANCA_ATENDIMENTO'
    Left = 800
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'CLI'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'FUN'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'RESP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'DESCRI'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 5
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'CANAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'CADASTRO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'PROTO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 10
        Name = 'SOLIC'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 11
        Name = 'ID_A'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object Query_ClienteBusca: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select clientes.id_cliente,clientes.email, coalesce(clientes.nom' +
        'e,clientes.nome_fantasia) as nome from clientes'
      
        'where ((clientes.ID_CLIENTE =:f) or (clientes.nome_fantasia =:f)' +
        ')')
    Left = 912
    Top = 16
    ParamData = <
      item
        Name = 'F'
        DataType = ftString
        ParamType = ptInput
        Size = 70
        Value = Null
      end>
    object Query_ClienteBuscaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_ClienteBuscaNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object Query_ClienteBuscaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  object Query_Ocorrencias: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT CONTROLE_CLI_OCORRENCIAS.*,'#39#39' AS BTN FROM CONTROLE_CLI_OC' +
        'ORRENCIAS WHERE CONTROLE_CLI_OCORRENCIAS.id_atendimento =:P')
    Left = 120
    Top = 144
    ParamData = <
      item
        Name = 'P'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Query_OcorrenciasID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = 'ID_ATENDIMENTO'
    end
    object Query_OcorrenciasSOFTWARE: TStringField
      FieldName = 'SOFTWARE'
      Origin = 'SOFTWARE'
      Size = 40
    end
    object Query_OcorrenciasDETALHE: TMemoField
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
      BlobType = ftMemo
    end
    object Query_OcorrenciasTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 12
    end
    object Query_OcorrenciasVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
    object Query_OcorrenciasDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object Query_OcorrenciasRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object Query_OcorrenciasID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_OcorrenciasBTN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BTN'
      Origin = 'BTN'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 0
    end
    object Query_OcorrenciasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object Query_OcorrenciasID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
      Origin = 'ID_RESPONSAVEL'
    end
    object Query_OcorrenciasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object DS_Query_Ocorrencia: TDataSource
    DataSet = Query_Ocorrencias
    Left = 120
    Top = 216
  end
  object Proc_LancaOcorrencia: TFDStoredProc
    Connection = Conexao
    StoredProcName = 'CONTROLE_LANCA_OCORRENCIA'
    Left = 800
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_ATEND'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'DETALHE'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 5
        Name = 'SOFTWARE'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end
      item
        Position = 6
        Name = 'CADASTRO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'ID_CLI'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'ID_RESP'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Query_ListSoftware: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      'controle_cli_software.software,'
      'MAX(controle_atualizacoes.versao)AS VERSAO,'
      'MAX(CAST(controle_atualizacoes.data AS DATE))AS ATUALIZACAO'
      'FROM controle_cli_software'
      
        'LEFT JOIN controle_atualizacoes ON controle_atualizacoes.softwar' +
        'e = controle_cli_software.software AND controle_atualizacoes.id_' +
        'cliente = controle_cli_software.id_cliente'
      'WHERE  controle_cli_software.id_cliente =:P'
      'GROUP BY  controle_cli_software.software')
    Left = 424
    Top = 144
    ParamData = <
      item
        Name = 'P'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Query_ListSoftwareSOFTWARE: TStringField
      FieldName = 'SOFTWARE'
      Origin = 'SOFTWARE'
      FixedChar = True
      Size = 18
    end
    object Query_ListSoftwareVERSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ListSoftwareATUALIZACAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ATUALIZACAO'
      Origin = 'ATUALIZACAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DS_Query_ListSoftware: TDataSource
    DataSet = Query_ListSoftware
    Left = 424
    Top = 216
  end
  object Proc_Atualiza: TFDStoredProc
    Connection = Conexao
    StoredProcName = 'CONTROLE_CLI_ATUALIZACAO'
    Left = 520
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_CLI'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'VERSAO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 4
        Name = 'SOFT'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end
      item
        Position = 5
        Name = 'ID_ATEND'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'ID_FUN'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'CADASTRO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Query_Historico: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT FIRST 200 '
      'CONTROLE_CLI_OCORRENCIAS.id_atendimento,'
      'CONTROLE_CLI_OCORRENCIAS.software,'
      'CONTROLE_CLI_OCORRENCIAS.tipo,'
      'CONTROLE_CLI_OCORRENCIAS.versao,'
      'CONTROLE_CLI_OCORRENCIAS.data_hora,'
      'CONTROLE_CLI_OCORRENCIAS.responsavel,'
      'CONTROLE_CLI_OCORRENCIAS.solicitante,'
      'cast(CONTROLE_CLI_OCORRENCIAS.detalhe as varchar(800)) detalhe,'
      
        'CONTROLE_CLI_OCORRENCIAS.responsavel FROM CONTROLE_CLI_OCORRENCI' +
        'AS'
      
        'WHERE CONTROLE_CLI_OCORRENCIAS.id_CLIENTE =:P AND CONTROLE_CLI_O' +
        'CORRENCIAS.ID_ATENDIMENTO <>:T')
    Left = 200
    Top = 144
    ParamData = <
      item
        Name = 'P'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'T'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = 'ID_ATENDIMENTO'
    end
    object StringField1: TStringField
      FieldName = 'SOFTWARE'
      Origin = 'SOFTWARE'
      Size = 40
    end
    object StringField3: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 12
    end
    object StringField4: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object StringField5: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object Query_HistoricoSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 30
    end
    object Query_HistoricoDETALHE: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 800
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object DS_Query_Historico: TDataSource
    DataSet = Query_Historico
    Left = 200
    Top = 216
  end
  object Proc_Agendar: TFDStoredProc
    Connection = Conexao
    StoredProcName = 'CONTROLE_CLI_AGENDAMENTO'
    Left = 520
    Top = 216
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'HORA'
        DataType = ftTime
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ID_CLI'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'DETALHE'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 6
        Name = 'AGENDADO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'RESPONSAVEL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'STATUS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'CADASTRO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Query_Agendamento: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CONTROLE_LISAGENDAMENTO'
      'where cast(CONTROLE_LISAGENDAMENTO.agendamento as date)>=:ini'
      'and cast(CONTROLE_LISAGENDAMENTO.AGENDAMENTO as date)<=:fim')
    Left = 912
    Top = 72
    ParamData = <
      item
        Name = 'INI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_AgendamentoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object Query_AgendamentoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object Query_AgendamentoAGENDAMENTO: TSQLTimeStampField
      FieldName = 'AGENDAMENTO'
      Origin = 'AGENDAMENTO'
    end
    object Query_AgendamentoID_STATUS: TIntegerField
      FieldName = 'ID_STATUS'
      Origin = 'ID_STATUS'
    end
    object Query_AgendamentoAGENDADO: TStringField
      FieldName = 'AGENDADO'
      Origin = 'AGENDADO'
      Size = 50
    end
    object Query_AgendamentoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object Query_AgendamentoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object Query_AgendamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 10
    end
    object Query_AgendamentoATE: TStringField
      FieldName = 'ATE'
      Origin = 'ATE'
      FixedChar = True
      Size = 0
    end
    object Query_AgendamentoCANC: TStringField
      FieldName = 'CANC'
      Origin = 'CANC'
      FixedChar = True
      Size = 0
    end
    object Query_AgendamentoVISU: TStringField
      FieldName = 'VISU'
      Origin = 'VISU'
      FixedChar = True
      Size = 0
    end
    object Query_AgendamentoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_AgendamentoDETALHE: TStringField
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
      Size = 175
    end
  end
  object DS_Agendamento: TDataSource
    DataSet = Query_Agendamento
    Left = 912
    Top = 144
  end
  object Gen: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select gen_id(controle_atendimento_id,1)from rdb$database')
    Left = 24
    Top = 144
    object GenGEN_ID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'GEN_ID'
      Origin = '"GEN_ID"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Tab_Obs: TFDTable
    BeforeOpen = Tab_ObsBeforeOpen
    BeforeInsert = Tab_ObsBeforeInsert
    AfterInsert = Tab_ObsAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'ID_CLIENTE'
    MasterSource = DS_Clientes
    MasterFields = 'ID_CLIENTE'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'CLIENTES_OBS'
    TableName = 'CLIENTES_OBS'
    Left = 424
    Top = 16
    object Tab_ObsID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Tab_ObsID_OBS: TIntegerField
      FieldName = 'ID_OBS'
      Origin = 'ID_OBS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Tab_ObsDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object Tab_ObsTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object Tab_ObsID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object Tab_ObsOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      OnGetText = Tab_ObsOBSGetText
      BlobType = ftMemo
    end
  end
  object DS_Tab_Obs: TDataSource
    DataSet = Tab_Obs
    Left = 424
    Top = 72
  end
  object Query_log: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'INSERT INTO LOG(id_log,ID_USER,DATA,HORA,PROCESSO,COMPUTADOR,tab' +
        'ela,DADOS,ID_CHAVE)'
      
        '             VALUES((select gen_id(GEN_LOG,1)from rdb$database),' +
        ' '
      
        '             :id_user,current_date, current_time,:PROC,:PC,:tabe' +
        'la,:Dados,:CH)')
    Left = 912
    Top = 216
    ParamData = <
      item
        Name = 'ID_USER'
        ParamType = ptInput
      end
      item
        Name = 'PROC'
        ParamType = ptInput
      end
      item
        Name = 'PC'
        ParamType = ptInput
      end
      item
        Name = 'TABELA'
        ParamType = ptInput
      end
      item
        Name = 'DADOS'
        ParamType = ptInput
      end
      item
        Name = 'CH'
        ParamType = ptInput
      end>
  end
  object Query_Soma: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select first 1 (select count(*) from controle_atendimentos  wher' +
        'e id_status = 0) as urgente,'
      
        '       (select count(*) from controle_atendimentos  where id_sta' +
        'tus = 1) as espera,'
      
        '       (select count(*) from controle_atendimentos  where id_sta' +
        'tus = 2) as atendimento'
      'from controle_atendimentos')
    Left = 600
    Top = 144
    object Query_SomaURGENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'URGENTE'
      Origin = 'URGENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_SomaESPERA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ESPERA'
      Origin = 'ESPERA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_SomaATENDIMENTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ATENDIMENTO'
      Origin = 'ATENDIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DS_Query_Soma: TDataSource
    DataSet = Query_Soma
    Left = 600
    Top = 216
  end
  object Query_Empresa: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select EMPRESA.smtp_endereco,'
      '       EMPRESA.smtp_usuario,'
      '       EMPRESA.smtp_senha,'
      '       EMPRESA.smtp_porta,'
      '       EMPRESA.email'
      '       from EMPRESA'
      '       where EMPRESA.id_empresa = 1')
    Left = 24
    Top = 216
    object Query_EmpresaSMTP_ENDERECO: TStringField
      FieldName = 'SMTP_ENDERECO'
      Origin = 'SMTP_ENDERECO'
      Size = 100
    end
    object Query_EmpresaSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Origin = 'SMTP_USUARIO'
      Size = 100
    end
    object Query_EmpresaSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
      Origin = 'SMTP_SENHA'
    end
    object Query_EmpresaSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
      Origin = 'SMTP_PORTA'
    end
    object Query_EmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  object Query_Cli: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select nome,id_cliente from CONTROLE_CLIENTES')
    Left = 1104
    Top = 16
    object Query_CliID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_CliNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 70
    end
  end
  object DS_Query_Cli: TDataSource
    DataSet = Query_Cli
    Left = 1104
    Top = 72
  end
  object Query_Contrato: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CONTROLE_CONTRATO'
      'where id_cliente =:f')
    Left = 600
    Top = 16
    ParamData = <
      item
        Name = 'F'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Query_ContratoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_ContratoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_ContratoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object Query_ContratoID_CENTROCUSTO: TIntegerField
      FieldName = 'ID_CENTROCUSTO'
      Origin = 'ID_CENTROCUSTO'
    end
    object Query_ContratoVISITAS: TIntegerField
      FieldName = 'VISITAS'
      Origin = 'VISITAS'
    end
    object Query_ContratoPERC_MENS: TBCDField
      FieldName = 'PERC_MENS'
      Origin = 'PERC_MENS'
      Precision = 18
      Size = 2
    end
  end
  object Query_ContratoItens: TFDQuery
    BeforeDelete = Query_ContratoItensBeforeDelete
    CachedUpdates = True
    Connection = Conexao
    SQL.Strings = (
      'select * from CONTROLE_CONTRATO_ITENS'
      'where CONTROLE_CONTRATO_ITENS.id_contrato =:f')
    Left = 320
    Top = 144
    ParamData = <
      item
        Name = 'F'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Query_ContratoItensID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object Query_ContratoItensID_ITENS: TIntegerField
      FieldName = 'ID_ITENS'
      Origin = 'ID_ITENS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_ContratoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object Query_ContratoItensVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object Query_ContratoItensN_PARCELA: TIntegerField
      FieldName = 'N_PARCELA'
      Origin = 'N_PARCELA'
    end
    object Query_ContratoItensDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
      Origin = 'DIA_VENCIMENTO'
    end
    object Query_ContratoItensID_PLANODECONTAS: TIntegerField
      FieldName = 'ID_PLANODECONTAS'
      Origin = 'ID_PLANODECONTAS'
    end
    object Query_ContratoItensID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
      Origin = 'ID_ESPECIE'
    end
  end
  object DS_ContratoItens: TDataSource
    DataSet = Query_ContratoItens
    Left = 320
    Top = 216
  end
  object DS_Contrato: TDataSource
    DataSet = Query_ContratoItens
    Left = 600
    Top = 72
  end
  object Query_Contas: TFDQuery
    CachedUpdates = True
    Connection = Conexao
    SQL.Strings = (
      'select * from contas'
      'where id_cliente =:f and ID_CONTROLELANCA =:e'
      'order by data_vencimento')
    Left = 1200
    Top = 16
    ParamData = <
      item
        Name = 'F'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'E'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_ContasID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_ContasID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object Query_ContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object Query_ContasID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_ContasDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object Query_ContasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object Query_ContasPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Origin = 'PEDIDO'
      Size = 18
    end
    object Query_ContasNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Origin = 'NOTA_FISCAL'
      Size = 18
    end
    object Query_ContasID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
      Origin = 'ID_ESPECIE'
    end
    object Query_ContasN_DOC: TStringField
      FieldName = 'N_DOC'
      Origin = 'N_DOC'
    end
    object Query_ContasPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 10
    end
    object Query_ContasID_PLANO: TIntegerField
      FieldName = 'ID_PLANO'
      Origin = 'ID_PLANO'
    end
    object Query_ContasID_MOEDA: TIntegerField
      FieldName = 'ID_MOEDA'
      Origin = 'ID_MOEDA'
    end
    object Query_ContasJUROS_ANTES: TSingleField
      FieldName = 'JUROS_ANTES'
      Origin = 'JUROS_ANTES'
    end
    object Query_ContasJUROS_DEPOIS: TSingleField
      FieldName = 'JUROS_DEPOIS'
      Origin = 'JUROS_DEPOIS'
    end
    object Query_ContasMULTA: TSingleField
      FieldName = 'MULTA'
      Origin = 'MULTA'
    end
    object Query_ContasVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Query_ContasDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = 'DATA_PAGAMENTO'
    end
    object Query_ContasVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object Query_ContasDC: TSmallintField
      FieldName = 'DC'
      Origin = 'DC'
    end
    object Query_ContasBAIXA: TSmallintField
      FieldName = 'BAIXA'
      Origin = 'BAIXA'
    end
    object Query_ContasOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'OBS'
    end
    object Query_ContasSELECIONA: TSmallintField
      FieldName = 'SELECIONA'
      Origin = 'SELECIONA'
    end
    object Query_ContasTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object Query_ContasID_CHEQUE: TIntegerField
      FieldName = 'ID_CHEQUE'
      Origin = 'ID_CHEQUE'
    end
    object Query_ContasID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Origin = 'ID_DEPTO'
    end
    object Query_ContasDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object Query_ContasID_PORTADOR: TIntegerField
      FieldName = 'ID_PORTADOR'
      Origin = 'ID_PORTADOR'
    end
    object Query_ContasAUTENTICACAO: TIntegerField
      FieldName = 'AUTENTICACAO'
      Origin = 'AUTENTICACAO'
    end
    object Query_ContasID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
      Origin = 'ID_FECHAMENTO'
    end
    object Query_ContasID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object Query_ContasID_CARTAO: TIntegerField
      FieldName = 'ID_CARTAO'
      Origin = 'ID_CARTAO'
    end
    object Query_ContasVALOR_JUROS: TBCDField
      FieldName = 'VALOR_JUROS'
      Origin = 'VALOR_JUROS'
      Precision = 18
    end
    object Query_ContasVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
    end
    object Query_ContasNEGATIVADO: TSmallintField
      FieldName = 'NEGATIVADO'
      Origin = 'NEGATIVADO'
    end
    object Query_ContasDATA_NEGATIVACAO: TDateField
      FieldName = 'DATA_NEGATIVACAO'
      Origin = 'DATA_NEGATIVACAO'
    end
    object Query_ContasAGENDADO: TSmallintField
      FieldName = 'AGENDADO'
      Origin = 'AGENDADO'
    end
    object Query_ContasNOMINAL: TSmallintField
      FieldName = 'NOMINAL'
      Origin = 'NOMINAL'
    end
    object Query_ContasDADOS_NOMINAL: TStringField
      FieldName = 'DADOS_NOMINAL'
      Origin = 'DADOS_NOMINAL'
      Size = 50
    end
    object Query_ContasDATA_COMUNICACAO: TDateField
      FieldName = 'DATA_COMUNICACAO'
      Origin = 'DATA_COMUNICACAO'
    end
    object Query_ContasDATA_AGENDAMENTO: TDateField
      FieldName = 'DATA_AGENDAMENTO'
      Origin = 'DATA_AGENDAMENTO'
    end
    object Query_ContasSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 3
    end
    object Query_ContasDETALHADO: TSmallintField
      FieldName = 'DETALHADO'
      Origin = 'DETALHADO'
    end
    object Query_ContasID_LIQUIDA_LOTE: TIntegerField
      FieldName = 'ID_LIQUIDA_LOTE'
      Origin = 'ID_LIQUIDA_LOTE'
    end
    object Query_ContasMOVIMENTO: TSmallintField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
    end
    object Query_ContasID_NEGOCIACAO: TIntegerField
      FieldName = 'ID_NEGOCIACAO'
      Origin = 'ID_NEGOCIACAO'
    end
    object Query_ContasBAIXAR: TSmallintField
      FieldName = 'BAIXAR'
      Origin = 'BAIXAR'
    end
    object Query_ContasID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
      Origin = 'ID_PROPRIEDADE'
    end
    object Query_ContasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object Query_ContasTIPO_AUT: TSmallintField
      FieldName = 'TIPO_AUT'
      Origin = 'TIPO_AUT'
    end
    object Query_ContasID_CC: TIntegerField
      FieldName = 'ID_CC'
      Origin = 'ID_CC'
    end
    object Query_ContasID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
      Origin = 'ID_CONVENIO'
    end
    object Query_ContasID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = 'ID_CAIXA'
    end
    object Query_ContasID_MOVIMENTO: TIntegerField
      FieldName = 'ID_MOVIMENTO'
      Origin = 'ID_MOVIMENTO'
    end
    object Query_ContasID_ENTREGA: TIntegerField
      FieldName = 'ID_ENTREGA'
      Origin = 'ID_ENTREGA'
    end
    object Query_ContasNOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
      Origin = 'NOSSO_NUMERO'
    end
    object Query_ContasID_CEDENTE: TIntegerField
      FieldName = 'ID_CEDENTE'
      Origin = 'ID_CEDENTE'
    end
    object Query_ContasDATA_BAIXAR: TDateField
      FieldName = 'DATA_BAIXAR'
      Origin = 'DATA_BAIXAR'
    end
    object Query_ContasTIPO_BAIXA: TSmallintField
      FieldName = 'TIPO_BAIXA'
      Origin = 'TIPO_BAIXA'
    end
    object Query_ContasVALOR_NEGOCIADO: TBCDField
      FieldName = 'VALOR_NEGOCIADO'
      Origin = 'VALOR_NEGOCIADO'
      Precision = 18
      Size = 2
    end
    object Query_ContasCORRECAO_SERASA: TSmallintField
      FieldName = 'CORRECAO_SERASA'
      Origin = 'CORRECAO_SERASA'
    end
    object Query_ContasID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
    end
    object Query_ContasDAV: TIntegerField
      FieldName = 'DAV'
      Origin = 'DAV'
    end
    object Query_ContasNPV: TIntegerField
      FieldName = 'NPV'
      Origin = 'NPV'
    end
    object Query_ContasTIPO_PEDIDO: TSmallintField
      FieldName = 'TIPO_PEDIDO'
      Origin = 'TIPO_PEDIDO'
    end
    object Query_ContasID_USUARIO_BAIXA: TIntegerField
      FieldName = 'ID_USUARIO_BAIXA'
      Origin = 'ID_USUARIO_BAIXA'
    end
    object Query_ContasID_EMPRESA_BAIXA: TIntegerField
      FieldName = 'ID_EMPRESA_BAIXA'
      Origin = 'ID_EMPRESA_BAIXA'
    end
    object Query_ContasID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object Query_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
    object Query_ContasSALDO_MOV: TBCDField
      FieldName = 'SALDO_MOV'
      Origin = 'SALDO_MOV'
      Precision = 18
      Size = 2
    end
    object Query_ContasNOTA_FISCAL_SERV: TStringField
      FieldName = 'NOTA_FISCAL_SERV'
      Origin = 'NOTA_FISCAL_SERV'
      Size = 18
    end
    object Query_ContasSTATUS_ANTERIOR: TSmallintField
      FieldName = 'STATUS_ANTERIOR'
      Origin = 'STATUS_ANTERIOR'
    end
    object Query_ContasID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
      Origin = 'ID_CUPOM'
    end
    object Query_ContasID_ECF: TIntegerField
      FieldName = 'ID_ECF'
      Origin = 'ID_ECF'
    end
    object Query_ContasCOO: TStringField
      FieldName = 'COO'
      Origin = 'COO'
      Size = 6
    end
    object Query_ContasCCF: TStringField
      FieldName = 'CCF'
      Origin = 'CCF'
      Size = 6
    end
    object Query_ContasGNF: TStringField
      FieldName = 'GNF'
      Origin = 'GNF'
      Size = 6
    end
    object Query_ContasCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CODE'
      Size = 32
    end
    object Query_ContasCRZ: TStringField
      FieldName = 'CRZ'
      Origin = 'CRZ'
      Size = 6
    end
    object Query_ContasMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Origin = 'MODELO_NF'
      Size = 2
    end
    object Query_ContasREMESSA: TSmallintField
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
    end
    object Query_ContasID_LAN_CHEQUE: TIntegerField
      FieldName = 'ID_LAN_CHEQUE'
      Origin = 'ID_LAN_CHEQUE'
    end
    object Query_ContasVALOR_SALDO: TBCDField
      FieldName = 'VALOR_SALDO'
      Origin = 'VALOR_SALDO'
      Precision = 18
      Size = 2
    end
    object Query_ContasREIMPRESSO: TSmallintField
      FieldName = 'REIMPRESSO'
      Origin = 'REIMPRESSO'
    end
    object Query_ContasDIAS_CARENCIA: TSmallintField
      FieldName = 'DIAS_CARENCIA'
      Origin = 'DIAS_CARENCIA'
    end
    object Query_ContasDESCONTO_VALOR: TBCDField
      FieldName = 'DESCONTO_VALOR'
      Origin = 'DESCONTO_VALOR'
      Precision = 18
      Size = 2
    end
    object Query_ContasDESCONTO_DATA: TDateField
      FieldName = 'DESCONTO_DATA'
      Origin = 'DESCONTO_DATA'
    end
    object Query_ContasNFCE_NUMERO: TStringField
      FieldName = 'NFCE_NUMERO'
      Origin = 'NFCE_NUMERO'
      Size = 18
    end
    object Query_ContasID_OPERADORA: TIntegerField
      FieldName = 'ID_OPERADORA'
      Origin = 'ID_OPERADORA'
    end
    object Query_ContasID_BANDEIRA: TIntegerField
      FieldName = 'ID_BANDEIRA'
      Origin = 'ID_BANDEIRA'
    end
    object Query_ContasDATA_BOLETO: TDateField
      FieldName = 'DATA_BOLETO'
      Origin = 'DATA_BOLETO'
    end
    object Query_ContasINTEGRA_BOLETO: TStringField
      FieldName = 'INTEGRA_BOLETO'
      Origin = 'INTEGRA_BOLETO'
    end
    object Query_ContasID_BAIXA: TIntegerField
      FieldName = 'ID_BAIXA'
      Origin = 'ID_BAIXA'
    end
    object Query_ContasID_MOBILE: TIntegerField
      FieldName = 'ID_MOBILE'
      Origin = 'ID_MOBILE'
    end
    object Query_ContasBOLETO_REMESSA: TIntegerField
      FieldName = 'BOLETO_REMESSA'
      Origin = 'BOLETO_REMESSA'
    end
    object Query_ContasBOLETO_LOTE: TIntegerField
      FieldName = 'BOLETO_LOTE'
      Origin = 'BOLETO_LOTE'
    end
    object Query_ContasBOLETO_STATUS: TSmallintField
      FieldName = 'BOLETO_STATUS'
      Origin = 'BOLETO_STATUS'
    end
    object Query_ContasBOLETO_BAIXA: TSmallintField
      FieldName = 'BOLETO_BAIXA'
      Origin = 'BOLETO_BAIXA'
    end
    object Query_ContasCRD_VALORU: TBCDField
      FieldName = 'CRD_VALORU'
      Origin = 'CRD_VALORU'
      Precision = 18
      Size = 2
    end
    object Query_ContasCRD_STATUS: TSmallintField
      FieldName = 'CRD_STATUS'
      Origin = 'CRD_STATUS'
    end
    object Query_ContasID_CONTAO: TIntegerField
      FieldName = 'ID_CONTAO'
      Origin = 'ID_CONTAO'
    end
    object Query_ContasID_CONTROLELANCA: TIntegerField
      FieldName = 'ID_CONTROLELANCA'
      Origin = 'ID_CONTROLELANCA'
    end
  end
  object DS_Query_Contas: TDataSource
    DataSet = Query_Contas
    Left = 1200
    Top = 72
  end
  object Query_Controle_contrato: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select controle_contrato.id_contrato,'
      '       controle_contrato.id_cliente,'
      '       clientes.nome,'
      '       controle_contrato.data_emissao,'
      '       controle_contrato.PERC_MENS,'
      '       '#39#39' as button'
      '       from controle_contrato'
      
        '       left join clientes on (clientes.id_cliente = controle_con' +
        'trato.id_cliente)')
    Left = 1000
    Top = 144
    object Query_Controle_contratoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_Controle_contratoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_Controle_contratoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object Query_Controle_contratoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object Query_Controle_contratoBUTTON: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BUTTON'
      Origin = 'BUTTON'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 0
    end
    object Query_Controle_contratoPERC_MENS: TBCDField
      FieldName = 'PERC_MENS'
      Origin = 'PERC_MENS'
      Precision = 18
      Size = 2
    end
  end
  object DS_Controle_contrato: TDataSource
    DataSet = Query_Controle_contrato
    Left = 1008
    Top = 216
  end
  object Query_Controle_ContratoItens: TFDQuery
    BeforeDelete = Query_ContratoItensBeforeDelete
    CachedUpdates = True
    Connection = Conexao
    SQL.Strings = (
      'select CONTROLE_CONTRATO_ITENS.*,'
      '       '#39#39' as button'
      '       from CONTROLE_CONTRATO_ITENS'
      'where CONTROLE_CONTRATO_ITENS.id_contrato =:f')
    Left = 1104
    Top = 144
    ParamData = <
      item
        Name = 'F'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Query_Controle_ContratoItensID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
    end
    object Query_Controle_ContratoItensID_ITENS: TIntegerField
      FieldName = 'ID_ITENS'
      Origin = 'ID_ITENS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_Controle_ContratoItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object Query_Controle_ContratoItensVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object Query_Controle_ContratoItensN_PARCELA: TIntegerField
      FieldName = 'N_PARCELA'
      Origin = 'N_PARCELA'
    end
    object Query_Controle_ContratoItensDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
      Origin = 'DIA_VENCIMENTO'
    end
    object Query_Controle_ContratoItensID_PLANODECONTAS: TIntegerField
      FieldName = 'ID_PLANODECONTAS'
      Origin = 'ID_PLANODECONTAS'
    end
    object Query_Controle_ContratoItensID_ESPECIE: TIntegerField
      FieldName = 'ID_ESPECIE'
      Origin = 'ID_ESPECIE'
    end
    object Query_Controle_ContratoItensBUTTON: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BUTTON'
      Origin = 'BUTTON'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 0
    end
  end
  object DS_Query_Controle_ContratoItens: TDataSource
    DataSet = Query_Controle_ContratoItens
    Left = 1104
    Top = 216
  end
  object Query_Config_Financeiro: TFDQuery
    CachedUpdates = True
    Connection = Conexao
    SQL.Strings = (
      'select * from controle_config')
    Left = 704
    Top = 144
    object Query_Config_FinanceiroID_PLANO_IMPLANTA: TIntegerField
      FieldName = 'ID_PLANO_IMPLANTA'
      Origin = 'ID_PLANO_IMPLANTA'
    end
    object Query_Config_FinanceiroID_PLANO_MANUTENCAO: TIntegerField
      FieldName = 'ID_PLANO_MANUTENCAO'
      Origin = 'ID_PLANO_MANUTENCAO'
    end
    object Query_Config_FinanceiroID_PLANO_MODULOS: TIntegerField
      FieldName = 'ID_PLANO_MODULOS'
      Origin = 'ID_PLANO_MODULOS'
    end
    object Query_Config_FinanceiroID_PLANO_VISITAS: TIntegerField
      FieldName = 'ID_PLANO_VISITAS'
      Origin = 'ID_PLANO_VISITAS'
    end
    object Query_Config_FinanceiroID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
      Origin = 'ID_CENTRO_CUSTO'
    end
    object Query_Config_FinanceiroVERSAO_INFO: TStringField
      FieldName = 'VERSAO_INFO'
      Size = 15
    end
  end
  object DS_Query_Config_Financeiro: TDataSource
    DataSet = Query_Config_Financeiro
    Left = 704
    Top = 216
  end
  object Imprimi_Contrato: TFDQuery
    OnCalcFields = Imprimi_ContratoCalcFields
    Connection = Conexao
    SQL.Strings = (
      'select controle_contrato.id_contrato,'
      '       clientes.nome as cliente,'
      '       clientes_dados.endereco,'
      '       clientes_dados.numero,'
      '       clientes_dados.bairro,'
      '       clientes_dados.cep,'
      '       regioes.cidade,'
      '       regioes.uf,'
      '       clientes.cpf_cnpj as cnpj,'
      '       clientes.ie,'
      
        '       (case when controle_software.silenus_pdv = 1 then '#39'(x)PDV' +
        #39
      '             else'
      '             '#39'( )PDV'#39' end)as pdv,'
      
        '       (case when controle_software.coliseu_gestao = 1 then '#39'(x)' +
        'COLISEU GESTAO'#39
      '             else'
      '             '#39'( )COLISEU GESTAO;'#39' end) as coliseu,'
      
        '       (case when controle_software.INFO_INDUSTRIA = 1 then '#39'(x)' +
        'INFO INDUSTRIA'#39
      '             else'
      '             '#39'( )INFO_INDUSTRIA;'#39' end)as industria,'
      
        '       (case when controle_SOFTWARE.coliseu_graos = 1  then '#39'(x)' +
        'INFO GR'#195'OS'#39
      '             else'
      '             '#39'( )INFO GR'#195'OS'#39' end)as graos,'
      
        '       (case when controle_software.coliseu_web = 1  then '#39'(x)CO' +
        'LISEU WEB'#39
      '             else'
      '             '#39'( )COLISEU WEB;'#39' end)as coliseu_web,'
      '       (case when controle_modulos.nfe = 1  then '#39'(x)NFe;'#39
      '             else'
      '             '#39'( )NFe;'#39' end) as NFE,'
      '       (case when controle_modulos.nfce = 1 then '#39'(x)NCe;'#39
      '             else'
      '             '#39'( )NCe;'#39' end)as NFCE,'
      '       (case when controle_modulos.nfse = 1 then '#39'(x)NFSe;'#39
      '             else'
      '             '#39'( )NFSe;'#39' end) AS NFSE,'
      '       (case when controle_modulos.mdfe = 1 then '#39'(x)MDFe;'#39
      '             else'
      '             '#39'( )MDFe;'#39' end)AS MDFE,'
      '       (case when controle_modulos.cte = 1  then '#39'(x)CTe;'#39
      '             else'
      '             '#39'( )CTe;'#39' end)AS CTE,'
      
        '       (case when controle_modulos.app_sales = 1 then '#39'(x)APP SA' +
        'LES;'#39
      '             else'
      '             '#39'( )APP SALES;'#39' end)AS APP_SALES,'
      
        '       (case when controle_modulos.app_dash = 1  then '#39'(x)APP DA' +
        'RSH;'#39
      '             else'
      '             '#39'( )APP DARSH;'#39' end)AS APP_DARSH,'
      '       (case when controle_modulos.sped = 1  then '#39'(x)SPED;'#39
      '             else'
      '             '#39'( )SPED;'#39' end)AS SPED,'
      
        '       cast((select FIRST 1 controle_contrato_itens.valor from c' +
        'ontrole_contrato_itens  WHERE (controle_contrato_itens.id_contra' +
        'to =:C) AND (controle_contrato_itens.descricao ='#39'IMPLANTA'#199#195'O'#39'))a' +
        's decimal(15,2))  as implantacao,'
      
        '       cast((select FIRST 1 (controle_contrato_itens.valor / con' +
        'trole_contrato_itens.n_parcela) from controle_contrato_itens WHE' +
        'RE (controle_contrato_itens.id_contrato =:C) AND (controle_contr' +
        'ato_itens.descricao ='#39'MANUTEN'#199#195'O'#39'))as decimal(15,2)) AS MANUTENC' +
        'AO,'
      
        '       (select FIRST 1 (controle_contrato_itens.PERC_SALARIO) fr' +
        'om controle_contrato_itens WHERE (controle_contrato_itens.id_con' +
        'trato =:C) AND (controle_contrato_itens.descricao ='#39'MANUTEN'#199#195'O'#39')' +
        ') AS perc_manu ,'
      
        '       (select FIRST 1 (contas.data_vencimento-contas.data_emiss' +
        'ao) from contas join controle_contrato_itens on (controle_contra' +
        'to_itens.id_itens = contas.id_controlelanca) WHERE (cast(contas.' +
        'n_doc as integer) =controle_contrato.id_contrato) AND (controle_' +
        'contrato_itens.descricao ='#39'MANUTEN'#199#195'O'#39'))AS CARENCIA,'
      
        '       (select FIRST 1 (controle_contrato_itens.n_parcela) from ' +
        'controle_contrato_itens WHERE (controle_contrato_itens.id_contra' +
        'to =:C) AND (controle_contrato_itens.descricao ='#39'MANUTEN'#199#195'O'#39')),'
      '       controle_contrato.data_emissao as data,'
      '       CLIENTES.responsavel_empresa,'
      '       clientes.reponsavel_endereco RESP_END,'
      '       coalesce(reponsavel_numero,'#39'S/N'#39') AS RESP_NUMERO,'
      '       clientes.reponsavel_bairro AS RESP_BAIRRO,'
      
        '       clientes.reponsavel_cidade||'#39'-'#39'||clientes.reponsavel_uf a' +
        's RESP_CID,'
      '      clientes.reponsavel_cpf as resp_cpf,'
      '      clientes.responsavel_rg as resp_rg,'
      '      controle_contrato.PERC_MENS'
      '       from  controle_contrato'
      
        '       left join clientes on (clientes.id_cliente = controle_con' +
        'trato.id_cliente)'
      
        '       left join clientes_dados on (clientes_dados.id_cliente = ' +
        'controle_contrato.id_cliente) '
      
        '       left join regioes on (regioes.id_regiao = clientes.id_reg' +
        'iao)'
      
        '       left join controle_software on (controle_software.id_clie' +
        'nte =  controle_contrato.id_cliente)'
      
        '       left join controle_modulos on (controle_modulos.id_client' +
        'e = controle_contrato.id_cliente)')
    Left = 800
    Top = 144
    ParamData = <
      item
        Name = 'C'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Imprimi_ContratoID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = 'ID_CONTRATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Imprimi_ContratoCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object Imprimi_ContratoENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Imprimi_ContratoNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object Imprimi_ContratoBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object Imprimi_ContratoCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object Imprimi_ContratoCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Imprimi_ContratoUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object Imprimi_ContratoCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object Imprimi_ContratoIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE'
      Origin = 'IE'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
    object Imprimi_ContratoPDV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PDV'
      Origin = 'PDV'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object Imprimi_ContratoCOLISEU: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COLISEU'
      Origin = 'COLISEU'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 25
    end
    object Imprimi_ContratoINDUSTRIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INDUSTRIA'
      Origin = 'INDUSTRIA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoGRAOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRAOS'
      Origin = 'GRAOS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoCOLISEU_WEB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COLISEU_WEB'
      Origin = 'COLISEU_WEB'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoNFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFE'
      Origin = 'NFE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoNFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFCE'
      Origin = 'NFCE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoNFSE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFSE'
      Origin = 'NFSE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoMDFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MDFE'
      Origin = 'MDFE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoCTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CTE'
      Origin = 'CTE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoAPP_SALES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APP_SALES'
      Origin = 'APP_SALES'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoAPP_DARSH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APP_DARSH'
      Origin = 'APP_DARSH'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoSPED: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SPED'
      Origin = 'SPED'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object Imprimi_ContratoIMPLANTACAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMPLANTACAO'
      Origin = 'IMPLANTACAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Imprimi_ContratoMANUTENCAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MANUTENCAO'
      Origin = 'MANUTENCAO'
      ProviderFlags = []
      ReadOnly = True
      EditFormat = 'R$###.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object Imprimi_ContratoPERC_MANU: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_MANU'
      Origin = 'PERC_SALARIO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Imprimi_ContratoCARENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CARENCIA'
      Origin = 'CARENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Imprimi_ContratoN_PARCELA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_PARCELA'
      Origin = 'N_PARCELA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Imprimi_ContratoDATA: TDateField
      FieldName = 'DATA'
      Origin = 'DATA_EMISSAO'
    end
    object Imprimi_ContratoIMPLANT_ESTENSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'IMPLANT_ESTENSO'
      Size = 100
      Calculated = True
    end
    object Imprimi_Contratoemissaocont: TStringField
      FieldKind = fkCalculated
      FieldName = 'emissaocont'
      Size = 100
      Calculated = True
    end
    object Imprimi_ContratoRESPONSAVEL_EMPRESA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESPONSAVEL_EMPRESA'
      Origin = 'RESPONSAVEL_EMPRESA'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object Imprimi_ContratoRESP_END: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESP_END'
      Origin = 'REPONSAVEL_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Imprimi_ContratoRESP_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESP_NUMERO'
      Origin = 'RESP_NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object Imprimi_ContratoRESP_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESP_BAIRRO'
      Origin = 'REPONSAVEL_BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object Imprimi_ContratoRESP_CID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESP_CID'
      Origin = 'RESP_CID'
      ProviderFlags = []
      ReadOnly = True
      Size = 53
    end
    object Imprimi_ContratoRESP_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESP_CPF'
      Origin = 'REPONSAVEL_CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
    object Imprimi_ContratoRESP_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESP_RG'
      Origin = 'RESPONSAVEL_RG'
      ProviderFlags = []
      ReadOnly = True
    end
    object Imprimi_ContratoPERC_MENS: TBCDField
      FieldName = 'PERC_MENS'
      Origin = 'PERC_MENS'
      Precision = 18
      Size = 2
    end
    object Imprimi_ContratoPERC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PERC'
      Size = 30
      Calculated = True
    end
  end
  object DS_imprimi_contrato: TDataSource
    DataSet = Imprimi_Contrato
    Left = 808
    Top = 216
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 24
    Top = 296
  end
  object Proc_Lanca_Contas: TFDStoredProc
    Connection = Conexao
    StoredProcName = 'CONTROLE_LANCA_CONTAS'
    Left = 198
    Top = 295
    ParamData = <
      item
        Position = 1
        Name = 'ID_CONTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_CONTROLELANCA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 70
      end
      item
        Position = 4
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'EMISSAO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'VENCIMENTO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'N_DOC'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 8
        Name = 'ID_DEPTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'ID_PLANO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'ID_PORTADOR'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'TIPO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'PARCELA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 13
        Name = 'OBS'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 14
        Name = 'VALOR'
        DataType = ftFMTBcd
        Precision = 18
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 15
        Name = 'DC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 16
        Name = 'BAIXA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'CADASTRO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Query_App: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CONTROLE_APP')
    Left = 296
    Top = 288
    object Query_AppID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_AppNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
    end
    object Query_AppDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      BlobType = ftMemo
    end
    object Query_AppNOME_PROJETO: TStringField
      FieldName = 'NOME_PROJETO'
      Origin = 'NOME_PROJETO'
      Size = 50
    end
  end
  object DS_Query_App: TDataSource
    DataSet = Query_App
    Left = 304
    Top = 352
  end
  object Query_Funcionario: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select funcionarios.id_funcionario,funcionarios.nome from funcio' +
        'narios'
      'where funcionarios.status=1 ORDER BY funcionarios.nome')
    Left = 424
    Top = 288
    object Query_FuncionarioID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = 'ID_FUNCIONARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_FuncionarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
  end
  object DS_Query_Funcionario: TDataSource
    DataSet = Query_Funcionario
    Left = 416
    Top = 352
  end
end
