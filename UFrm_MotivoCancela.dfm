object Frm_MotivoCancela: TFrm_MotivoCancela
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Motivo Cancelamento'
  ClientHeight = 246
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 340
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    Caption = 'MOTIVO DO CANCELAMENTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 340
    Height = 162
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 1
    WantReturns = False
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 218
    Width = 340
    Height = 25
    Align = alBottom
    BorderOuter = fsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Button1: TButton
      Left = 274
      Top = 0
      Width = 66
      Height = 25
      Align = alRight
      Caption = 'Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object FDQuery1: TFDQuery
    Left = 160
    Top = 120
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 168
    Top = 128
  end
end
