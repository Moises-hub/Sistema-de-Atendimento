object Sugestao_Responsavel: TSugestao_Responsavel
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Sugestao_Responsavel'
  ClientHeight = 148
  ClientWidth = 423
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
  object Label16: TLabel
    Left = 50
    Top = 14
    Width = 188
    Height = 15
    Caption = 'SELECIONE O NOVO RESPONS'#193'VEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 50
    Top = 35
    Width = 289
    Height = 21
    KeyField = 'ID_FUNCIONARIO'
    ListField = 'NOME'
    ListSource = DM.DS_Query_Funcionario
    TabOrder = 0
  end
  object RzBitBtn1: TRzBitBtn
    Left = 171
    Top = 72
    Caption = 'Ok'
    HotTrack = True
    TabOrder = 1
    ThemeAware = False
    OnClick = RzBitBtn1Click
  end
  object RzBitBtn2: TRzBitBtn
    Left = 264
    Top = 72
    Caption = 'Cancelar'
    HotTrack = True
    TabOrder = 2
    ThemeAware = False
    OnClick = RzBitBtn2Click
  end
end
