object Frm_Regiao: TFrm_Regiao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Regi'#245'es'
  ClientHeight = 417
  ClientWidth = 498
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 63
    Width = 492
    Height = 291
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 409
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 53
        Visible = True
      end>
  end
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 360
    Width = 492
    Height = 54
    Align = alBottom
    BorderOuter = fsNone
    Color = clGradientActiveCaption
    GradientColorStyle = gcsMSOffice
    GradientColorStart = 33023
    GradientColorStop = clMaroon
    TabOrder = 2
    VisualStyle = vsGradient
    object Button4: TButton
      AlignWithMargins = True
      Left = 400
      Top = 3
      Width = 89
      Height = 48
      Action = Act_Sair
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = True
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 492
    Height = 54
    Align = alTop
    BorderOuter = fsNone
    Color = clGradientActiveCaption
    GradientColorStyle = gcsMSOffice
    GradientColorStart = 33023
    GradientColorStop = clMaroon
    TabOrder = 0
    VisualStyle = vsGradient
    object RzLabel1: TRzLabel
      Left = 40
      Top = 16
      Width = 81
      Height = 13
      Caption = 'BUSCAR CIDADE'
      Transparent = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
    end
    object Edit1: TEdit
      Left = 135
      Top = 13
      Width = 205
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object ActionList1: TActionList
    Left = 432
    Top = 272
    object Act_novo: TAction
      Caption = 'Adicionar (F2)'
      ImageIndex = 0
      ShortCut = 113
    end
    object Act_Alterar: TAction
      Caption = 'Alterar (F3)'
      ImageIndex = 16
      ShortCut = 114
    end
    object Act_Sair: TAction
      Caption = 'Sair'
      ImageIndex = 29
      ShortCut = 27
      OnExecute = Act_SairExecute
    end
  end
  object Query_Regiao: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select id_regiao,'
      '       cidade,'
      '       uf'
      'from regioes'
      'where cidade like :c')
    Left = 272
    Top = 208
    ParamData = <
      item
        Name = 'C'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object Query_RegiaoID_REGIAO: TIntegerField
      FieldName = 'ID_REGIAO'
      Origin = 'ID_REGIAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_RegiaoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object Query_RegiaoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_Regiao
    Left = 360
    Top = 192
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 176
    Top = 136
  end
end
