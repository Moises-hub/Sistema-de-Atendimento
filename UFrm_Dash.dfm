object Frm_Dash: TFrm_Dash
  Left = 0
  Top = 0
  Caption = 'ESTATISTICA'
  ClientHeight = 749
  ClientWidth = 1707
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 423
    Width = 1707
    Height = 326
    Align = alBottom
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    object DBChart4: TDBChart
      Left = 808
      Top = 0
      Width = 899
      Height = 326
      AllowPanning = pmNone
      BottomWall.Visible = False
      Title.Font.Color = 33023
      Title.Font.Height = -13
      Title.Font.Name = 'Calibri'
      Title.Font.Style = [fsBold]
      Title.Font.Quality = fqBest
      Title.Text.Strings = (
        'ATUALIZA'#199#213'ES COLISEU GESTAO')
      AxisBehind = False
      AxisVisible = False
      ClipPoints = False
      LeftAxis.Visible = False
      Legend.Inverted = True
      RightAxis.Visible = False
      Shadow.Visible = False
      View3DWalls = False
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TBarSeries
        BarPen.Color = clDefault
        BarPen.Width = 19
        BarPen.EndStyle = esFlat
        BarPen.Visible = False
        ColorEachPoint = True
        DataSource = Query_versao
        XLabelsSource = 'NOME'
        SideMargins = False
        XValues.Name = 'X'
        XValues.Order = loAscending
        XValues.ValueSource = 'TOTAL'
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'TOTAL'
      end
    end
    object DBChart3: TDBChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 802
      Height = 320
      AllowPanning = pmNone
      Border.EndStyle = esFlat
      LeftWall.Pen.EndStyle = esFlat
      LeftWall.Pen.JoinStyle = jsMitter
      LeftWall.Transparent = True
      LeftWall.Visible = False
      RightWall.Pen.EndStyle = esFlat
      Title.Font.Color = 8404992
      Title.Font.Quality = fqNormal
      Title.Text.Strings = (
        'ATENDENTES RESPONS'#193'VEIS')
      Title.Transparent = False
      AxisBehind = False
      Chart3DPercent = 1
      LeftAxis.Grid.Visible = False
      LeftAxis.MinimumOffset = 6
      LeftAxis.Visible = False
      Legend.Alignment = laLeft
      Legend.TextStyle = ltsXAndText
      Legend.VertSpacing = 12
      Pages.ScaleLastPage = False
      View3DWalls = False
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      DefaultCanvas = 'TTeeCanvas3D'
      ColorPaletteIndex = 14
      object Series4: THorizBarSeries
        BarBrush.Gradient.Direction = gdLeftRight
        BarPen.Visible = False
        ColorEachPoint = True
        Marks.Margins.Units = maPercentSize
        Marks.Arrow.Visible = False
        Marks.Callout.Arrow.Visible = False
        Marks.Symbol.Frame.EndStyle = esFlat
        Marks.Symbol.Frame.JoinStyle = jsMitter
        Marks.Symbol.Frame.Visible = False
        Marks.Symbol.Pen.EndStyle = esFlat
        Marks.Symbol.Pen.JoinStyle = jsMitter
        Marks.Symbol.Pen.Visible = False
        Marks.Symbol.Visible = True
        DataSource = Query_Atendente
        XLabelsSource = 'RESPONSAVEL'
        BarStyle = bsCilinder
        Gradient.Direction = gdLeftRight
        MultiBar = mbNone
        Shadow.Visible = False
        XValues.Name = 'Bar'
        XValues.Order = loNone
        XValues.ValueSource = 'COUNT'
        YValues.Name = 'Y'
        YValues.Order = loAscending
        YValues.ValueSource = 'COUNT'
      end
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 57
    Width = 1707
    Height = 366
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 1
    Transparent = True
    object DBChart1: TDBChart
      Left = 0
      Top = 0
      Width = 629
      Height = 366
      AllowPanning = pmNone
      Title.Text.Strings = (
        'TOP 10 CLIENTES')
      BottomAxis.Visible = False
      LeftAxis.Visible = False
      Legend.Visible = False
      RightAxis.Visible = False
      TopAxis.Automatic = False
      TopAxis.AutomaticMaximum = False
      TopAxis.AutomaticMinimum = False
      TopAxis.Visible = False
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 15
      object Series2: TPieSeries
        Marks.Visible = False
        DataSource = Query_Clientes10
        XLabelsSource = 'CLIENTE'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loNone
        YValues.ValueSource = 'TOTAL'
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        Bevel.Bright = 173
        Bevel.UseBorder = False
        ExplodeBiggest = 20
        MultiPie = mpDisabled
        OtherSlice.Legend.Visible = False
        PiePen.Visible = False
      end
    end
    object RzPanel3: TRzPanel
      AlignWithMargins = True
      Left = 632
      Top = 3
      Width = 686
      Height = 360
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 1
      object DBChart2: TDBChart
        Left = 0
        Top = 31
        Width = 425
        Height = 329
        AllowPanning = pmNone
        BackWall.Transparent = False
        Gradient.Balance = 45
        Gradient.EndColor = clRed
        LeftWall.Visible = False
        Title.Font.Color = 8421440
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'SOLICITANTES')
        Title.Transparent = False
        AxisBehind = False
        AxisVisible = False
        ClipPoints = False
        Hover.Visible = False
        LeftAxis.Axis.Visible = False
        LeftAxis.Grid.Visible = False
        LeftAxis.Labels = False
        LeftAxis.LabelsFormat.Visible = False
        LeftAxis.Ticks.Visible = False
        LeftAxis.TickOnLabelsOnly = False
        LeftAxis.Visible = False
        Legend.Alignment = laBottom
        Legend.Font.Height = -8
        Legend.FontSeriesColor = True
        Legend.LeftPercent = 15
        Legend.LegendStyle = lsValues
        Legend.PositionUnits = muPercent
        Legend.ResizeChart = False
        Legend.TextStyle = ltsLeftPercent
        Legend.Title.Frame.Visible = False
        Legend.Title.TextFormat = ttfHtml
        Legend.Title.Transparent = False
        Legend.TopPercent = 75
        Legend.Visible = False
        RightAxis.Visible = False
        Shadow.Smooth = False
        Shadow.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.HorizOffset = -2
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DOptions.VertOffset = -9
        View3DWalls = False
        Zoom.Allow = False
        Zoom.Pen.Visible = False
        Align = alLeft
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          17
          15
          17)
        ColorPaletteIndex = 15
        object Series3: TBarSeries
          Legend.Visible = False
          Selected.Hover.Visible = False
          BarPen.Visible = False
          ColorEachPoint = True
          DataSource = Query_Solicitante
          ShowInLegend = False
          XLabelsSource = 'SOLICITANTE'
          Dark3D = False
          Emboss.Smooth = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'COUNT'
        end
      end
      object RzPanel4: TRzPanel
        Left = 0
        Top = 0
        Width = 686
        Height = 31
        Align = alTop
        BorderOuter = fsNone
        Color = clWhite
        TabOrder = 1
        object RzDBLookupComboBox1: TRzDBLookupComboBox
          Left = 0
          Top = 0
          Width = 686
          Height = 21
          Align = alTop
          KeyField = 'ID_CLIENTE'
          ListField = 'CLIENTE'
          ListSource = DS_QUERY_CLIENTE10
          TabOrder = 0
          OnClick = RzDBLookupComboBox1Click
        end
      end
      object DBGrid2: TDBGrid
        Left = 425
        Top = 31
        Width = 261
        Height = 329
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DS_Query_Atend_Cliente
        DrawingStyle = gdsClassic
        FixedColor = clActiveCaption
        Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RESPONSAVEL'
            Title.Alignment = taCenter
            Title.Caption = 'RESPONS'#193'VEL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 162
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'COUNT'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end>
      end
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 1336
      Top = 25
      Width = 368
      Height = 338
      Margins.Left = 15
      Margins.Top = 25
      Align = alRight
      BorderStyle = bsNone
      DataSource = DS_QUERY_CLIENTE
      DrawingStyle = gdsClassic
      FixedColor = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clMoneyGreen
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'CLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 273
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 109
          Visible = True
        end>
    end
  end
  object RzPanel5: TRzPanel
    Left = 0
    Top = 0
    Width = 1707
    Height = 57
    Align = alTop
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 2
    object Label1: TLabel
      Left = 30
      Top = 19
      Width = 36
      Height = 13
      Caption = 'Per'#237'odo'
    end
    object RzDateTimeEdit1: TRzDateTimeEdit
      Left = 72
      Top = 16
      Width = 161
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzDateTimeEdit2: TRzDateTimeEdit
      Left = 248
      Top = 16
      Width = 161
      Height = 21
      EditType = etDate
      TabOrder = 1
    end
    object RzBitBtn1: TRzBitBtn
      Left = 432
      Top = 13
      Caption = 'Filtrar'
      HotTrack = True
      TabOrder = 2
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object cxDBVerticalGrid1: TcxDBVerticalGrid
      AlignWithMargins = True
      Left = 1320
      Top = 0
      Width = 382
      Height = 54
      Margins.Top = 0
      Margins.Right = 5
      BorderStyle = cxcbsNone
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LayoutStyle = lsBandsView
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Black'
      OptionsView.ScrollBars = ssNone
      OptionsView.ShowEditButtons = ecsbFocused
      OptionsView.PaintStyle = psDelphi
      OptionsView.GridLineColor = clBackground
      OptionsView.RowHeaderWidth = 190
      OptionsView.GridLines = vglNone
      OptionsData.Appending = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsData.MultiThreadedFiltering = bFalse
      Navigator.Buttons.CustomButtons = <>
      ParentFont = False
      TabOrder = 3
      DataController.DataSource = DS_Query_Soma
      Version = 1
      object cxDBVerticalGrid1ATENDIMENTOS: TcxDBEditorRow
        Properties.Caption = 'TOTAL DE ATENDIMENTOS'
        Properties.DataBinding.FieldName = 'ATENDIMENTOS'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object cxDBVerticalGrid1ATENDIMENTO_CANCELADOS: TcxDBEditorRow
        Properties.Caption = 'CANCELADOS'
        Properties.DataBinding.FieldName = 'ATENDIMENTO_CANCELADOS'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
    end
  end
  object Query_Clientes: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select count(*)as total,CONTROLE_ATENDIMENTOS.cliente,id_cliente' +
        ' '
      'from CONTROLE_ATENDIMENTOS'
      
        'where ((cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:ini) an' +
        'd (cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:fim))'
      ' group by cliente,id_cliente order by  count(*) desc')
    Left = 873
    Top = 47
    ParamData = <
      item
        Name = 'INI'
        ParamType = ptInput
      end
      item
        Name = 'FIM'
        ParamType = ptInput
      end>
    object Query_ClientesTOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
    object Query_ClientesCLIENTE: TStringField
      Alignment = taCenter
      FieldName = 'CLIENTE'
      Size = 70
    end
    object Query_ClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
  end
  object DS_QUERY_CLIENTE: TDataSource
    DataSet = Query_Clientes
    Left = 881
    Top = 108
  end
  object Query_Clientes10: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select first 10 count(*)as total,CONTROLE_ATENDIMENTOS.cliente, ' +
        'ID_CLIENTE from CONTROLE_ATENDIMENTOS'
      
        'where ((cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:ini) an' +
        'd (cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:fim))'
      'group by cliente,ID_CLIENTE order by  count(*) desc')
    Left = 961
    Top = 47
    ParamData = <
      item
        Name = 'INI'
        ParamType = ptInput
      end
      item
        Name = 'FIM'
        ParamType = ptInput
      end>
    object Query_Clientes10TOTAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_Clientes10CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 121
    end
    object Query_Clientes10ID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
  end
  object DS_QUERY_CLIENTE10: TDataSource
    DataSet = Query_Clientes10
    Left = 961
    Top = 108
  end
  object Query_Solicitante: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select count(*),'
      'controle_atendimentos.solicitante'
      'from CONTROLE_ATENDIMENTOS'
      'where id_cliente =:c'
      
        'and ((cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:ini) and ' +
        '(cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:fim))'
      'group by solicitante order by  count(*) desc')
    Left = 1040
    Top = 47
    ParamData = <
      item
        Name = 'C'
        ParamType = ptInput
      end
      item
        Name = 'INI'
        ParamType = ptInput
      end
      item
        Name = 'FIM'
        ParamType = ptInput
      end>
    object Query_SolicitanteCOUNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = '"COUNT"'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_SolicitanteSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 30
    end
  end
  object DS_QUERY_SOLICITANTE: TDataSource
    DataSet = Query_Solicitante
    Left = 1040
    Top = 109
  end
  object Query_Atendente: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select count(*),CONTROLE_ATENDIMENTOS.responsavel '
      'from CONTROLE_ATENDIMENTOS '
      'where responsavel is not null '
      
        'and ((cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:ini) and ' +
        '(cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:fim)) '
      'group by responsavel order by  count(*) desc')
    Left = 776
    Top = 48
    ParamData = <
      item
        Name = 'INI'
        ParamType = ptInput
      end
      item
        Name = 'FIM'
        ParamType = ptInput
      end>
    object Query_AtendenteCOUNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = '"COUNT"'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_AtendenteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
  end
  object DS_Query_Atendente: TDataSource
    DataSet = Query_Atendente
    Left = 776
    Top = 112
  end
  object Query_Atend_Cliente: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select count(*),CONTROLE_ATENDIMENTOS.responsavel'
      'from CONTROLE_ATENDIMENTOS '
      'where responsavel is not null  and id_cliente =:c '
      'and'
      '((cast(CONTROLE_ATENDIMENTOS.data_hora as date) >=:ini)'
      'and (cast(CONTROLE_ATENDIMENTOS.data_hora as date) <=:fim))'
      'group by responsavel order by  count(*) desc,'
      'CONTROLE_ATENDIMENTOS.responsavel')
    Left = 1120
    Top = 48
    ParamData = <
      item
        Name = 'C'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'INI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FIM'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_Atend_ClienteCOUNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COUNT'
      Origin = '"COUNT"'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_Atend_ClienteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
  end
  object DS_Query_Atend_Cliente: TDataSource
    DataSet = Query_Atend_Cliente
    Left = 1139
    Top = 108
  end
  object Query_Soma: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select first 1 (select count(*) from controle_atendimentos where' +
        ' (cast(controle_atendimentos.data_hora as date)>=:i) and (cast(c' +
        'ontrole_atendimentos.data_hora as date)<=:f) ) as atendimentos,'
      
        '                (select count(*) from controle_atendimentos  whe' +
        're id_status = 9 and (cast(controle_atendimentos.data_hora as da' +
        'te)>=:i) and (cast(controle_atendimentos.data_hora as date)<=:f)' +
        ') as atendimento_cancelados'
      '                from controle_atendimentos'
      
        '                where (cast(controle_atendimentos.data_hora as d' +
        'ate)>=:i) and (cast(controle_atendimentos.data_hora as date)<=:f' +
        ')')
    Left = 763
    Top = 180
    ParamData = <
      item
        Name = 'I'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'F'
        DataType = ftDate
        ParamType = ptInput
      end>
    object Query_SomaATENDIMENTOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ATENDIMENTOS'
      Origin = 'ATENDIMENTOS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Query_SomaATENDIMENTO_CANCELADOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ATENDIMENTO_CANCELADOS'
      Origin = 'ATENDIMENTO_CANCELADOS'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DS_Query_Soma: TDataSource
    DataSet = Query_Soma
    Left = 771
    Top = 244
  end
  object Query_versao: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      
        'select count(*)AS TOTAL, funcionarios.nome from controle_atualiz' +
        'acoes'
      
        'left join funcionarios on funcionarios.id_funcionario = controle' +
        '_atualizacoes.id_funcionario'
      
        'where controle_atualizacoes.id_funcionario is not null and softw' +
        'are = '#39'COLISEU GESTAO'#39
      'AND cast(data as date)>=:I and cast(data as date)<=:F'
      'group by nome'
      'ORDER BY count(*) DESC')
    Left = 1144
    Top = 209
    ParamData = <
      item
        Name = 'I'
        ParamType = ptInput
      end
      item
        Name = 'F'
        ParamType = ptInput
      end>
    object Query_versaoTOTAL: TIntegerField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
    end
    object Query_versaoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
  end
  object DS_Query_Versao: TDataSource
    DataSet = Query_versao
    Left = 1136
    Top = 273
  end
end
