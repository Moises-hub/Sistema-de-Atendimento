object Frm_Versao: TFrm_Versao
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Vers'#227'o'
  ClientHeight = 159
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 159
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 216
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Vers'#227'o'
    end
    object Label1: TLabel
      Left = 8
      Top = 48
      Width = 44
      Height = 13
      Caption = 'Software'
    end
    object RzBitBtn3: TRzBitBtn
      AlignWithMargins = True
      Left = 181
      Top = 86
      Width = 86
      Height = 32
      Cursor = crHandPoint
      FrameColor = clAppWorkSpace
      ShowDownPattern = False
      Action = Act_Salvar
      Caption = 'Salvar (Ctrl+S)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HighlightColor = clHotLight
      HotTrack = True
      HotTrackColor = clActiveBorder
      LightTextStyle = True
      ParentFont = False
      TextShadowColor = clWhite
      TabOrder = 0
      ThemeAware = False
    end
    object RzComboBox1: TRzComboBox
      Left = 58
      Top = 45
      Width = 145
      Height = 21
      TabOrder = 1
      Items.Strings = (
        'COLISEU GESTAO'
        'COLISEU FISCAL'
        'SILENUS PDV'
        'COLISEU GRAOS'
        'COLISEU TRANSPORTE'
        'APP'
        'COLISEU WEB'
        'COLISEU INDUSTRIA'
        'GALERIA DE RELATORIO')
    end
    object Edit1: TEdit
      Left = 255
      Top = 45
      Width = 114
      Height = 21
      MaxLength = 13
      TabOrder = 2
    end
    object RzBitBtn2: TRzBitBtn
      AlignWithMargins = True
      Left = 273
      Top = 86
      Width = 96
      Height = 32
      Cursor = crHandPoint
      FrameColor = clAppWorkSpace
      ShowDownPattern = False
      Action = Act_Cancelar
      Caption = 'Cancelar (Esc)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HighlightColor = 4210935
      HotTrack = True
      HotTrackColor = clActiveBorder
      LightTextStyle = True
      ParentFont = False
      TextShadowColor = clWhite
      TabOrder = 3
      ThemeAware = False
    end
  end
  object ActionList1: TActionList
    Left = 88
    Top = 104
    object Act_Salvar: TAction
      Caption = 'Salvar (Ctrl+S)'
      ShortCut = 16467
      OnExecute = Act_SalvarExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar (Esc)'
      ShortCut = 27
      OnExecute = Act_CancelarExecute
    end
  end
end
