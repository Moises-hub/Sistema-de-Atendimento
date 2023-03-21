object Frm_Grupos_de_Acessos: TFrm_Grupos_de_Acessos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Grupos de Acessos'
  ClientHeight = 385
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = Edit1Change
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 44
    Align = alTop
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStop = clWhite
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitWidth = 376
    object Edit1: TEdit
      Left = 48
      Top = 12
      Width = 281
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 44
    Width = 349
    Height = 341
    Align = alClient
    BorderStyle = bsNone
    DataSource = DS_CD_Grupos
    FixedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'ID_GRUPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'ID Grupo'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'Descri'#231#227'o'
        Width = 236
        Visible = True
      end>
  end
  object DS_CD_Grupos: TDataSource
    DataSet = Query_Grupo
    Left = 224
    Top = 288
  end
  object Query_Grupo: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'select * from GRUPOS_ACESSOS')
    Left = 224
    Top = 200
    object Query_GrupoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_GrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
end
