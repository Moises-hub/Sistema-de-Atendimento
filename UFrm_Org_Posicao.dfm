object Frm_Org_Posicao: TFrm_Org_Posicao
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_Org_Posicao'
  ClientHeight = 145
  ClientWidth = 236
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
  object Label1: TLabel
    Left = 40
    Top = 22
    Width = 145
    Height = 13
    Caption = 'Digite a Posi'#231#227'o Desejada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpinEdit1: TSpinEdit
    Left = 96
    Top = 41
    Width = 89
    Height = 22
    MaxValue = 0
    MinValue = 1
    TabOrder = 0
    Value = 0
  end
  object RzBitBtn1: TRzBitBtn
    Left = 24
    Top = 87
    Width = 81
    Height = 30
    HotTrack = True
    TabOrder = 1
    ThemeAware = False
    OnClick = RzBitBtn1Click
    Kind = bkOK
  end
  object RzBitBtn2: TRzBitBtn
    Left = 120
    Top = 87
    Width = 81
    Height = 30
    HotTrack = True
    TabOrder = 2
    ThemeAware = False
    Kind = bkCancel
  end
end
