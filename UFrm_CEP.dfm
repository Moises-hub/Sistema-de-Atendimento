object Frm_CEP: TFrm_CEP
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Frm_CEP'
  ClientHeight = 500
  ClientWidth = 562
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 556
    Height = 47
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 291
      Top = 0
      Width = 185
      Height = 47
      Align = alRight
      BevelOuter = bvNone
      Caption = 'consultar'
      Color = clHotLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -29
      Font.Name = 'Consolas'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      StyleElements = []
    end
    object Panel2: TPanel
      Tag = 10
      Left = 476
      Top = 0
      Width = 80
      Height = 47
      Align = alRight
      BevelOuter = bvNone
      BevelWidth = 2
      Caption = 'cep'
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -53
      Font.Name = 'Freestyle Script'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      StyleElements = []
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 556
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 543
      Height = 13
      Margins.Left = 10
      Margins.Bottom = 1
      Align = alTop
      Caption = 'Digite o Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 82
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 10
      Top = 20
      Width = 526
      Height = 21
      Margins.Left = 10
      Margins.Right = 20
      Align = alTop
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 112
    Width = 556
    Height = 338
    Align = alClient
    BorderStyle = bsNone
    DataSource = DM.DS_Query_CEP
    DrawingStyle = gdsGradient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'LOG_NOME'
        Title.Caption = 'LOGRADOURO'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOG_COMPLEMENTO'
        Title.Caption = 'COMPLEMENTO'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAI_NO'
        Title.Caption = 'BAIRRO'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 92
        Visible = True
      end>
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 456
    Width = 556
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object Button1: TButton
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 272
    Top = 256
  end
end
