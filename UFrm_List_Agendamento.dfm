object Frm_List_Agendamento: TFrm_List_Agendamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'AGENDAMENTOS'
  ClientHeight = 688
  ClientWidth = 1355
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1355
    Height = 688
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    RaggedRight = True
    ScrollOpposite = True
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Agenda'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1347
        Height = 660
        Align = alClient
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 243
          Height = 658
          Margins.Left = 15
          Align = alLeft
          BevelOuter = bvNone
          ShowCaption = False
          TabOrder = 0
          object Panel4: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 237
            Height = 43
            Margins.Top = 20
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object RzToolButton1: TRzToolButton
              AlignWithMargins = True
              Left = 10
              Top = 5
              Width = 217
              Height = 33
              Cursor = crHandPoint
              Margins.Left = 10
              Margins.Top = 5
              Margins.Right = 10
              Margins.Bottom = 5
              GradientColorStyle = gcsSystem
              Images = ImageList1
              ShowCaption = True
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsGradient
              Action = Act_Agendamento
              Align = alClient
              ExplicitLeft = 2
              ExplicitTop = 0
              ExplicitWidth = 177
              ExplicitHeight = 35
            end
          end
          object MonthCalendar1: TMonthCalendar
            Left = 0
            Top = 66
            Width = 243
            Height = 160
            Align = alTop
            CalColors.BackColor = clWhite
            Date = 44285.585670196760000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object DBPlannerMonthView2: TDBPlannerMonthView
          Left = 244
          Top = 1
          Width = 1102
          Height = 658
          Cursor = crDefault
          Align = alClient
          AttachementGlyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888700078888888888708880788888888808808808888888880808080
            8888888880808080888888888080808088888888808080808888888880808080
            8888888880808080888888888080808088888888808080808888888888808080
            8888888888808880888888888888000888888888888888888888}
          BevelOuter = bvNone
          BorderWidth = 1
          CaptionColor = 16575452
          CaptionColorTo = 16571329
          CaptionHoverColor = clGradientActiveCaption
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clBlack
          CaptionFont.Height = -11
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = []
          Color = clWhite
          Completion.Font.Charset = DEFAULT_CHARSET
          Completion.Font.Color = clWindowText
          Completion.Font.Height = -11
          Completion.Font.Name = 'Arial'
          Completion.Font.Style = []
          DateFormat = 'dd/mm/yyyy'
          DayFont.Charset = DEFAULT_CHARSET
          DayFont.Color = clBlack
          DayFont.Height = -11
          DayFont.Name = 'Tahoma'
          DayFont.Style = []
          DefaultItem.CaptionBkg = 16109705
          DefaultItem.CaptionBkgTo = 16109705
          DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
          DefaultItem.CaptionFont.Color = clWindowText
          DefaultItem.CaptionFont.Height = -11
          DefaultItem.CaptionFont.Name = 'Tahoma'
          DefaultItem.CaptionFont.Style = []
          DefaultItem.ColorTo = clWhite
          DefaultItem.Cursor = -1
          DefaultItem.Font.Charset = DEFAULT_CHARSET
          DefaultItem.Font.Color = clWindowText
          DefaultItem.Font.Height = -11
          DefaultItem.Font.Name = 'Tahoma'
          DefaultItem.Font.Style = []
          DefaultItem.ItemBegin = 16
          DefaultItem.ItemEnd = 17
          DefaultItem.ItemPos = 0
          DefaultItem.Name = 'PlannerItem0'
          DefaultItem.SelectColor = 16571329
          DefaultItem.SelectColorTo = 16575452
          DefaultItem.Shadow = True
          DefaultItem.TrackColor = 16571329
          DefaultItem.TrackSelectColor = 11369558
          DeleteGlyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
            0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
            161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
            56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
            075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
            EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
            EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
            5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
            0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
          FocusColor = 16109705
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GradientStartColor = clNone
          HintPrevYear = 'Previous Year'
          HintPrevMonth = 'Previous Month'
          HintNextMonth = 'Next Month'
          HintNextYear = 'Next Year'
          InActiveColor = clWhite
          InversColor = clGray
          InversBkColor = 16575452
          Items = <>
          LineColor = 13542013
          Line3D = False
          MonthGradientStartColor = clWhite
          MonthGradientEndColor = clWhite
          NameOfDays.Monday = 'seg'
          NameOfDays.Tuesday = 'ter'
          NameOfDays.Wednesday = 'qua'
          NameOfDays.Thursday = 'qui'
          NameOfDays.Friday = 'sex'
          NameOfDays.Saturday = 's'#225'b'
          NameOfDays.Sunday = 'dom'
          NameOfDays.UseIntlNames = True
          NameOfMonths.January = 'jan'
          NameOfMonths.February = 'fev'
          NameOfMonths.March = 'mar'
          NameOfMonths.April = 'abr'
          NameOfMonths.May = 'mai'
          NameOfMonths.June = 'jun'
          NameOfMonths.July = 'jul'
          NameOfMonths.August = 'ago'
          NameOfMonths.September = 'set'
          NameOfMonths.October = 'out'
          NameOfMonths.November = 'nov'
          NameOfMonths.December = 'dez'
          NameOfMonths.UseIntlNames = True
          PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
          PrintOptions.FooterFont.Color = clWindowText
          PrintOptions.FooterFont.Height = -11
          PrintOptions.FooterFont.Name = 'Tahoma'
          PrintOptions.FooterFont.Style = []
          PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
          PrintOptions.HeaderFont.Color = clWindowText
          PrintOptions.HeaderFont.Height = -11
          PrintOptions.HeaderFont.Name = 'Tahoma'
          PrintOptions.HeaderFont.Style = []
          SelectColor = 16109705
          SelectFontColor = clBlack
          TabOrder = 1
          TodayColor = 16575452
          TodayColorTo = 16571329
          URLGlyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
            0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
            0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
            88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
            888887F8F8222208888888776888208888888887777778888888}
          WeekFont.Charset = DEFAULT_CHARSET
          WeekFont.Color = clWindowText
          WeekFont.Height = -11
          WeekFont.Name = 'Tahoma'
          WeekFont.Style = []
          WeekName = 'Wk'
          WeekendTextColor = 13542013
          Day = 30
          Month = 3
          Year = 2021
          Version = '3.1.0.2'
          TMSStyle = 11
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Todos Agendamentos'
      ImageIndex = 1
      object DBPlanner1: TDBPlanner
        Left = 0
        Top = 0
        Width = 1347
        Height = 660
        Align = alClient
        AttachementGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888700078888888888708880788888888808808808888888880808080
          8888888880808080888888888080808088888888808080808888888880808080
          8888888880808080888888888080808088888888808080808888888888808080
          8888888888808880888888888888000888888888888888888888}
        Caption.Title = ' '
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clBlack
        Caption.Font.Height = -13
        Caption.Font.Name = 'Verdana'
        Caption.Font.Style = []
        Caption.Background = 16575452
        Caption.BackgroundTo = 16571329
        DayNames.Strings = (
          'Sun'
          'Mon'
          'Tue'
          'Wed'
          'Thu'
          'Fri'
          'Sat')
        DefaultItem.CaptionBkg = 16109705
        DefaultItem.CaptionBkgTo = 16109705
        DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
        DefaultItem.CaptionFont.Color = clWindowText
        DefaultItem.CaptionFont.Height = -11
        DefaultItem.CaptionFont.Name = 'Tahoma'
        DefaultItem.CaptionFont.Style = []
        DefaultItem.CaptionType = ctTimeText
        DefaultItem.ColorTo = clWhite
        DefaultItem.Cursor = -1
        DefaultItem.Font.Charset = DEFAULT_CHARSET
        DefaultItem.Font.Color = clWindowText
        DefaultItem.Font.Height = -11
        DefaultItem.Font.Name = 'Tahoma'
        DefaultItem.Font.Style = []
        DefaultItem.ItemBegin = 16
        DefaultItem.ItemEnd = 17
        DefaultItem.ItemPos = 0
        DefaultItem.Name = 'PlannerItem0'
        DefaultItem.SelectColor = 16571329
        DefaultItem.SelectColorTo = 16575452
        DefaultItem.Shadow = True
        DefaultItem.TrackColor = 16571329
        DefaultItem.TrackSelectColor = 11369558
        DeleteGlyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
          0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
          161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
          56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
          075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
          EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
          EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
          5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
          0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
        Display.ActiveEnd = 40
        Display.CurrentPosFrom = 43
        Display.CurrentPosTo = 43
        Display.ColorActive = 16575452
        Display.ColorNonActive = clWhite
        Display.HourLineColor = 13542013
        Display.ShowCurrentItem = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Footer.Captions.Strings = (
          ''
          '')
        Footer.CompletionFormat = '%d%%'
        Footer.Color = 16645114
        Footer.ColorTo = 16643051
        Footer.Completion.Font.Charset = DEFAULT_CHARSET
        Footer.Completion.Font.Color = clWindowText
        Footer.Completion.Font.Height = -11
        Footer.Completion.Font.Name = 'Arial'
        Footer.Completion.Font.Style = []
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -11
        Footer.Font.Name = 'Tahoma'
        Footer.Font.Style = []
        GridLeftCol = 1
        GridLineColor = 16504504
        GridTopRow = 0
        Header.ActiveColor = 16575452
        Header.ActiveColorTo = 16571329
        Header.Captions.Strings = (
          ''
          '')
        Header.Color = 16645114
        Header.ColorTo = 16643051
        Header.CustomGroups = <>
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clBlack
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        Header.GroupHeight = 0
        Header.GroupFont.Charset = DEFAULT_CHARSET
        Header.GroupFont.Color = clWindowText
        Header.GroupFont.Height = -11
        Header.GroupFont.Name = 'Tahoma'
        Header.GroupFont.Style = []
        HintPause = 2500
        HTMLOptions.CellFontStyle = []
        HTMLOptions.HeaderFontStyle = []
        HTMLOptions.SidebarFontStyle = []
        HTMLOptions.ShowCaption = True
        Items = <>
        Mode.Month = 2
        Mode.PeriodStartDay = 25
        Mode.PeriodStartMonth = 3
        Mode.PeriodStartYear = 2021
        Mode.PeriodEndDay = 12
        Mode.PeriodEndMonth = 5
        Mode.PeriodEndYear = 2021
        Mode.TimeLineStart = 44280.000000000000000000
        Mode.TimeLineNVUBegin = 0
        Mode.TimeLineNVUEnd = 0
        Mode.Year = 2021
        Mode.Day = 10
        Sidebar.ActiveColor = 16575452
        Sidebar.ActiveColorTo = 16571329
        Sidebar.Background = 16645114
        Sidebar.BackgroundTo = 16643051
        Sidebar.Font.Charset = DEFAULT_CHARSET
        Sidebar.Font.Color = clBlack
        Sidebar.Font.Height = -11
        Sidebar.Font.Name = 'Arial'
        Sidebar.Font.Style = []
        Sidebar.HourFontRatio = 1.800000000000000000
        Sidebar.LineColor = 13542013
        Sidebar.Occupied = clWhite
        Sidebar.OccupiedTo = clWhite
        Sidebar.OccupiedFontColor = clBlack
        Sidebar.SeparatorLineColor = 13542013
        Positions = 1
        PositionProps = <>
        PrintOptions.LineWidth = 0
        PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
        PrintOptions.FooterFont.Color = clWindowText
        PrintOptions.FooterFont.Height = -11
        PrintOptions.FooterFont.Name = 'Tahoma'
        PrintOptions.FooterFont.Style = []
        PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
        PrintOptions.HeaderFont.Color = clWindowText
        PrintOptions.HeaderFont.Height = -11
        PrintOptions.HeaderFont.Name = 'Tahoma'
        PrintOptions.HeaderFont.Style = []
        SelectColor = 16109705
        TrackColor = 16571329
        URLGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
          0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
          0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
          88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
          888887F8F8222208888888776888208888888887777778888888}
        Version = '3.4.5.0'
        ItemSource = DBDaySource1
        TMSStyle = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 51
        Width = 1341
        Height = 606
        Cursor = crHandPoint
        Margins.Top = 10
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = cl3DDkShadow
        TitleFont.Height = -11
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'AGENDADO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENDAMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 167
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALHE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 227
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESPONSAVEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 278
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 123
            Visible = True
          end>
      end
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 1347
        Height = 41
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 1
        object Label1: TLabel
          Left = 366
          Top = 9
          Width = 30
          Height = 13
          Caption = 'Status'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 207
          Top = 9
          Width = 6
          Height = 13
          Caption = #224
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 37
          Top = 8
          Width = 37
          Height = 13
          Caption = 'Per'#237'odo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object RzBitBtn1: TRzBitBtn
          Left = 556
          Top = 3
          Width = 88
          Height = 31
          Cursor = crHandPoint
          FrameColor = 1350640
          Action = Act_Filtrar
          Caption = 'Filtrar'
          Color = clGrayText
          HighlightColor = clWhite
          HotTrack = True
          HotTrackColor = 33023
          LightTextStyle = True
          TextShadowColor = clWhite
          TextShadowDepth = 0
          TabOrder = 0
          ThemeAware = False
          ImageIndex = 5
        end
        object RzComboBox1: TRzComboBox
          Left = 402
          Top = 4
          Width = 145
          Height = 22
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '<TODOS>'
          Items.Strings = (
            'AGENDADO'
            'FINALIZADO'
            'EM VISITA'
            'CANCELADO'
            '<TODOS>')
          ItemIndex = 4
          Values.Strings = (
            'AND CONTROLE_LISAGENDAMENTO.ID_status = 1'
            'AND CONTROLE_LISAGENDAMENTO.ID_status = 2'
            'AND CONTROLE_LISAGENDAMENTO.ID_status = 3'
            'AND CONTROLE_LISAGENDAMENTO.ID_status = 9'
            '    ')
        end
        object RzDateTimeEdit2: TRzDateTimeEdit
          Left = 219
          Top = 6
          Width = 121
          Height = 21
          EditType = etDate
          FlatButtonColor = clWhite
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameHotStyle = fsNone
          FrameStyle = fsLowered
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 2
        end
        object RzDateTimeEdit1: TRzDateTimeEdit
          Left = 80
          Top = 6
          Width = 121
          Height = 21
          EditType = etDate
          FlatButtonColor = clWhite
          FlatButtons = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FrameHotStyle = fsNone
          FrameStyle = fsLowered
          FramingPreference = fpCustomFraming
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'TabSheet7'
      ImageIndex = 3
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1347
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 0
        object RzComboBox2: TRzComboBox
          AlignWithMargins = True
          Left = 20
          Top = 3
          Width = 304
          Height = 21
          Margins.Left = 20
          Align = alLeft
          TabOrder = 0
          OnSelect = RzComboBox2Select
        end
        object RzComboBox3: TRzComboBox
          AlignWithMargins = True
          Left = 330
          Top = 3
          Width = 112
          Height = 21
          Align = alLeft
          TabOrder = 1
          OnSelect = RzComboBox3Select
          Items.Strings = (
            'JAN'
            'FEV'
            'MAR'
            'ABR'
            'MAI'
            'JUN'
            'JUL'
            'AGO'
            'SET'
            'OUT'
            'NOV'
            'DEZ')
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12')
        end
        object Edit1: TEdit
          AlignWithMargins = True
          Left = 448
          Top = 3
          Width = 57
          Height = 21
          Align = alLeft
          TabOrder = 2
          Text = '2021'
          OnExit = Edit1Exit
        end
      end
      object DBPlannerMonthView1: TDBPlannerMonthView
        Left = 0
        Top = 27
        Width = 1347
        Height = 633
        Cursor = crDefault
        Align = alClient
        AttachementGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888700078888888888708880788888888808808808888888880808080
          8888888880808080888888888080808088888888808080808888888880808080
          8888888880808080888888888080808088888888808080808888888888808080
          8888888888808880888888888888000888888888888888888888}
        AutoThemeAdapt = True
        BevelOuter = bvNone
        BorderWidth = 1
        CaptionColor = 16575452
        CaptionColorTo = 16571329
        CaptionGradientDirection = gdVertical
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clBlack
        CaptionFont.Height = -20
        CaptionFont.Name = 'Calibri'
        CaptionFont.Style = [fsUnderline]
        Color = clWhite
        ColorCurrent = clWhite
        Completion.Font.Charset = DEFAULT_CHARSET
        Completion.Font.Color = clWindowText
        Completion.Font.Height = -11
        Completion.Font.Name = 'Arial'
        Completion.Font.Style = []
        DateFormat = 'dd/mm/yyyy'
        DayFont.Charset = DEFAULT_CHARSET
        DayFont.Color = clBlack
        DayFont.Height = -11
        DayFont.Name = 'Tahoma'
        DayFont.Style = []
        DefaultItem.CaptionBkg = 16109705
        DefaultItem.CaptionBkgTo = 16109705
        DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
        DefaultItem.CaptionFont.Color = clWindowText
        DefaultItem.CaptionFont.Height = -11
        DefaultItem.CaptionFont.Name = 'Calibri'
        DefaultItem.CaptionFont.Style = []
        DefaultItem.ColorTo = clWhite
        DefaultItem.Cursor = -1
        DefaultItem.Font.Charset = DEFAULT_CHARSET
        DefaultItem.Font.Color = clWindowText
        DefaultItem.Font.Height = -11
        DefaultItem.Font.Name = 'Tahoma'
        DefaultItem.Font.Style = []
        DefaultItem.ItemBegin = 16
        DefaultItem.ItemEnd = 17
        DefaultItem.ItemPos = 0
        DefaultItem.Name = 'PlannerItem0'
        DefaultItem.Shape = psRounded
        DefaultItem.SelectColor = 16571329
        DefaultItem.SelectColorTo = 16575452
        DefaultItem.Shadow = True
        DefaultItem.TrackColor = 16571329
        DefaultItem.TrackSelectColor = 11369558
        DeleteGlyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
          0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
          161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
          56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
          075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
          EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
          EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
          5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
          0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
        FocusColor = 16109705
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GradientStartColor = clNone
        HintPrevYear = 'Ano Anterior'
        HintPrevMonth = 'M'#234's Anterior'
        HintNextMonth = 'Pr'#243'ximo M'#234's'
        HintNextYear = 'Pr'#243'ximo Ano'
        InActiveColor = clWhite
        InversColor = clGray
        InversBkColor = 16575452
        Items = <>
        LineColor = 13542013
        Line3D = False
        MonthGradientStartColor = clWhite
        MonthGradientEndColor = clWhite
        NameOfDays.Monday = 'seg'
        NameOfDays.Tuesday = 'ter'
        NameOfDays.Wednesday = 'qua'
        NameOfDays.Thursday = 'qui'
        NameOfDays.Friday = 'sex'
        NameOfDays.Saturday = 's'#225'b'
        NameOfDays.Sunday = 'dom'
        NameOfDays.UseIntlNames = True
        NameOfMonths.January = 'jan'
        NameOfMonths.February = 'fev'
        NameOfMonths.March = 'mar'
        NameOfMonths.April = 'abr'
        NameOfMonths.May = 'mai'
        NameOfMonths.June = 'jun'
        NameOfMonths.July = 'jul'
        NameOfMonths.August = 'ago'
        NameOfMonths.September = 'set'
        NameOfMonths.October = 'out'
        NameOfMonths.November = 'nov'
        NameOfMonths.December = 'dez'
        NameOfMonths.UseIntlNames = True
        PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
        PrintOptions.FooterFont.Color = clWindowText
        PrintOptions.FooterFont.Height = -11
        PrintOptions.FooterFont.Name = 'Tahoma'
        PrintOptions.FooterFont.Style = []
        PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
        PrintOptions.HeaderFont.Color = clWindowText
        PrintOptions.HeaderFont.Height = -11
        PrintOptions.HeaderFont.Name = 'Tahoma'
        PrintOptions.HeaderFont.Style = []
        SelectColor = 16109705
        SelectFontColor = clBlack
        ShowCaption = False
        ShowCurrent = True
        ShowCurrentItem = True
        ShowScrollColumn = True
        ShowToday = True
        ShowWeeks = True
        TabOrder = 1
        TodayColor = 16575452
        TodayColorTo = 16571329
        TodayStyle = tsCaption
        URLGlyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
          0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
          0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
          88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
          888887F8F8222208888888776888208888888887777778888888}
        WeekFont.Charset = DEFAULT_CHARSET
        WeekFont.Color = clWindowText
        WeekFont.Height = -11
        WeekFont.Name = 'Tahoma'
        WeekFont.Style = []
        WeekName = 'Wk'
        WeekendTextColor = 13542013
        Day = 18
        Month = 3
        Year = 2021
        Version = '3.1.0.2'
        OnItemDblClick = DBPlannerMonthView1ItemDblClick
        OnItemSelect = DBPlannerMonthView1ItemSelect
        OnDaySelect = DBPlannerMonthView1DaySelect
        OnDblClick = DBPlannerMonthView1DblClick
        OnDateChange = DBPlannerMonthView1DateChange
        OnAllDaySelect = DBPlannerMonthView1AllDaySelect
        DataBinding.StartTimeField = 'data_hora_agenda'
        DataBinding.EndTimeField = 'data_hora_FINAL'
        DataBinding.KeyField = 'ID'
        DataBinding.NotesField = 'RESPONSAVEL'
        DataBinding.SubjectField = 'cliente'
        DataSource = DS_Calendario
        TMSStyle = 11
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 368
    Top = 152
    object Act_Agendamento: TAction
      Caption = 'Agendar - F4'
      ImageIndex = 6
      ShortCut = 115
      OnExecute = Act_AgendamentoExecute
    end
    object Act_Sair: TAction
      Caption = 'Sair - Esc'
      ImageIndex = 4
      ShortCut = 27
      OnExecute = Act_SairExecute
    end
    object Act_Filtrar: TAction
      Caption = 'Filtrar'
      ImageIndex = 5
      OnExecute = Act_FiltrarExecute
    end
    object Act_Alterar: TAction
      Caption = 'Alterar'
      Hint = 'Alterar Registro - F6'
      ShortCut = 117
      OnExecute = Act_AlterarExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar Atendimento'
      ShortCut = 120
      OnExecute = Act_CancelarExecute
    end
    object Act_Atender: TAction
      Caption = 'Act_Atender'
      Hint = 'Visualizar / Inicializar Atendimento - F8'
      ShortCut = 119
      OnExecute = Act_AtenderExecute
    end
    object Act_EmVisita: TAction
      Caption = 'Em Visita'
      ShortCut = 118
      OnExecute = Act_EmVisitaExecute
    end
  end
  object ImageList1: TImageList
    AllocBy = 30
    DrawingStyle = dsTransparent
    Height = 25
    Width = 25
    Left = 816
    Top = 152
    Bitmap = {
      494C0101070098005C0019001900FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000064000000320000000100200000000000204E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004450034386B005457830076799C009799B400B9BBCC00D8D9
      E300F5F6F8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9EBDE00248B3F001F88
      3A0098C8A4000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C317C000C317C000C317C00000A4D003B68AC003359
      9D00315296002B488C0021397D0015286C000A185C00020C4F00010D51000312
      570004165D00061C650007236B00092872000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00A5D2B400279E58003AB3760021974E0062AD770000000000E7F3
      EA00000000000000000000000000000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A317D000C0D
      0F000C0D0F00001156004477BB004F82C7005A8DD2006295DA006699DE006598
      DD00679ADF006497DC006295DA005787CC00426EB3002E5599001D3F84000012
      5700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00A3D2B30033AB680053CD
      970045BF8500249A520035975300000000000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C3582000E1012000E0F1200001861003467AB003164
      A800396CB0003F72B600487BBE005184C8005A8DD2005A8DD2005E91D6005E91
      D6005689CE004679BD003D70B400001962000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFF
      FF00F7FCFA00D9F1E60035AE6D0052CD970051CD950046C2880029A15C003498
      5400000000000000000000000000000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464FF006464
      FF006464FF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464
      FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E3986001012
      140011111400001F6A003366AA00295CA000295CA000285B9F00275A9E00376A
      AC006295DB00315FAB0025589C00275A9E002A5DA1003063A600396CB0000020
      6B00000000000000000000000000000000000000000000000000000000000000
      0000E6F3EA0059AF77002D9D5700289E57002AA25D0033AB690039B474004AC6
      8F0048C58E0048C58E0045C1880028A15F005DAD780000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF006464FF009896F900FAF2EF00FAF2EF006464FF006464FF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9FC
      FA000000000000000000113F8B00131417001313170000226D003467AB002A5D
      A1002B5EA2002B5EA2002B5EA2003363A9005F92D700305EA8002B5EA2002B5E
      A2002B5EA2002B5CA0003A6CB10000236E000000000000000000000000000000
      00000000000000000000EBF5EE005EB17B0028A05A003AB4750047C3880048C5
      8C0045C38A0044C2890044C28B0040BE87003FBD86003FBC85003DBB840041BE
      870028A362004EA66D0000000000000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464FF009794FA00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464
      FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000002FE6000000000000000000134290001516
      1A0014161A00002470003467AB002A5DA1002B5EA2002B5EA2002A5DA1002E5C
      A2005A8DD2002E5CA5002B5EA2002B5EA2002B5EA200265599003B6DB2000025
      71000000000000000000000000000000000000000000E1F0E70035A05D0038B4
      740047C58C0042C189003EBC85003DBB83003CBA83003BB9810039B8800038B7
      7F0038B67E0037B57E0036B47C0034B27A0037B57D0019904900000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464FF006565
      FF00FAF2EF00FAF2EF00FAF2EF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000002F
      E6000018DA00000000001646940017181D0016191E00002672003467AB00295C
      A0002B5EA2002B5EA200295B9F0028569B005588CD002C59A2002B5EA2002B5E
      A2002B5EA200235094003D6FB400012773000000000000000000000000000000
      0000F3F9F50037A05F003BB77A0040BF870038B77F0037B67E0036B57D0035B5
      7C0034B37B0033B37A0032B1790031B0780030AF77002EAE75002EAD75002DAC
      740026A56B001489430000000000000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464
      FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000002FE6001569FF000109CB00184A9A00191B
      2100191B2000002875003568AC00295CA0002B5EA2002B5EA20024529700204A
      90005083C8002B579F002B5EA2002B5EA2002B5DA1001E488C003E70B5000129
      7600000000000000000000000000000000007BBE92002DA866003ABA810030B0
      780031B178002FAF75002BAA6F0027A46700219D5D00209D5E00209C5B0029A9
      700029A9700027A76F0028A86F001C995E001289430097C9A900000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF007E7DFC006464FF006464FF006464FF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000033EE000033EE000033EE00002F
      E6001669FF00095EFE000400B4001B1E23001B1E2300002A78003669AD00295C
      A000295B9F002452960019408500163C84004B7EC30028549D002B5EA2002A5C
      A0002350940013387B004072B700012B79000000000000000000000000000000
      00002798520033B275002AAB72002AAB720023A164001B965100198E47002793
      4F0050A76F003C9E6100148E4A0023A46B0022A36A0021A26A00139254001A8B
      45008DC6A10083BD9700E1EFE500000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464
      FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000033EE005DA2FF003F87FF002876FF001569FF00095EFE000055FE000800
      9D001E202600002C7A002B599F001D478A001B448800153B7F000E2C70000E2E
      7500487BC00026529A001D498D001A43870013367A000B286C004274B900012D
      7B0000000000000000000000000000000000189149002BAC720023A56B001A96
      56002793500090C6A200F6FBF80000000000FEFEFE009DCDAE00108C48001EA0
      67001B9D64000D8B4B00298C4D000000000070B48900097D37008AC29D000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464FF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000033EE00599FFF004089FF002874
      FF001568FF00095EFE000055FE000052FD0007008100002E7D00142669001426
      6900477ABF00477ABF00477ABF00477ABF00477ABF00477ABF00477ABF00477A
      BF00477ABF00477ABF004376BB00012F7E000000000000000000000000000000
      0000138D46001EA066001593520058AB750000000000D3E7DA00429760000978
      32005EA777009BCBAB000C884400149558000C85430052A36E000000000099CB
      A900198A49001088470068B28300000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00D0CAF4006464FF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF006464FF00FAF2EF006464FF006464FF00FAF2EF006464
      FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000033EE005DA2FF003F87FF002876FF001568FF00095DFE000055FE000052
      FD0007008100002F7F003166B4005287D100315EAA00315FAA00305EA9003361
      AC00477ABF00315FAA00305DA800305DA900305EA800305DA9004578BD000130
      800000000000000000000000000000000000138A43001391520042A06300FEFE
      FE00B5D7C0001E8545000D8549000E8A4C0036975C00B5D8C0001C8643001883
      410085BE980000000000B6D9C20023904F00179258001891550064B181000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF006464FF00FAF2EF00FAF2EF00FAF2EF006464FF006464FF00FAF2
      EF00FAF2EF006464FF006464FF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000033EE005DA2FF004089FF002876
      FF001669FF00095DFE000055FE0008009D0025282F00003182006EA1E80080B3
      F800285B9F00285B9F002A5DA0003366A8004C7FC40026529A00285B9F00285B
      9F00285B9F002B5EA200477ABF00013283000000000000000000000000000000
      00003498580013864200F3F9F50092C5A3000B7C3900118F53001C9861001691
      5500389A5E00DFEEE4000000000000000000D0E7D80053A77000168C47001C97
      5C0025A16A00229C5E0067B48300000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464FF006464
      FF006464FF006464FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006464
      FF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000033EE000033EE000033EE00002CE6001569FF00095DFE000400B400282A
      3200272A320000338400386BAF0024579B00275A9E00275A9E00275A9E002F60
      A4005487CC002B57A000275A9E00275A9E00275A9E0024559900497CC1000134
      850000000000000000000000000000000000B9DAC50076B98D0068B181000C86
      420018965C00209E6700229F68001A965A001F8F4C004EA56D00419F63001C8D
      4600158D46001D97570025A2690027A56D002EAB730026A15E007BBE93000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000002C
      E6001668FF000109CB002560B1002A2D3500292C350000358600386BAF002457
      9B0026599D0026599D0025589C002C5BA0005E91D6002D5BA40026599D002558
      9C0024579B00204F92004A7DC200013687000000000000000000000000000000
      00000000000046A06700108B4A0022A0670028A66E0027A56E0028A76F0025A2
      66001F995900209A5B00229D5F0028A46A002CAA70002FAD75002FAD750033B2
      7A0037B378003AA46400C5E2CE00000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000002CE6000018DA00000000002560B1002B2F
      37002B2F370000368900386BAF002255990025589C0025589C0024569A002856
      9C00699CE100325FAA0024579B0024579B0024579B001B478A004C7FC4000137
      8A000000000000000000000000000000000000000000189352002CAC74002EAD
      75002EAD75002FAE760030AF770032B1790033B27A0033B37A0035B47C0036B5
      7D0036B57D0037B67E003BBA820040BF86002DA7630084C39900000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000002C
      E60000000000000000002560B1002D313A002D313A0000388B00386BAF002154
      980024579B0024579B00205093002550970073A6EB003563AF0023569A002356
      9A0021539700163D80004D80C50001398C000000000000000000000000000000
      00000000000025A1610039B9800035B57D0037B77F0039B9800039B980003ABA
      81003BBB83003CBC84003DBD85003EBE850041C1880047C78E0044C186002CA5
      600078BE90000000000000000000000000000000000000000000F6EAE400F6EA
      E400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EA
      E400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EA
      E400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002560B1003032
      3C002F323D0000398C00386BAF00205397002356990020519400163F81001C44
      8B007CAFF4003868B4002255990021529600184285000C2B6C004E81C700013A
      8D0000000000000000000000000000000000000000002899560037B77A0043C4
      8B003FC0880041C2890041C2890045C58D0046C78E0046C78D0049CA90004BCA
      900043C2840032AE6B0033A15D00A2D1B2000000000000000000000000000000
      000000000000000000006464FF006464FF006464FF006464FF006464FF006464
      FF006464FF006464FF006464FF006464FF006464FF006464FF006464FF006464
      FF006464FF006464FF006464FF006464FF006464FF006464FF006464FF006464
      FF006464FF006464FF006464FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002560B10031353E0030353E00003B8E003668AC00194A
      8E00184588001136770008225E001030780082B5FA003C6DBA00143D7E00153C
      7F0013357900113178005386CC00013C8F000000000000000000000000000000
      000000000000B9DCC400319E5B0039B779004CCE95004BCD94004CCE950046C6
      8A0036B26F0030AB660029A35B00279E560038A25F0099CDAB00000000000000
      00000000000000000000000000000000000000000000000000006464FF006464
      FF005A55D200D2B9AF005A55D2006464FF006464FF006464FF006464FF006464
      FF006464FF006464FF006464FF006464FF006464FF006464FF006464FF006464
      FF006464FF006464FF005A55D200D2B9AF005A55D2006464FF006464FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002560B1003237
      3F0032373F00003C90003564AB0025519700315FA7003D6DB700487AC800578A
      D90074A7EC007CAFF40084B7FC0083B6FB007AADF2006A9DE2005E91D600013D
      9100000000000000000000000000000000000000000000000000A3D0B0001B91
      45003BB9790051D4990056D9A0004ACB8E0064C08C00F1FBF700FDFFFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006464FF006464FF006160F300D2B9AF005A55D2006464
      FF006464FF006464FF006464FF006464FF006464FF006464FF006464FF006464
      FF006464FF006464FF006464FF006464FF006464FF006464FF005A55D200D2B9
      AF006160F3006464FF006464FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002560B1003438410034384100003D91006497DC0070A3
      E8007BAEF30083B6FB0088BBFF0085B8FD0083B6FB0083B6FB0078ACF2006398
      E000497FCA003069B5001C57A600013E92000000000000000000000000000000
      0000000000000000000000000000A4D0B000198F410036B3700055D89E004BCC
      8F004EB17400E0EFE40000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006464FF006464
      FF006464FF00E2CFC7006464FF006464FF006464FF006464FF006464FF006464
      FF006464FF006464FF006464FF006464FF006464FF006464FF006464FF006464
      FF006464FF006464FF006464FF00E2CFC7006464FF006464FF006464FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002560B1002560
      B1002560B100003E93005388D000437BC5003C75C100316BB900215DAD00124E
      A1000542970003419500084599000D4A9D00134FA2001854A7001E5AAB00235E
      AF00000000000000000000000000000000000000000000000000F2F8F400FEFE
      FE00C2DFCA002F98510032AE6B0037B573004DAE7300E1F0E500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2CFC700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2CF
      C700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000044396003D6DAE005F87
      BC0083A2CB00A9BFDB00CBD8EA00EDF2F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBECDF0055A56A000A7D
      280074B68500FDFEFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0D2A000F0D2A000F0D2A000F0D2A000FAE1B400FAE1B400FAE1
      B400FAE1B400FAE1B400FAE1B4009F8C7A006E5D5B009F8C7A00FAE1B400F0D2
      A000F0D2A000F0D2A000F5D9A900FAE1B400F0D2A000F0D2A000F0D2A000F0D2
      A000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AC968F00AC96
      8F00AC968F00AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30000000000000000000000000000000000F0D2A000F0D2A000F0D2
      A000F0D2A000FAE1B400FAE1B400FAE1B400FAE1B400FAE1B400FAE1B400FAE1
      B4006E5D5B00FAE1B400FAE1B400FAE1B400FAE1B400FAE1B400FAE1B400FAE1
      B400F0D2A000F0D2A000F0D2A000F0D2A0000000000000000000000000000000
      0000000000000000000000000000FFFEFD00FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFFF
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000936745009367450093674500936744009367440000000000895E
      3A00815832007B522B00774F2600764E2400744C2300744C2300764E2400784F
      27007C522B0081583200895E3A0093674500FFFFFF00FFFFFF00000000000000
      000000000000E2CFC700E2CFC700AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30000000000000000000000
      000000000000F0D2A000F0D2A000F0D2A000F0D2A000FAE1B400FAE1B400FAE1
      B400FAE1B400FAE1B400FAE1B400FAE1B4006E5D5B00FAE1B400FAE1B400FAE1
      B400FAE1B400FAE1B400FAE1B400FAE1B400F0D2A000F0D2A000F0D2A000F0D2
      A000000000000000000000000000000000000000000000000000FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB840000000000000000000000
      0000000000000000000094674500E3CAAD00E3CAAD00E4CAAD00E3CBAD00E2CA
      AC00CAAF8E00A07F59008C693F00906A3D00A9835600B8936500C5A17300A07B
      4E00E0DFDE00E0DFDE00A17B4E00C8A37500BC976900AC875A00936D40007F58
      2D00AD977D00E2DAD10000000000000000000000000000000000AC968F00AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30000000000000000000000000000000000F0D2A000F0D2A000F0D2
      A000FAE1B400FAE1B400FAE1B400FAE1B400FAE1B400F0D2A000F1D3A200FAE1
      B40066565400FAE1B400F1D3A200F0D2A000FAE1B400FAE1B400FAE1B400FAE1
      B400FAE1B400F0D2A000F0D2A000F0D2A0000000000000000000000000000000
      000000000000FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB84000000000000000000000000000000000095694500E4CB
      AE00E4CBAE00A073480098693F00B79067007E592E00A6815400C19E7000D2AF
      8200D6B48600D9B78900DAB88A00A8845600EAEAEA00EAEAEA00A8845600DAB8
      8A00D9B78900D7B58700D4B18300C5A17400AA855700815C3400000000000000
      000000000000E2CFC700E2CFC700AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30000000000000000000000
      000000000000F0D2A000F3D6A600FAE1B400FAE1B400FAE1B400FAE1B400FAE1
      B400FAE0B300F0D2A000F0D2A000F0D2A00062525100F0D2A000F0D2A000F0D2
      A000FAE0B300FAE1B400FAE1B400FAE1B400FAE1B400FAE1B400F3D6A600F0D2
      A00000000000000000000000000000000000FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB84000000
      0000000000000000000097694600E5CDB100E5CDB100E6C39600D6AA70009C6F
      45008C683D00B9956700DDBB8E00DDBB8E00DDBB8E00DDBB8E00DDBB8E00AB87
      5800F3F3F300F3F3F300AB875800DDBB8E00DDBB8E00DDBB8E00DDBB8E00DDBB
      8E00B99668008563390000000000000000000000000000000000AC968F00AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C3000000000000000000000000000000000000000000FAE1B400FAE1
      B400FAE1B400FAE1B400FAE1B400FAE1B400F0D2A000F0D2A000F0D2A000F0D2
      A00078AFE600F0D2A000F0D2A000F0D2A000F0D2A000FAE1B400FAE1B400FAE1
      B400FAE1B400FAE1B400FAE1B40000000000000000000000000000000000FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB84005870
      FF005870FF005870FF005870FF005870FF00FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB84000000000000000000986A4600E5CF
      B300E5CFB300FDE8CF00F4D9B800A87D5200C3A886008A643400CEAC7E00DFBE
      9100DFBE9100DFBE9100DFBE9100AD895A00FAFAFA00FAFAFA00AD895A00DFBE
      9100DFBE9100DFBE9100DFBE9100CDAB7E008A643400C4B4A000000000000000
      00000000000000000000AC968F00AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30000000000000000000000
      00000000000000000000000000000000000000000000FAE1B400FAE1B400FAE1
      B400F0D2A000F0D2A000E2CEA80078AFE60078AFE60078AFE600E2CEA800F0D2
      A000F0D2A000FAE1B400FAE1B400FAE1B4000000000000000000000000000000
      00000000000000000000FFFEFD00FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB84005870FF005870FF005870FF005870FF00FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFFFFE00000000009A6B4700E6D1B600E6D1B600E6D0B500E6D0B600E6D0
      B600E6CFB6009D7C540096704100D9B98B00E1C19400E1C19400E1C19400AF8B
      5D00FFFFFF00FFFFFF00AF8B5D00E1C19400E1C19400E1C19400D9B88B009670
      41009A7D5900FEFEFE0000000000000000000000000000000000AC968F00AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1D6A800F0D2A0007CA1CD006E9BD2006E9B
      D2006E9BD2006E9BD20078AFE60085B3DF00F0D2A000F1D6A800000000000000
      0000000000000000000000000000000000000000000000000000FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB84005870FF005870FF005870FF005870
      FF00FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400000000009A6C4800E7D2
      B900E7D2B900A073480098693F00B9926B00E7D2B900E3CEB4009B784D00946E
      3D00D2B08300E3C39600E3C39600B18D5E00BBBBBB00BBBBBB00B18D5E00E3C3
      9600E3C39600D2B08300946E3D0081572800F6F3EF00FFFFFF00000000000000
      00000000000000000000AC968F00AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E9BD20078AFE60078AFE60087C0F00087C0F00087C0F00078AF
      E600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFDB8400FFDB8400FFDB8400FFDB8400FFDB84005870
      FF005870FF005870FF005870FF00FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB84005E4A3200FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400000000009C6E4800E7D4BD00E7D4BD00E6C39600D6AA70009C6F
      4600E7D4BD00E7D4BD00AF7E5800956539008E653400BE9B6C00DDBD9000B08C
      5C0088BBEA0088BBEA00B28E5E00DDBD9000BE9B6C00936D3D00B49773009C6C
      4600FFFFFF00FFFFFF00000000000000000000000000E2CFC700E2CFC700AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30077E5
      C00078E6C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000078AFE60078AFE60087C0
      F00087C0F00087C0F00087C0F00087C0F0000000000000000000000000000000
      00000000000000000000000000000000000000000000FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB84005870FF005870FF005870FF005870FF00FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB84006C5739005E4A32005E4A
      3200FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB84009F6E4900E8D7
      C000E8D7C000FDE8CF00F4D9B800A87D5300E8D6C000E8D6C100E8D7C100E8D7
      C000DDCAB000B1A3900075858E005A7D9A00597C99005B7D9B00597C99007483
      8D00AEA08A00DCC7AE00E8D6C0009F6F4800FFFFFF00FFFFFF00000000000000
      00000000000000000000AC968F00AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30083E4C30078E6C30078E6C30078E6C30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000078AFE60078AFE60087C0F00087C0F00087C0F0006E5D5B006E5D5B005546
      4600554646000000000000000000000000000000000000000000000000000000
      000000000000FFDB8400FFDB8400FFDB8400FFDB8400FFDB84005870FF005870
      FF005870FF005870FF005870FF00FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB84005E4A32005E4A32005E4A3200C4A66600FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400A06F4A00E9D9C400E9D9C400E9D9C300E9D9C400E9D9
      C400E9D9C400E9D9C400E9D9C400E9D9C400DAD0C100B5BABB007A9FC1007DAE
      DB0078ABDA0076A9D8006193C0006E98BD00B4BABA00DACFC100E9D8C300A070
      4A00FFFFFF00FFFFFF00000000000000000000000000E2CFC700E2CFC700AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E5C20078E6C30078E6
      C30078E6C300FAE1B40000000000000000000000000000000000000000000000
      000000000000000000000000000078AFE60078AFE60078AFE60087C0F00087C0
      F00087C0F00087C0F00087C0F00087C0F00087C0F00055464600000000000000
      00000000000000000000000000000000000000000000FFDB8400FFDB8400FFDB
      8400FFDB84005870FF005870FF005870FF005870FF005870FF005870FF005870
      FF00FFDB8400FFDB8400FFDB8400FFDB84005E4A32005E4A32005E4A32005E4A
      32005E4A3200FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400A2714B00EBDA
      C700EBDAC700A073480098693F00BA946E00EADBC700EADBC700DCC4AD00DAC2
      AA0095A0AA007B9AB70091BEE7008DBEEB0089BCEA0087BAE90075A8D6005A8C
      BB007296B6009EADB800EADBC600A1704A00FFFFFF00FFFFFF00000000000000
      00000000000000000000AC968F00AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C300FAE1B400000000000000
      00000000000000000000000000000000000000000000000000000000000078AF
      E60078AFE60078AFE60087C0F00087C0F00087C0F00087C0F00087C0F00087C0
      F00087C0F00087C0F00000000000000000000000000000000000000000000000
      000000000000FFDB8400FFDB8400FFDB8400FFDB84005870FF005870FF005870
      FF005870FF005870FF005870FF005870FF00FFDB8400FFDB8400FFDB84005E4A
      32005E4A32005E4A32005E4A32005E4A32005E4A32005E4A3200FFDB8400FFDB
      8400FFDB8400FFDB8400A3724B00EBDCCA00EBDCCA00E6C39600D6AA70009D70
      4600EBDECA00ECDDCA00AF7F5A00A7744D005977940081ADD400ACCFF00091C0
      EB0088BBEA0088BBEA0088BBEA0072A4D3005F90BC006083A400E7DBC800A472
      4B00FFFFFF00FFFFFF000000000000000000FEFEFE00E2CFC700E2CFC700AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C300FAE1B400FFFCF800000000000000000000000000000000000000
      000000000000000000006E5D5B0078AFE60078AFE60078AFE60087C0F00087C0
      F00087C0F00087C0F00087C0F00087C0F00087C0F00087C0F0006E5D5B000000
      00000000000000000000000000000000000000000000FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB84005870FF005870FF005870FF005870FF005870FF00FFDB
      8400FFDB8400FFDB8400FFDB84005E4A32005E4A32005E4A32005E4A32005E4A
      32005E4A32005E4A3200FFDB8400FFDB8400FFDB8400FFDB8400A5744B00EBDF
      CF00EBDFCF00FDE8CF00F4D9B800A87D5300ECE0CF00ECE0CF00ECDFCE00DCD1
      C1002A364E0086B2D900BCD9F30097C4EC0089BCEA0088BBEA0088BBEA0087BA
      E9005E8AB5001A203400D7CCBF00A6734C00FFFFFF00FFFFFF00000000000000
      00000000000000000000AC968F00AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C3006ED7A500FFFCF8000000
      00000000000000000000000000000000000000000000000000006E5D5B0078AF
      E60078AFE60078AFE60087C0F00087C0F00087C0F00087C0F00087C0F00087C0
      F00087C0F00087C0F0006E5D5B00000000000000000000000000000000000000
      000000000000FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400CAB9AB005870
      FF005870FF005870FF00FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      84005E4A32005E4A32005E4A32005E4A32005E4A3200FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400A8744C00EDE1D200EDE1D200EDE1D100ECE1D100ECE1
      D100EDE1D200EDE1D200EDE1D100D5CCC00018192B00779ABE00BCD7F000A0C9
      EE008ABCEB0088BBEA0088BBEA0085B7E600597FA8000E0E2000CFC6BB00A774
      4C00FFFFFF00FFFFFF00000000000000000000000000E2CFC700E2CFC700AC96
      8F0087747000AC968F0078E6C30078E6C3006FD8A70078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C3006ED7A500F1FBF700000000000000000000000000000000000000
      000000000000000000006E5D5B0078AFE60078AFE60078AFE60087C0F00087C0
      F00087C0F00087C0F00087C0F00087C0F00087C0F00087C0F0006E5D5B000000
      00000000000000000000000000000000000000000000FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB84005870FF005870FF006E7EEF00FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB84005E4A32005E4A32005E4A32005E4A
      3200FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400A9754D00EEE4
      D500EEE4D500A073480098693F00BB977200EEE3D500EEE3D500DFCBB800C6B7
      A70018182A0019192A0096A9C1009ABAD9008BBBE90087BAE90085B7E6006D94
      BE000E0E20000E0E2100CFC7BC00A9754D00FFFFFF00FFFFFF00000000000000
      00000000000000000000AC968F00AC968F0087747000AC968F0078E6C30078E6
      C30082E3C10078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30064E1FF00F1FBF7000000
      000000000000000000000000000000000000000000000000000046415A0078AF
      E60078AFE60078AFE60087C0F00087C0F00087C0F00087C0F00087C0F00087C0
      F00087C0F00087C0F00050557800000000000000000000000000000000000000
      00000000000000000000FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      84005870FF00FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      84005E4A32005E4A32005E4A32005E4A3200FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB840000000000AA774E00EFE6D800EFE6D800E6C39600D6AA70009D70
      4700EFE6D800EFE6D800B0805B0096694900171729002B2B3B000F0F21001010
      22004E6684007FAED9006A90B9000E0E20000E0E20000F0F2200D2CAC000AA77
      4E00FFFFFF00FFFFFF00000000000000000000000000E2CFC700E2CFC700AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30064E1FF00F0FCFF00000000000000000000000000000000000000
      0000000000000000000046415A0046415A0078AFE60078AFE60087C0F00087C0
      F00087C0F00087C0F00087C0F00087C0F00087C0F00057628700505578000000
      0000000000000000000000000000000000000000000000000000FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB84005E4A32005E4A32005E4A32005E4A3200FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB840000000000AD784F00EFE8
      DC00EFE8DC00FDE8CF00F4D9B800A87D5300EFE8DC00EFE8DC00EFE8DC00DDD7
      CE00232A3F002B2C3D0017172800101022000E0E20000E0E20000E0E20000E0E
      200010102300161A2E00D8D1C900AD784F00FFFFFF00FFFFFF00000000000000
      00000000000000000000AC968F00AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C3005AA0FF00F0FCFF000000
      000000000000000000000000000000000000000000000000000046415A004641
      5A0078AFE60078AFE60078AFE60086BFF00087C0F00087C0F00087C0F00087C0
      F00087C0F0005055780050557800000000000000000000000000000000000000
      00000000000000000000FFFEFD00FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB84005E4A32005E4A
      32005E4A32005E4A3200FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFFFFE0000000000AF794F00F0EBDF00F0EBDF00F0EBDF00F0EADF00F0EA
      DF00F0EADF00F0EADF00F0EADF00E9E5DB006D7A8A0022243600363645003E3E
      4C00101022000E0E20000E0E20000E0E20001010220050596900E6E0D500AF78
      4F00FFFFFF00FFFFFF0000000000000000000000000000000000AC968F00AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C3005AA0FF00EFF6FF00000000000000000000000000000000000000
      0000000000000000000046415A0046415A0046415A0046415A005F79A1004E53
      720046415A0046415A0078AFE60087C0F00087C0F00050557800505578000000
      000000000000000000000000000000000000000000000000000000000000FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB84005E4A
      32005E4A32005E4A32005E4A32005E4A3200FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB84000000000000000000AF7A5000F1EC
      E100F1ECE100A073480098693F00BB997500F1ECE200F1ECE200E1D2C200DECE
      BD00BDB4AB002120310016182B0036374600161627000E0E20000E0F21001213
      2500191A2A00C6C6C300EFEADF00AF795000FFFFFF00FFFFFF00000000000000
      00000000000000000000AC968F00AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C3006464FF00EFF6FF000000
      000000000000000000000000000000000000000000000000000046415A004B4B
      69004B4B6900494662004B4B69004B4B69004B4B69004B4B69004B4B69004B4B
      69004B4B69005055780050557800000000000000000000000000000000000000
      000000000000000000000000000000000000FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB84000000
      00000000000000000000B17B5100F1EEE500F1EEE500E6C39600D6AA70009D70
      4700F1EDE400F2EDE500B0805C00A9754E00A6734D008C6C5800565B67001E24
      38001416290014172B001E2539004449570088695500EDE9E100F1EDE400B17A
      5000FFFFFF00FFFFFF0000000000000000000000000000000000AC968F00AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C3006464FF00F0F0FF00000000000000000000000000000000000000
      0000000000000000000046415A004B4B69004B4B69004B4B69004B4B69004B4B
      69004B4B69004B4B69004B4B69004B4B69004B4B690050557800505578000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB840000000000000000000000000000000000B27C5100F2EF
      E700F2EFE700FDE8CF00F4D9B800A87E5400F1EFE700F2EFE700F3EFE700F2EF
      E700F1EFE700F1EEE500ECE9E200E0DDD800DBD8D200DBD8D200E0DDD700E9E7
      E000F1EEE600F1EFE600F1EFE600B27C5100FFFFFF00FFFFFF00000000000000
      000000000000E2CFC700E2CFC700AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F0F0FF000000
      0000000000000000000000000000000000000000000000000000000000004B4B
      68004B4B69004B4B69004B4B69004B4B69004B4B69004B4B69004B4B69004B4B
      69004B4B69005055780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB840000000000000000000000
      00000000000000000000B37D5200F3F0E800F3F0E800F3F1E900F2F0E900F2F0
      E900F2F1E900F3F1E900F3F0E900F2F1E900F2F1E900F2F0E800F3F0E800F3F0
      E900F3F1E900F3F1E900F2F1E900F2F0E900F2F0E900F2F1E800F2F1E800B47C
      5100FFFFFF00FFFFFF0000000000000000000000000000000000AC968F00AC96
      8F0087747000AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C300F2FDF900000000000000000000000000000000000000
      0000000000000000000000000000000000004B4B69004B4B69004B4B69004B4B
      69004B4B69004B4B69004B4B69004B4B69004B4B690000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFEFD00FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFFF
      FE00000000000000000000000000000000000000000000000000B57D5200F3F1
      EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00F3F1
      EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00F3F1EA00F3F1
      EA00F3F1EA00F3F1EA00F3F1EA00B47C5100FFFFFF00FFFFFF00000000000000
      000000000000E2CFC700E2CFC700AC968F0087747000AC968F0078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F2FDF9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004B4B69004B4B69004B4B69004B4B69004B4B69004B4B6900F4F4
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFDB8400FFDB8400FFDB8400FFDB8400FFDB8400FFDB
      8400FFDB84000000000000000000000000000000000000000000000000000000
      00000000000000000000B57D5200B57D5200B57D5200B57D5200B57D5200B57D
      5200B57D5200B57D5200B57E5200B57E5200B57D5200B57D5200B57D5200B57D
      5200B57D5200B57D5200B57D5200B57D5200B57D5200B57D5200B57D5200B57D
      5200FFFFFF00FFFFFF0000000000000000000000000000000000AC968F00AC96
      8F00AC968F00AC968F0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C300F2FDF90000000000424D3E000000000000003E000000
      2800000064000000320000000100010000000000200300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFE0000000000000
      FF807FFFF87FC0000000000000000000FC0000FFF02FC0000000000000000000
      FC0000FFF01FC0000000000000000000FC0000FFE00FC0000000000000000000
      FC0000FF0007C0000000000000000000EC0000FC0003C0000000000000000000
      EC0000F80003C0000000000000000000E40000F00003C0000000000000000000
      E00000F00003C0000000000000000000000000F00001C0000000000000000000
      000000F01011C0000000000000000000000000F08021C0000000000000000000
      000000F00041C0000000000000000000000000F00301C0000000000000000000
      000000F00001C0000000000000000000E00000F80001C0000000000000000000
      E40000F80003C0000000000000000000EC0000F80007C0000000000000000000
      FC0000F8000FC0000000000000000000FC0000F8003FC0000000000000000000
      FC0000FC01FFC0000000000000000000FC0000FE03FFC0000000000000000000
      FC0000FC03FFFBFFFEE0000000000000FF80FFFF83FFFFFFFFE0000000000000
      800000FFC07FFFFFFFFC000070000000800000FE000FF8200038000070000000
      800000FC0007C000003C000070000000800000F80003C0000038000070000000
      800000F00001C000003C000070000000C00001E00000C000003C000070000000
      F8000FC000004000003C000070000000FE003FC000004000003C000070000000
      FF80FFC0000040000038000070000000FF80FF8000000000003C000070000000
      FF007F80000000000038000030000000FE003F8000000000003C000030000000
      FE003F80000000000030000010000000FC001F8000000000003C000010000000
      FC001F80000000000038000010000000FC001F8000000000003C000010000000
      FC001FC0000040000038000010000000FC001FC000004000003C000010000000
      FC001FC000004000003C000010000000FC001FE00000C000003C000010000000
      FC001FF00001C000003C000010000000FC001FF80003C0000038000010000000
      FE003FFC0007C000003C000010000000FF007FFE000FC0000038000010000000
      FF80FFFFC07FC000003C00001000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    Height = 35
    Width = 35
    Left = 833
    Top = 208
    Bitmap = {
      494C01010300F800380023002300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008C000000230000000100200000000000904C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C3C3C3F1DEDEDEFB868686C62D2D2D5200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDFFBFFFFFFFFFFFF
      FFFF808080C00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000878787C7FFFFFFFF808080C00000000000000000000000000000
      00004B4B4B800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002020204FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF0202020400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F0078787800CBCBCB00F4F4F400FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D2D2D52808080C00000
      00000000000024242443424242735454548CF6F6F6FF808080C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003D3D3D00E4E4E400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000026262646FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF808080C0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041414100F7F7F700FFFF
      FF00CDCDCD004A4A4A000D0D0D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000045454577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
      80C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000012121200EBEBEB00FFFFFF00969696000202020000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C5C5C97FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E8E8E00FFFFFF00B3B3B3000202
      0200000000000000000085858500F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E2E2E2004848480000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004747
      477AEEEEEEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080C000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C5C
      5C00F9F9F900FAFAFA0024242400000000000000000000000000F3F3F300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E2E2E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080C0FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFF00000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000F9F9F9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000074747400FFFFFF00FFFFFF009C9C9C00000000000000
      0000000000000000000086868600F0F0F0007B7B7B0000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF00000000F9F9F9FFFFFFFFFFFFFFFFFFFAFAFAFF00000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E800FFFF
      FF00464646000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080C0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7F7F7FBF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFF00000000F2F2
      F2FEF3F3F3FE00000000F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0E0E000FFFFFF003B3B3B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00E2E2E20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080C0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF2F2F2FE0000000000000000F2F2F2FEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000074747400FFFF
      FF00FAFAFA000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00E3E3
      E300494949000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7F7F7FBF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FE0000
      000000000000F2F2F2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010100FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080C0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F
      7FBF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFAFF00000000F2F2F2FEF3F3F3FE00000000F9F9F9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF003A3A3A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C3C3C00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF888888C70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000F9F9F9FFFFFF
      FFFFFFFFFFFFFAFAFAFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F2F200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF888888C70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
      FAFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5D5
      D500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080C0FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF808080C0000000000000000000000000808080C0808080C00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000091919100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008E8E8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080C0FFFFFFFFFFFFFFFF888888C700000000000000000000
      0000777777B6FFFFFFFFFFFFFFFF7F7F7FBF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D2D
      2D00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC002B2B2B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080C08080
      80C0000000000000000000000000808080C0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF717171B00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000097979700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009393930000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080C0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDFE00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000007070700BEBEBE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD0006060600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD3D3D3F70000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000707070096969600FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC009494
      9400060606000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080C0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FE3434345D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020204FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF02020204000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D2D2D0091919100D4D4D400F4F4F400F4F4
      F400D4D4D400909090002C2C2C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080C0FFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FE3838
      3864000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71B0EEEEEEFED3D3D3F73434345D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E000000280000008C0000002300000001000100
      00000000BC0200000000000000000000000000000000000000000000FFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000}
  end
  object Query: TFDQuery
    SQL.Strings = (
      'select * from CONTROLE_AGENDAMENTO')
    Left = 808
    Top = 72
    object QueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object QueryDATA_HORA_AGENDA: TSQLTimeStampField
      FieldName = 'DATA_HORA_AGENDA'
      Origin = 'DATA_HORA_AGENDA'
    end
    object QueryID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object QueryDETALHE: TStringField
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
      Size = 100
    end
    object QueryAGENDADO: TIntegerField
      FieldName = 'AGENDADO'
      Origin = 'AGENDADO'
    end
    object QueryID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = 'ID_FUNCIONARIO'
    end
    object QuerySTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object QueryDATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
      Origin = 'DATA_UP'
    end
    object QueryCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object QueryRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 70
    end
    object QueryDATA_HORA_FINAL: TSQLTimeStampField
      FieldName = 'DATA_HORA_FINAL'
      Origin = 'DATA_HORA_FINAL'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 1080
    Top = 120
    object ActAtender1: TMenuItem
      Action = Act_Alterar
    end
    object EmVisita1: TMenuItem
      Action = Act_EmVisita
    end
    object ActAtender2: TMenuItem
      Action = Act_Atender
      Caption = 'Atender'
    end
    object ActCancelar1: TMenuItem
      Action = Act_Cancelar
    end
  end
  object DS_Calendario: TDataSource
    Left = 264
    Top = 160
  end
  object DBDaySource1: TDBDaySource
    AutoIncKey = False
    DataSource = DS_Calendario
    ResourceDataSource.DataSource = DS_Calendario
    ResourceDataSource.ResourceIDField = 'id'
    ResourceDataSource.ResourceNameField = 'Responsavel'
    ResourceMap = <
      item
        ResourceIndex = 53
        PositionIndex = 0
        DisplayName = 'mapiytrm'
        Tag = 0
      end
      item
        ResourceIndex = 54
        PositionIndex = -1
        DisplayName = ''
        Tag = 0
      end>
    StartTimeField = 'DATA_HORA_AGENDA'
    EndTimeField = 'DATA_HORA_FINAL'
    KeyField = 'id'
    ReadOnly = False
    ResourceField = 'id'
    SubjectField = 'Cliente'
    NotesField = 'detalhe'
    UpdateByQuery = True
    DateFormat = 'mm/dd/yyyy'
    Day = 44237.000000000000000000
    Mode = dmMultiResource
    NumberOfDays = 1
    Left = 664
    Top = 24
  end
  object DS_Calendario_2: TDataSource
    Left = 488
    Top = 208
  end
end
