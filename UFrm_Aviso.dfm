object Frm_Aviso: TFrm_Aviso
  Left = 1577
  Top = 450
  Anchors = [akRight, akBottom]
  BorderStyle = bsNone
  Caption = 'Frm_Aviso'
  ClientHeight = 189
  ClientWidth = 325
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel2: TRzLabel
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 319
    Height = 17
    Margins.Top = 7
    Align = alTop
    AutoSize = False
    Caption = 'CLIENTE:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    BlinkIntervalOff = 1000
    BlinkIntervalOn = 1000
    ExplicitWidth = 293
  end
  object RzLabel3: TRzLabel
    Left = 0
    Top = 102
    Width = 325
    Height = 18
    Align = alTop
    AutoSize = False
    Caption = 'PROTOCOLO:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    BlinkIntervalOff = 1000
    BlinkIntervalOn = 1000
    ExplicitLeft = 8
    ExplicitTop = 131
    ExplicitWidth = 104
  end
  object RzDBLabel1: TRzDBLabel
    AlignWithMargins = True
    Left = 5
    Top = 65
    Width = 315
    Height = 32
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Color = clWhite
    ParentColor = False
    Transparent = False
    WordWrap = True
    BlinkIntervalOff = 1000
    BlinkIntervalOn = 1000
    DataField = 'CLIENTE'
    DataSource = DataSource1
  end
  object RzDBLabel2: TRzDBLabel
    AlignWithMargins = True
    Left = 5
    Top = 125
    Width = 315
    Height = 15
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    Color = clWhite
    ParentColor = False
    Transparent = False
    WordWrap = True
    BlinkIntervalOff = 1000
    BlinkIntervalOn = 1000
    DataField = 'PROTOCOLO'
    DataSource = DataSource1
    ExplicitTop = 146
    ExplicitWidth = 289
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 325
    Height = 33
    Align = alTop
    BorderOuter = fsNone
    BorderSides = []
    BorderShadow = clBlack
    Color = 7947008
    FlatColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStart = 6553600
    GradientColorStop = clHotLight
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsClassic
    object Label1: TLabel
      Left = 282
      Top = 0
      Width = 43
      Height = 33
      Cursor = crHandPoint
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      OnClick = Label1Click
      ExplicitLeft = 256
    end
    object RzLabel1: TRzLabel
      Left = 0
      Top = 0
      Width = 282
      Height = 33
      Margins.Top = 50
      Margins.Bottom = 50
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'NOVO ATENDIMENTO'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      WordWrap = True
      Blinking = True
      BlinkColor = clNavy
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      ShadowColor = clHighlight
      TextStyle = tsShadow
      ExplicitLeft = -2
      ExplicitTop = 3
      ExplicitWidth = 293
      ExplicitHeight = 30
    end
  end
  object Timer1: TTimer
    Enabled = False
    Left = 535
    Top = 111
  end
  object Query_Alerta: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select  controle_atendimentos.cliente,'
      '        controle_atendimentos.protocolo,'
      '       controle_atendimentos.status'
      '         from controle_atendimentos'
      
        '         where controle_atendimentos.id_atendimento = (select ma' +
        'x(controle_atendimento.id_atendimento) from controle_atendimento' +
        ')')
    Left = 232
    Top = 56
    object Query_AlertaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object Query_AlertaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 10
    end
    object Query_AlertaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 14
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_Alerta
    Left = 208
    Top = 48
  end
end
