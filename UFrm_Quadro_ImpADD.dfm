object Frm_Quadro_ImpADD: TFrm_Quadro_ImpADD
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  ClientHeight = 563
  ClientWidth = 985
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefault
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel10: TPanel
    Left = 0
    Top = 518
    Width = 985
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel10'
    Color = 5855577
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object RzBitBtn2: TRzBitBtn
      AlignWithMargins = True
      Left = 826
      Top = 5
      Height = 35
      Cursor = crHandPoint
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      LightTextStyle = True
      ParentFont = False
      TabOrder = 0
      ThemeAware = False
      OnClick = RzBitBtn2Click
    end
    object RzBitBtn3: TRzBitBtn
      AlignWithMargins = True
      Left = 907
      Top = 5
      Height = 35
      Cursor = crHandPoint
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      LightTextStyle = True
      ParentFont = False
      TabOrder = 1
      ThemeAware = False
      OnClick = RzBitBtn3Click
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 357
    Width = 979
    Height = 158
    Align = alClient
    TabOrder = 1
    object RzGroupBox3: TRzGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 971
      Height = 150
      Align = alClient
      BorderColor = clWhite
      Caption = 'MODO DE TRABALHO'
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -13
      CaptionFont.Name = 'Calibri'
      CaptionFont.Style = [fsBold]
      GroupStyle = gsUnderline
      TabOrder = 0
      Transparent = True
      object CheckBox15: TCheckBox
        Left = 32
        Top = 34
        Width = 233
        Height = 17
        Caption = 'CONTROLE DE ESTOQUE POR GRADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox8Click
      end
      object CheckBox16: TCheckBox
        Left = 32
        Top = 50
        Width = 273
        Height = 34
        Caption = 'CONTROLE DE ESTOQUE POR DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WordWrap = True
        OnClick = CheckBox8Click
      end
      object CheckBox17: TCheckBox
        Left = 32
        Top = 81
        Width = 161
        Height = 17
        Caption = 'CONTROLE DE ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object CheckBox20: TCheckBox
        Left = 32
        Top = 104
        Width = 130
        Height = 17
        Caption = 'BOLETO BANCARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox13Click
      end
      object CheckBox29: TCheckBox
        Left = 341
        Top = 34
        Width = 97
        Height = 17
        Caption = 'PROPRIEDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox8Click
      end
      object CheckBox30: TCheckBox
        Left = 340
        Top = 58
        Width = 145
        Height = 17
        Caption = 'CONDICIONAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox8Click
      end
      object CheckBox31: TCheckBox
        Left = 340
        Top = 81
        Width = 129
        Height = 17
        Caption = 'ORDEM DE SERVI'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object RadioGroup1: TRadioGroup
        Left = 585
        Top = 26
        Width = 207
        Height = 31
        Caption = 'Baixa de Estoque pela Entrega'
        Color = clWhite
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ItemIndex = 0
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
      object RadioGroup2: TRadioGroup
        Left = 585
        Top = 61
        Width = 207
        Height = 43
        Caption = 'Tipo de Faturamento PDV'
        Color = clWhite
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ItemIndex = 0
        Items.Strings = (
          'FRENTE DE CAIXA'
          'ATENDIMENTO')
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object RadioGroup3: TRadioGroup
        Left = 585
        Top = 108
        Width = 207
        Height = 34
        Caption = 'Presta'#231#227'o de Servi'#231'o'
        Color = clWhite
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsItalic]
        ItemIndex = 0
        Items.Strings = (
          'Sim'
          'N'#227'o')
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 9
      end
      object CheckBox18: TCheckBox
        Left = 340
        Top = 104
        Width = 129
        Height = 17
        Caption = 'LOTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 177
    Width = 985
    Height = 177
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel4'
    ShowCaption = False
    TabOrder = 2
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 389
      Height = 171
      Align = alLeft
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 0
      object RzGroupBox2: TRzGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 379
        Height = 161
        Align = alClient
        Caption = 'SOFTWARE A SER INSTALADOS'
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -13
        CaptionFont.Name = 'Calibri'
        CaptionFont.Style = [fsBold]
        GroupStyle = gsUnderline
        TabOrder = 0
        Transparent = True
        object CheckBox8: TCheckBox
          Left = 24
          Top = 32
          Width = 146
          Height = 17
          Caption = 'COLISEU GEST'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = CheckBox8Click
        end
        object CheckBox9: TCheckBox
          Left = 24
          Top = 56
          Width = 106
          Height = 17
          Caption = 'COLISEU FISCAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = CheckBox9Click
        end
        object CheckBox10: TCheckBox
          Left = 24
          Top = 79
          Width = 97
          Height = 17
          Caption = 'SILENUS PDV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object CheckBox11: TCheckBox
          Left = 24
          Top = 102
          Width = 121
          Height = 17
          Caption = 'COLISEU GRAOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = CheckBox11Click
        end
        object CheckBox12: TCheckBox
          Left = 199
          Top = 32
          Width = 145
          Height = 17
          Caption = 'COLISEU TRANSPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = CheckBox12Click
        end
        object CheckBox13: TCheckBox
          Left = 199
          Top = 55
          Width = 97
          Height = 17
          Caption = 'APP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = CheckBox13Click
        end
        object CheckBox14: TCheckBox
          Left = 199
          Top = 78
          Width = 97
          Height = 17
          Caption = 'COLISEU WEB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object CheckBox19: TCheckBox
          Left = 199
          Top = 101
          Width = 120
          Height = 17
          Caption = 'INFO INDUSTRIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 398
      Top = 3
      Width = 584
      Height = 171
      Align = alClient
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 1
      object RzGroupBox4: TRzGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 574
        Height = 161
        Align = alClient
        Caption = 'MODULOS'
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -13
        CaptionFont.Name = 'Calibri'
        CaptionFont.Style = [fsBold]
        GroupStyle = gsUnderline
        TabOrder = 0
        Transparent = True
        object Label15: TLabel
          Left = 186
          Top = 105
          Width = 44
          Height = 13
          Caption = 'QNT DISP.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 185
          Top = 127
          Width = 44
          Height = 13
          Caption = 'QNT DISP.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object CheckBox1: TCheckBox
          Left = 24
          Top = 56
          Width = 146
          Height = 17
          Caption = 'NF-e'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 24
          Top = 80
          Width = 97
          Height = 17
          Caption = 'NFC-e'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 24
          Top = 103
          Width = 97
          Height = 17
          Caption = 'NFS-e'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object CheckBox4: TCheckBox
          Left = 24
          Top = 126
          Width = 97
          Height = 17
          Caption = 'MDF-e'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CheckBox5: TCheckBox
          Left = 183
          Top = 32
          Width = 145
          Height = 17
          Caption = 'CT-e'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object CheckBox6: TCheckBox
          Left = 183
          Top = 55
          Width = 81
          Height = 17
          Caption = 'APP SALES'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object CheckBox7: TCheckBox
          Left = 183
          Top = 78
          Width = 97
          Height = 17
          Caption = 'APP DASH'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object cxSpinEdit2: TcxSpinEdit
          Left = 241
          Top = 128
          ParentFont = False
          Properties.SpinButtons.Visible = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 28
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 241
          Top = 101
          ParentFont = False
          Properties.SpinButtons.Visible = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 28
        end
        object CheckBox21: TCheckBox
          Left = 24
          Top = 33
          Width = 146
          Height = 17
          Caption = 'SPED'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 46
    Width = 985
    Height = 131
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel5'
    ShowCaption = False
    TabOrder = 3
    object Label1: TLabel
      Left = 36
      Top = 95
      Width = 51
      Height = 15
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 17
      Width = 39
      Height = 15
      Alignment = taRightJustify
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 25
      Top = 46
      Width = 62
      Height = 43
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Resp.'#13#10'Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 104
      Top = 17
      Width = 344
      Height = 21
      BevelOuter = bvNone
      DataField = 'ID_CLIENTE'
      KeyField = 'ID_CLIENTE'
      ListField = 'NOME'
      ListSource = DS_Clientes
      TabOrder = 0
      OnExit = DBLookupComboBox1Exit
    end
    object RzBitBtn1: TRzBitBtn
      Left = 454
      Top = 17
      Width = 41
      FrameColor = 10053171
      Caption = '(F5)'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGradientInactiveCaption
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HotTrack = True
      HotTrackColor = 13082213
      ParentFont = False
      TextShadowColor = clBlue
      TabOrder = 1
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object Edit1: TEdit
      Left = 104
      Top = 56
      Width = 391
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 104
      Top = 93
      Width = 391
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 0
    Top = 10
    Width = 985
    Height = 33
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Align = alTop
    BorderOuter = fsNone
    Caption = 'Nova Implanta'#231#227'o'
    Color = 5855577
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStart = 8273429
    GradientColorStop = 13077064
    ParentFont = False
    TabOrder = 4
    VisualStyle = vsClassic
  end
  object Query_Clientes: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select clientes.id_cliente,clientes.nome_fantasia|| '#39'  /  '#39' ||  ' +
        'clientes.nome as nome,'
      
        'controle_software.*,controle_modulos.*, controle_modotrabalho.* ' +
        'from clientes'
      
        'LEFT JOIN controle_software ON controle_software.id_cliente = cl' +
        'ientes.id_cliente'
      
        'LEFT JOIN controle_modulos ON controle_modulos.id_cliente = clie' +
        'ntes.id_cliente'
      
        'LEFT JOIN controle_modotrabalho ON controle_modotrabalho.id_clie' +
        'nte = clientes.id_cliente'
      
        'where clientes.id_cliente <> 1  and ((clientes.tipo = 1) and (cl' +
        'ientes.classificacao <> 1))'
      'order by NOME, clientes.id_cliente')
    Left = 537
    Top = 56
    object Query_ClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_ClientesNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 125
    end
    object Query_ClientesID_CLIENTE_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE_1'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesCOLISEU_GESTAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COLISEU_GESTAO'
      Origin = 'COLISEU_GESTAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesCOLISEU_FISCAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COLISEU_FISCAL'
      Origin = 'COLISEU_FISCAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesSILENUS_PDV: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SILENUS_PDV'
      Origin = 'SILENUS_PDV'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesCOLISEU_GRAOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COLISEU_GRAOS'
      Origin = 'COLISEU_GRAOS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesCOLISEU_TRANSPORTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COLISEU_TRANSPORTE'
      Origin = 'COLISEU_TRANSPORTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesAPP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'APP'
      Origin = 'APP'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesCOLISEU_WEB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COLISEU_WEB'
      Origin = 'COLISEU_WEB'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesINFO_INDUSTRIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INFO_INDUSTRIA'
      Origin = 'INFO_INDUSTRIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesDATA_UP: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_UP'
      Origin = 'DATA_UP'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesID_CLIENTE_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE_2'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesNFE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFE'
      Origin = 'NFE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesNFCE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFCE'
      Origin = 'NFCE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesNFSE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFSE'
      Origin = 'NFSE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesMDFE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MDFE'
      Origin = 'MDFE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesCTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CTE'
      Origin = 'CTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesAPP_SALES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'APP_SALES'
      Origin = 'APP_SALES'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesAPP_DASH: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'APP_DASH'
      Origin = 'APP_DASH'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesN_DISPO_SALES: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_DISPO_SALES'
      Origin = 'N_DISPO_SALES'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesN_DISPO_DARSH: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_DISPO_DARSH'
      Origin = 'N_DISPO_DARSH'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesN_TERMINAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_TERMINAIS'
      Origin = 'N_TERMINAIS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesSPED: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SPED'
      Origin = 'SPED'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesDATA_UP_1: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_UP_1'
      Origin = 'DATA_UP'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesID_CLIENTE_3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE_3'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesID_MODO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_MODO'
      Origin = 'ID_MODO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesDETALHE: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesGRADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GRADE'
      Origin = 'GRADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesESTOQUE_POR_DEPTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_POR_DEPTO'
      Origin = 'ESTOQUE_POR_DEPTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesCONTROLE_DE_ENTREGA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONTROLE_DE_ENTREGA'
      Origin = 'CONTROLE_DE_ENTREGA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesENTREGA_BAIXA_ESTOQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_BAIXA_ESTOQUE'
      Origin = 'ENTREGA_BAIXA_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesFRENTE_CAIXA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FRENTE_CAIXA'
      Origin = 'FRENTE_CAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesATENDIMENTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ATENDIMENTO'
      Origin = 'ATENDIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesBOLETO_BANCARIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BOLETO_BANCARIO'
      Origin = 'BOLETO_BANCARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesTRABALHA_OS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TRABALHA_OS'
      Origin = 'TRABALHA_OS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesPROPRIEDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIEDADE'
      Origin = 'PROPRIEDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesLOTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE'
      Origin = 'LOTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesCONDICIONAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONDICIONAL'
      Origin = 'CONDICIONAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesPREST_SERVI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PREST_SERVI'
      Origin = 'PREST_SERVI'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesEMISS_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMISS_VENDA'
      Origin = 'EMISS_VENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_ClientesDATA_UP_2: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_UP_2'
      Origin = 'DATA_UP'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DS_Clientes: TDataSource
    DataSet = Query_Clientes
    Left = 537
    Top = 104
  end
end
