object Frm_Org_OrdCartao: TFrm_Org_OrdCartao
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Ordenar'
  ClientHeight = 681
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 121
    Height = 681
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 8285537
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = -1
    ExplicitHeight = 672
    object RzBitBtn1: TRzBitBtn
      AlignWithMargins = True
      Left = 20
      Top = 100
      Width = 81
      Height = 31
      Cursor = crHandPoint
      Margins.Left = 20
      Margins.Top = 100
      Margins.Right = 20
      FrameColor = 26316
      Align = alTop
      Caption = #225
      Color = 33023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Wingdings'
      Font.Style = [fsBold]
      HotTrack = True
      HotTrackColor = 6205183
      ParentFont = False
      TextHighlightColor = 26316
      TextShadowColor = 26316
      TabOrder = 0
      TextStyle = tsRaised
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn3: TRzBitBtn
      AlignWithMargins = True
      Left = 20
      Top = 137
      Width = 81
      Height = 31
      Cursor = crHandPoint
      Margins.Left = 20
      Margins.Right = 20
      FrameColor = 26316
      Align = alTop
      Caption = #226
      Color = 33023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Wingdings'
      Font.Style = [fsBold]
      HotTrack = True
      HotTrackColor = 6205183
      ParentFont = False
      TextHighlightColor = 26316
      TextShadowColor = 26316
      TabOrder = 1
      TextStyle = tsRaised
      ThemeAware = False
      OnClick = RzBitBtn3Click
    end
    object RzBitBtn2: TRzBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 241
      Width = 115
      Height = 42
      Cursor = crHandPoint
      Margins.Top = 5
      FrameColor = clCaptionText
      Align = alTop
      Caption = 'Salvar'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TextShadowColor = clHotLight
      TabOrder = 2
      ThemeAware = False
      OnClick = RzBitBtn2Click
    end
    object RzBitBtn4: TRzBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 291
      Width = 115
      Height = 42
      Cursor = crHandPoint
      Margins.Top = 5
      FrameColor = 138
      Align = alTop
      Caption = 'Sair'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TextShadowColor = clHotLight
      TabOrder = 3
      ThemeAware = False
      OnClick = RzBitBtn4Click
    end
    object RzBitBtn5: TRzBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 191
      Width = 115
      Height = 42
      Cursor = crHandPoint
      Margins.Top = 20
      FrameColor = clCaptionText
      Align = alTop
      Caption = 'Selecionar Posi'#231#227'o'
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TextShadowColor = clHotLight
      TabOrder = 4
      ThemeAware = False
      OnClick = RzBitBtn5Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 121
    Top = 0
    Width = 679
    Height = 681
    Align = alClient
    BorderStyle = bsNone
    ColCount = 4
    FixedCols = 0
    RowCount = 2
    GradientEndColor = 8285537
    GradientStartColor = clGray
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goRowMoving, goRowSelect]
    TabOrder = 1
    ExplicitLeft = 124
    ExplicitWidth = 669
    ExplicitHeight = 671
    ColWidths = (
      64
      201
      184
      199)
    RowHeights = (
      24
      24)
  end
  object FDQuery1: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select CONTROLE_QUADRO_CARTAO.*,'
      '       funcionarios.nome usuario,'
      '       clientes.nome cliente'
      '        from CONTROLE_QUADRO_CARTAO'
      
        '        left join funcionarios on funcionarios.id_funcionario = ' +
        'controle_quadro_cartao.id_usuario'
      
        '        left join clientes on clientes.id_cliente = CONTROLE_QUA' +
        'DRO_CARTAO.id_cliente'
      '  where id_bloco =:b'
      'order by posicao')
    Left = 706
    Top = 40
    ParamData = <
      item
        Name = 'B'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1ID_BLOCO: TIntegerField
      FieldName = 'ID_BLOCO'
      Origin = 'ID_BLOCO'
    end
    object FDQuery1ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object FDQuery1ID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object FDQuery1TITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 100
    end
    object FDQuery1DATA_ABERTURA: TSQLTimeStampField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object FDQuery1DESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      BlobType = ftMemo
    end
    object FDQuery1ETIQUETA: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      Size = 30
    end
    object FDQuery1PREVISAO: TDateField
      FieldName = 'PREVISAO'
      Origin = 'PREVISAO'
    end
    object FDQuery1POSICAO: TIntegerField
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
    end
    object FDQuery1USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuery1CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
  end
  object FDQuery2: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'update CONTROLE_QUADRO_CARTAO'
      'set posicao =:p'
      'where id =:id')
    Left = 706
    Top = 104
    ParamData = <
      item
        Name = 'P'
        ParamType = ptInput
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_BLOCO'
      Origin = 'ID_BLOCO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object StringField1: TStringField
      FieldName = 'TITULO'
      Origin = 'TITULO'
      Size = 100
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA_ABERTURA'
      Origin = 'DATA_ABERTURA'
    end
    object MemoField1: TMemoField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      BlobType = ftMemo
    end
    object StringField2: TStringField
      FieldName = 'ETIQUETA'
      Origin = 'ETIQUETA'
      Size = 30
    end
    object DateField1: TDateField
      FieldName = 'PREVISAO'
      Origin = 'PREVISAO'
    end
    object IntegerField5: TIntegerField
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
    end
  end
end
