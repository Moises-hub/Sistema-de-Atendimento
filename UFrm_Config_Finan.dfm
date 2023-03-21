object Frm_Config_Finan: TFrm_Config_Finan
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Config Financeiro'
  ClientHeight = 264
  ClientWidth = 525
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
    Top = 223
    Width = 525
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 207
    object RzBitBtn5: TRzBitBtn
      AlignWithMargins = True
      Left = 343
      Top = 4
      Width = 86
      Height = 33
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Ok'
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      ThemeAware = False
      OnClick = RzBitBtn5Click
      ExplicitTop = 6
    end
    object RzBitBtn4: TRzBitBtn
      AlignWithMargins = True
      Left = 435
      Top = 4
      Width = 86
      Height = 33
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Cancel'
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      ThemeAware = False
      OnClick = RzBitBtn4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 525
    Height = 223
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    ExplicitTop = -2
    ExplicitHeight = 427
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 116
      Height = 13
      Caption = 'Centro de Custo Padr'#227'o'
    end
    object Label2: TLabel
      Left = 8
      Top = 72
      Width = 140
      Height = 13
      Caption = 'Plano de Contas Implanta'#231#227'o'
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 140
      Height = 13
      Caption = 'Plano de Contas Manuten'#231#227'o'
    end
    object Label4: TLabel
      Left = 28
      Top = 123
      Width = 120
      Height = 13
      Caption = 'Plano de Contas M'#243'dulos'
    end
    object Label5: TLabel
      Left = 37
      Top = 149
      Width = 111
      Height = 13
      Caption = 'Plano de Contas Visitas'
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 160
      Top = 32
      Width = 345
      Height = 21
      DataField = 'ID_CENTRO_CUSTO'
      DataSource = DM.DS_Query_Config_Financeiro
      TabOrder = 0
    end
    object dxDBLookupTreeView1: TdxDBLookupTreeView
      Left = 160
      Top = 96
      Width = 345
      Height = 21
      CanSelectParents = True
      ParentColor = False
      TabOrder = 1
      TabStop = True
      Text = '1.03-RECEBIMENTO DE CONTAS'
      TreeViewColor = clWindow
      TreeViewCursor = crDefault
      TreeViewFont.Charset = DEFAULT_CHARSET
      TreeViewFont.Color = clWindowText
      TreeViewFont.Height = -11
      TreeViewFont.Name = 'Tahoma'
      TreeViewFont.Style = []
      TreeViewIndent = 19
      TreeViewReadOnly = False
      TreeViewShowButtons = True
      TreeViewShowHint = False
      TreeViewShowLines = True
      TreeViewShowRoot = True
      TreeViewSortType = stNone
      DisplayField = 'CLASSE'
      DividedChar = '.'
      ListSource = DS_QUERY_PLANO
      KeyField = 'ID_PLANO'
      ListField = 'CLASSE'
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'PAI'
      RootValue = Null
      TextStyle = tvtsShort
      DataField = 'ID_PLANO_MANUTENCAO'
      DataSource = DM.DS_Query_Config_Financeiro
    end
    object dxDBLookupTreeView2: TdxDBLookupTreeView
      Left = 160
      Top = 123
      Width = 345
      Height = 21
      CanSelectParents = True
      ParentColor = False
      TabOrder = 2
      TabStop = True
      Text = ''
      TreeViewColor = clWindow
      TreeViewCursor = crDefault
      TreeViewFont.Charset = DEFAULT_CHARSET
      TreeViewFont.Color = clWindowText
      TreeViewFont.Height = -11
      TreeViewFont.Name = 'Tahoma'
      TreeViewFont.Style = []
      TreeViewIndent = 19
      TreeViewReadOnly = False
      TreeViewShowButtons = True
      TreeViewShowHint = False
      TreeViewShowLines = True
      TreeViewShowRoot = True
      TreeViewSortType = stNone
      DisplayField = 'CLASSE'
      DividedChar = '.'
      ListSource = DS_QUERY_PLANO
      KeyField = 'ID_PLANO'
      ListField = 'CLASSE'
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'PAI'
      RootValue = Null
      TextStyle = tvtsShort
      DataField = 'ID_PLANO_MODULOS'
      DataSource = DM.DS_Query_Config_Financeiro
    end
    object dxDBLookupTreeView3: TdxDBLookupTreeView
      Left = 160
      Top = 147
      Width = 345
      Height = 21
      CanSelectParents = True
      ParentColor = False
      TabOrder = 3
      TabStop = True
      Text = ''
      TreeViewColor = clWindow
      TreeViewCursor = crDefault
      TreeViewFont.Charset = DEFAULT_CHARSET
      TreeViewFont.Color = clWindowText
      TreeViewFont.Height = -11
      TreeViewFont.Name = 'Tahoma'
      TreeViewFont.Style = []
      TreeViewIndent = 19
      TreeViewReadOnly = False
      TreeViewShowButtons = True
      TreeViewShowHint = False
      TreeViewShowLines = True
      TreeViewShowRoot = True
      TreeViewSortType = stNone
      DisplayField = 'CLASSE'
      DividedChar = '.'
      ListSource = DS_QUERY_PLANO
      KeyField = 'ID_PLANO'
      ListField = 'CLASSE'
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'PAI'
      RootValue = Null
      TextStyle = tvtsShort
      DataField = 'ID_PLANO_VISITAS'
      DataSource = DM.DS_Query_Config_Financeiro
    end
    object dxDBLookupTreeView4: TdxDBLookupTreeView
      Left = 160
      Top = 69
      Width = 345
      Height = 21
      CanSelectParents = True
      ParentColor = False
      TabOrder = 4
      TabStop = True
      Text = '1.02-VENDAS'
      TreeViewColor = clWindow
      TreeViewCursor = crDefault
      TreeViewFont.Charset = DEFAULT_CHARSET
      TreeViewFont.Color = clWindowText
      TreeViewFont.Height = -11
      TreeViewFont.Name = 'Tahoma'
      TreeViewFont.Style = []
      TreeViewIndent = 19
      TreeViewReadOnly = False
      TreeViewShowButtons = True
      TreeViewShowHint = False
      TreeViewShowLines = True
      TreeViewShowRoot = True
      TreeViewSortType = stNone
      DisplayField = 'CLASSE'
      DividedChar = '.'
      ListSource = DS_QUERY_PLANO
      KeyField = 'ID_PLANO'
      ListField = 'CLASSE'
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      ParentField = 'PAI'
      RootValue = Null
      TextStyle = tvtsShort
      DataField = 'ID_PLANO_IMPLANTA'
      DataSource = DM.DS_Query_Config_Financeiro
    end
  end
  object DS_QUERY_PLANO: TDataSource
    DataSet = Query_Plano_contas
    Left = 64
    Top = 320
  end
  object Query_Plano_contas: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT plano_contas.id_plano,'
      
        '       plano_contas.classe||'#39'-'#39'||plano_contas.descricao AS CLASS' +
        'E,'
      '       plano_contas.pai'
      '       FROM plano_contas')
    Left = 64
    Top = 256
    object Query_Plano_contasID_PLANO: TIntegerField
      FieldName = 'ID_PLANO'
      Origin = 'ID_PLANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_Plano_contasCLASSE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSE'
      Origin = 'CLASSE'
      ProviderFlags = []
      ReadOnly = True
      Size = 71
    end
    object Query_Plano_contasPAI: TIntegerField
      FieldName = 'PAI'
      Origin = 'PAI'
    end
  end
end
