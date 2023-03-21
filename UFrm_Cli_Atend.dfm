object Frm_Cli_Atend: TFrm_Cli_Atend
  Left = 0
  Top = 0
  Caption = 'Frm_Cli_Atend'
  ClientHeight = 1057
  ClientWidth = 1727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1727
    Height = 81
    Align = alTop
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    object Label3: TLabel
      Left = 25
      Top = 31
      Width = 49
      Height = 19
      Caption = 'Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 207
      Top = 31
      Width = 8
      Height = 19
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 80
      Top = 31
      Width = 121
      Height = 21
      EditType = etDate
      FlatButtonColor = clWhite
      FlatButtons = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameHotStyle = fsNone
      FrameStyle = fsLowered
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 221
      Top = 31
      Width = 121
      Height = 21
      EditType = etDate
      FlatButtonColor = clWhite
      FlatButtons = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FrameHotStyle = fsNone
      FrameStyle = fsLowered
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 1
    end
    object RzBitBtn1: TRzBitBtn
      Left = 358
      Top = 26
      Width = 62
      Height = 29
      FrameColor = 10179840
      Caption = 'Filtrar'
      Color = 10179840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HighlightColor = 10179840
      HotTrack = True
      HotTrackColor = 10179840
      LightTextStyle = True
      ParentFont = False
      TextShadowColor = clWhite
      TextShadowDepth = 0
      TabOrder = 2
      ThemeAware = False
      OnClick = RzBitBtn1Click
      ImageIndex = 5
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 81
    Width = 1727
    Height = 976
    Align = alClient
    AllowDelete = False
    AllowInsert = False
    Color = clWhite
    DataSource = DS_Query_atend
    PanelBorder = gbNone
    PanelHeight = 81
    PanelWidth = 1710
    ParentColor = False
    TabOrder = 1
    RowCount = 12
    SelectedColor = clActiveCaption
    OnPaintPanel = DBCtrlGrid1PaintPanel
    ExplicitTop = 87
    object Label4: TLabel
      Left = 1043
      Top = 5
      Width = 49
      Height = 13
      Caption = 'SOFTWARE'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 521
      Top = 5
      Width = 52
      Height = 13
      Caption = 'DESCRICAO'
      FocusControl = cxDBTextEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 11
      Top = 5
      Width = 21
      Height = 13
      Caption = 'TIPO'
      FocusControl = cxDBTextEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 266
      Top = 5
      Width = 56
      Height = 13
      Caption = 'DATA_HORA'
      FocusControl = cxDBDateEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 784
      Top = 5
      Width = 64
      Height = 13
      Caption = 'RESPONSAVEL'
      FocusControl = cxDBTextEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 391
      Top = 5
      Width = 57
      Height = 13
      Caption = 'SOLICITANTE'
      FocusControl = cxDBTextEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 911
      Top = 5
      Width = 55
      Height = 13
      Caption = 'FALOU COM'
      FocusControl = cxDBTextEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 138
      Top = 5
      Width = 56
      Height = 13
      Caption = 'PROTOCOLO'
      FocusControl = cxDBTextEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDBLabel1: TRzDBLabel
      Left = 16
      Top = 48
      Width = 209
      Height = 17
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      DataField = 'STATUS'
      DataSource = DS_Query_atend
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 1043
      Top = 20
      DataBinding.DataField = 'SOFTWARE'
      DataBinding.DataSource = DS_Query_atend
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = 15788771
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 158
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 521
      Top = 20
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = DS_Query_atend
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = 15788771
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 257
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 11
      Top = 20
      DataBinding.DataField = 'TIPO'
      DataBinding.DataSource = DS_Query_atend
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = 15788771
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 265
      Top = 20
      DataBinding.DataField = 'DATA_HORA'
      DataBinding.DataSource = DS_Query_atend
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = 15788771
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 123
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 784
      Top = 20
      DataBinding.DataField = 'ATE_RESPONSAVEL'
      DataBinding.DataSource = DS_Query_atend
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = 15788771
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 394
      Top = 20
      DataBinding.DataField = 'SOLICITANTE'
      DataBinding.DataSource = DS_Query_atend
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = 15788771
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 916
      Top = 20
      DataBinding.DataField = 'SOLICITANTE_1'
      DataBinding.DataSource = DS_Query_atend
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = 15788771
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 138
      Top = 20
      DataBinding.DataField = 'PROTOCOLO'
      DataBinding.DataSource = DS_Query_atend
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = 15788771
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo
      Left = 1207
      Top = 0
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataBinding.DataField = 'DETALHE'
      DataBinding.DataSource = DS_Query_atend
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.BorderStyle = ebsNone
      Style.Color = 15788771
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 81
      Width = 503
    end
  end
  object Query_atend: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select controle_cli_ocorrencias.*,'
      '       controle_atendimentos.id_status,'
      '       controle_atendimentos.status,'
      '       controle_atendimentos.solicitante,'
      '       controle_atendimentos.protocolo,'
      
        '       coalesce(controle_cli_ocorrencias.responsavel,controle_at' +
        'endimentos.responsavel) as ate_responsavel,'
      
        '       (select clientes.nome from clientes where clientes.id_cli' +
        'ente = controle_cli_ocorrencias.id_cliente)as cliente'
      '       from controle_cli_ocorrencias'
      
        '       left join controle_atendimentos on (controle_atendimentos' +
        '.id_atendimento = controle_cli_ocorrencias.id_atendimento)'
      
        'where controle_cli_ocorrencias.id_cliente =:c and ((cast(control' +
        'e_cli_ocorrencias.data_hora as date)>=:i) and (cast(controle_cli' +
        '_ocorrencias.data_hora as date)<=:f))'
      'ORDER BY controle_cli_ocorrencias.DATA_HORA DESC')
    Left = 1281
    Top = 164
    ParamData = <
      item
        Name = 'C'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_atendID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object Query_atendID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = 'ID_ATENDIMENTO'
    end
    object Query_atendSOFTWARE: TStringField
      FieldName = 'SOFTWARE'
      Origin = 'SOFTWARE'
      Size = 40
    end
    object Query_atendDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object Query_atendDETALHE: TMemoField
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
      BlobType = ftMemo
    end
    object Query_atendTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 11
    end
    object Query_atendVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
    object Query_atendDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object Query_atendRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object Query_atendID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
      Origin = 'ID_RESPONSAVEL'
    end
    object Query_atendID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_atendSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 30
    end
    object Query_atendID_STATUS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_STATUS'
      Origin = 'ID_STATUS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_atendSOLICITANTE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOLICITANTE_1'
      Origin = 'SOLICITANTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object Query_atendCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 121
    end
    object Query_atendPROTOCOLO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object Query_atendATE_RESPONSAVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATE_RESPONSAVEL'
      Origin = 'ATE_RESPONSAVEL'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Query_atendSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 14
    end
  end
  object DS_Query_atend: TDataSource
    DataSet = Query_atend
    Left = 1169
    Top = 172
  end
  object Query_Ocorrencia: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM CONTROLE_CLI_OCORRENCIAS')
    Left = 1281
    Top = 260
    object Query_OcorrenciaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object Query_OcorrenciaID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = 'ID_ATENDIMENTO'
    end
    object Query_OcorrenciaSOFTWARE: TStringField
      FieldName = 'SOFTWARE'
      Origin = 'SOFTWARE'
      Size = 40
    end
    object Query_OcorrenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object Query_OcorrenciaDETALHE: TMemoField
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
      BlobType = ftMemo
    end
    object Query_OcorrenciaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 12
    end
    object Query_OcorrenciaVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'VERSAO'
    end
    object Query_OcorrenciaDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object Query_OcorrenciaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object Query_OcorrenciaID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
      Origin = 'ID_RESPONSAVEL'
    end
    object Query_OcorrenciaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_OcorrenciaSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 30
    end
  end
  object DS_Query_Ocorrencia: TDataSource
    DataSet = Query_Ocorrencia
    Left = 1169
    Top = 268
  end
end
