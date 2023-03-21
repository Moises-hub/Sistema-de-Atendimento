object Frm_APP_Cliente: TFrm_APP_Cliente
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  ClientHeight = 230
  ClientWidth = 570
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label6: TLabel
      AlignWithMargins = True
      Left = 308
      Top = 3
      Width = 259
      Height = 29
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      Caption = 'COLISEU APP'#39'S CLIENTES'
      Color = clAppWorkSpace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      StyleElements = []
      ExplicitLeft = 473
      ExplicitTop = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 570
    Height = 195
    Align = alClient
    Caption = 'Panel1'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object Label1: TLabel
      Left = 105
      Top = 32
      Width = 40
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'APP'
    end
    object Label3: TLabel
      Left = 83
      Top = 67
      Width = 62
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLIENTE'
    end
    object Label4: TLabel
      Left = 92
      Top = 96
      Width = 54
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CHAVE'
    end
    object RzBitBtn1: TRzBitBtn
      Left = 355
      Top = 132
      Width = 70
      Height = 30
      Caption = 'Salvar'
      HotTrack = True
      TabOrder = 0
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 431
      Top = 132
      Width = 70
      Height = 30
      Caption = 'Cancelar'
      HotTrack = True
      TabOrder = 1
      ThemeAware = False
      OnClick = RzBitBtn2Click
    end
    object Edit1: TEdit
      Left = 152
      Top = 93
      Width = 345
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object RzBitBtn3: TRzBitBtn
      Left = 431
      Top = 60
      Width = 26
      Action = Action1
      Caption = 'F3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 2
      ThemeAware = False
    end
    object RzDBLookupComboBox2: TRzDBLookupComboBox
      Left = 160
      Top = 64
      Width = 145
      Height = 21
      TabOrder = 4
    end
  end
  object RzComboBox1: TRzComboBox
    Left = 152
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 469
    Top = 36
  end
  object ActionList1: TActionList
    Left = 96
    Top = 24
    object Action1: TAction
      Caption = 'F3'
      ShortCut = 114
      OnExecute = Action1Execute
    end
  end
end
