object Frm_Org_Cartao: TFrm_Org_Cartao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 268
  ClientWidth = 490
  Color = 8282689
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 64
    Width = 31
    Height = 15
    Alignment = taRightJustify
    Caption = 'T'#237'tulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 100
    Width = 39
    Height = 15
    Alignment = taRightJustify
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 17
    Top = 174
    Width = 46
    Height = 15
    Alignment = taRightJustify
    Caption = 'Etiqueta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 1
    Top = 130
    Width = 62
    Height = 43
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Resp.'#13#10'Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 0
    Top = 10
    Width = 490
    Height = 33
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Align = alTop
    BorderOuter = fsNone
    Caption = 'Novo Cart'#227'o'
    Color = 13602864
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStart = 8273429
    GradientColorStop = 13077064
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsClassic
    ExplicitWidth = 489
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 80
    Top = 100
    Width = 344
    Height = 21
    BevelOuter = bvNone
    DataField = 'ID_CLIENTE'
    DataSource = DS_Cartao
    KeyField = 'ID_CLIENTE'
    ListField = 'NOME'
    ListSource = DS_Clientes
    TabOrder = 1
  end
  object dxDBColorEdit1: TdxDBColorEdit
    Left = 80
    Top = 172
    DataBinding.DataField = 'ETIQUETA'
    DataBinding.DataSource = DS_Cartao
    Properties.ColorPalette = cpExtended
    TabOrder = 3
    Width = 337
  end
  object RzBitBtn1: TRzBitBtn
    Left = 430
    Top = 98
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
    TabOrder = 4
    ThemeAware = False
    OnClick = RzBitBtn1Click
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 65
    Width = 391
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TITULO'
    DataSource = DS_Cartao
    TabOrder = 5
  end
  object Panel10: TPanel
    Left = 0
    Top = 233
    Width = 490
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel10'
    ParentBackground = False
    ParentColor = True
    ShowCaption = False
    TabOrder = 6
    ExplicitWidth = 489
    object RzBitBtn2: TRzBitBtn
      AlignWithMargins = True
      Left = 331
      Top = 5
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
      ExplicitLeft = 330
    end
    object RzBitBtn3: TRzBitBtn
      AlignWithMargins = True
      Left = 412
      Top = 5
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
      ExplicitLeft = 411
    end
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 134
    Width = 391
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RESPONSAVEL_EM'
    DataSource = DS_Cartao
    TabOrder = 2
  end
  object DS_Cartao: TDataSource
    DataSet = Tab_Cartao
    Left = 504
    Top = 112
  end
  object Tab_Cartao: TFDTable
    AfterInsert = Tab_CartaoAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'ID'
    Connection = DM.Conexao
    UpdateOptions.UpdateTableName = 'CONTROLE_QUADRO_CARTAO'
    TableName = 'CONTROLE_QUADRO_CARTAO'
    Left = 504
    Top = 64
    object Tab_CartaoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object Tab_CartaoID_BLOCO: TIntegerField
      FieldName = 'ID_BLOCO'
      Origin = 'ID_BLOCO'
    end
    object Tab_CartaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Tab_CartaoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object Tab_CartaoTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 100
    end
    object Tab_CartaoDATA_ABERTURA: TSQLTimeStampField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object Tab_CartaoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      BlobType = ftMemo
    end
    object Tab_CartaoETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      Size = 30
    end
    object Tab_CartaoPREVISAO: TDateField
      FieldName = 'PREVISAO'
      Origin = 'PREVISAO'
    end
    object Tab_CartaoPOSICAO: TIntegerField
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
    end
    object Tab_CartaoRESPONSAVEL_EM: TStringField
      FieldName = 'RESPONSAVEL_EM'
      Origin = 'RESPONSAVEL_EM'
      Size = 50
    end
  end
  object Query_Clientes: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select clientes.id_cliente,clientes.nome_fantasia|| '#39'  /  '#39' ||  ' +
        'clientes.nome as nome from clientes'
      
        'where id_cliente <> 1  and ((clientes.tipo = 1) and (clientes.cl' +
        'assificacao <> 1))'
      'order by NOME, id_cliente')
    Left = 592
    Top = 64
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
  end
  object DS_Clientes: TDataSource
    DataSet = Query_Clientes
    Left = 592
    Top = 112
  end
end
