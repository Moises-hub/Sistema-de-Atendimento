object Frm_Sugestao: TFrm_Sugestao
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Sugestao / Solicita'#231#245'es'
  ClientHeight = 589
  ClientWidth = 1269
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 33
    Width = 1269
    Height = 556
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 0
    Transparent = True
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 1259
      Height = 56
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object RzToolButton1: TRzToolButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 56
        Height = 50
        Cursor = crHandPoint
        Images = ImageList1
        UseToolbarButtonSize = False
        Action = Act_Atualizar
        Align = alLeft
        ParentShowHint = False
        ShowHint = True
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 55
      end
      object Label1: TLabel
        AlignWithMargins = True
        Left = 1026
        Top = -1
        Width = 38
        Height = 18
        Margins.Left = 20
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 502
        Top = -1
        Width = 64
        Height = 18
        Margins.Left = 20
        Caption = 'Buscar por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 611
        Top = -1
        Width = 85
        Height = 18
        Margins.Left = 20
        Caption = 'Digite a Busca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label4: TLabel
        AlignWithMargins = True
        Left = 875
        Top = -1
        Width = 27
        Height = 18
        Margins.Left = 20
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 90
        Top = -1
        Width = 37
        Height = 18
        Margins.Left = 20
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object RzComboBox1: TRzComboBox
        AlignWithMargins = True
        Left = 1026
        Top = 16
        Width = 145
        Height = 22
        Margins.Top = 18
        Style = csOwnerDrawFixed
        TabOrder = 6
        Text = 'TODOS'
        OnSelect = Edit1Change
        Items.Strings = (
          'TODOS'
          'EM ANALISE'
          'APROVADO'
          'EM DESENVOLVIMENTO'
          'CONCLUIDO'
          'ATUALIZADO'
          'RECUSADO')
        ItemIndex = 0
        Values.Strings = (
          '  '
          'and col_sugestoes.status = 1'
          'and col_sugestoes.status = 2'
          'and col_sugestoes.status = 4'
          'and col_sugestoes.status = 5'
          'and col_sugestoes.status = 6'
          'and col_sugestoes.status = 3')
      end
      object Edit1: TEdit
        AlignWithMargins = True
        Left = 611
        Top = 19
        Width = 258
        Height = 21
        Margins.Top = 15
        Margins.Bottom = 17
        CharCase = ecUpperCase
        TabOrder = 4
        OnChange = Edit1Change
      end
      object RzComboBox2: TRzComboBox
        AlignWithMargins = True
        Left = 500
        Top = 19
        Width = 105
        Height = 22
        Margins.Top = 18
        Style = csOwnerDrawFixed
        TabOrder = 3
        Text = 'Raz'#227'o Social'
        Items.Strings = (
          'Raz'#227'o Social'
          'Nome Fantasia'
          'CNPJ'
          'Raz'#227'o Social ou Nome Fantasia')
        ItemIndex = 0
        Values.Strings = (
          ' AND nome like :f '
          ' AND clientes.nome_fantasia like :f'
          ' AND CNPJ LIKE :f '
          ' AND (nome like :f or clientes.nome_fantasia like :f)')
      end
      object RzComboBox3: TRzComboBox
        AlignWithMargins = True
        Left = 875
        Top = 18
        Width = 145
        Height = 22
        Margins.Top = 18
        Style = csOwnerDrawFixed
        TabOrder = 5
        Text = 'TODOS'
        OnSelect = Edit1Change
        Items.Strings = (
          'TODOS'
          'Sugest'#227'o'
          'Solicita'#231#227'o')
        ItemIndex = 0
        Values.Strings = (
          '  '
          'and col_sugestoes.tipo = 1'
          'and col_sugestoes.tipo = 2')
      end
      object RzComboBox4: TRzComboBox
        AlignWithMargins = True
        Left = 88
        Top = 20
        Width = 135
        Height = 22
        Margins.Top = 18
        Style = csOwnerDrawFixed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'DATA DE SOLICITA'#199#195'O'
        OnExit = Edit1Change
        Items.Strings = (
          'DATA DE SOLICITA'#199#195'O'
          'DATA DE APROVA'#199#195'O'
          'DATA DE PREVIS'#195'O')
        ItemIndex = 0
        Values.Strings = (
          
            'WHERE (( cast(col_sugestoes.data as date) >=:INI) AND (cast(col_' +
            'sugestoes.data as date) <=:FIM))'
          
            'WHERE (( col_sugestoes.DATA_APROVA >=:INI) AND ( col_sugestoes.D' +
            'ATA_APROVA >=:FIM))'
          
            'WHERE ((col_sugestoes.DATA_PREVISTA >=:INI) AND (col_sugestoes.D' +
            'ATA_PREVISTA <=:FIM))')
      end
      object RzDateTimeEdit1: TRzDateTimeEdit
        Left = 233
        Top = 19
        Width = 121
        Height = 21
        EditType = etDate
        TabOrder = 1
        OnExit = Edit1Change
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 360
        Top = 19
        Width = 121
        Height = 21
        EditType = etDate
        TabOrder = 2
        OnExit = Edit1Change
      end
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 71
      Width = 1259
      Height = 443
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataSource = DS_Query_Sugestoes
      FixedColor = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 6052956
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_APROVA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'APROVADO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 145
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_PREVISTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'PREVIS'#195'O'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CASE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'STATUS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RESPONSAVEL_COLISEU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROTOCOLO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOLICITACAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'SOLICITA'#199#195'O'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RESPONSAVEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'RESPONS'#193'VEL'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 198
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
          Title.Caption = 'DESCRI'#199#195'O'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 322
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APROVADO_POR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ATUALIZADO_POR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 240
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 0
      Top = 519
      Width = 1269
      Height = 37
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object RzPanel3: TRzPanel
        AlignWithMargins = True
        Left = 30
        Top = 8
        Width = 94
        Height = 21
        Margins.Left = 30
        Margins.Top = 8
        Margins.Right = 10
        Margins.Bottom = 8
        Align = alLeft
        BorderInner = fsFlatRounded
        BorderOuter = fsBump
        BorderShadow = clRed
        Caption = 'Em An'#225'lise'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GradientColorStyle = gcsCustom
        GradientColorStart = clMaroon
        GradientColorStop = clRed
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
      end
      object RzPanel4: TRzPanel
        AlignWithMargins = True
        Left = 134
        Top = 8
        Width = 94
        Height = 21
        Margins.Left = 0
        Margins.Top = 8
        Margins.Right = 10
        Margins.Bottom = 8
        Align = alLeft
        BorderInner = fsFlatRounded
        BorderOuter = fsBump
        Caption = 'Aprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GradientColorStyle = gcsCustom
        GradientColorStart = clNavy
        GradientColorStop = 13001472
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
      end
      object RzPanel5: TRzPanel
        AlignWithMargins = True
        Left = 565
        Top = 8
        Width = 94
        Height = 21
        Margins.Left = 0
        Margins.Top = 8
        Margins.Right = 10
        Margins.Bottom = 8
        Align = alLeft
        BorderInner = fsFlatRounded
        BorderOuter = fsBump
        Caption = 'Recusado'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsStrikeOut]
        GradientColorStyle = gcsCustom
        GradientColorStart = clGray
        GradientColorStop = clSilver
        ParentFont = False
        TabOrder = 2
        VisualStyle = vsGradient
        ExplicitLeft = 550
      end
      object RzPanel6: TRzPanel
        AlignWithMargins = True
        Left = 238
        Top = 8
        Width = 109
        Height = 21
        Margins.Left = 0
        Margins.Top = 8
        Margins.Right = 10
        Margins.Bottom = 8
        Align = alLeft
        BorderInner = fsFlatRounded
        BorderOuter = fsBump
        Caption = 'Em Desenvolvimento'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GradientColorStyle = gcsCustom
        GradientColorStart = 61680
        GradientColorStop = clYellow
        ParentFont = False
        TabOrder = 3
        VisualStyle = vsGradient
      end
      object RzPanel7: TRzPanel
        AlignWithMargins = True
        Left = 357
        Top = 8
        Width = 94
        Height = 21
        Margins.Left = 0
        Margins.Top = 8
        Margins.Right = 10
        Margins.Bottom = 8
        Align = alLeft
        BorderInner = fsFlatRounded
        BorderOuter = fsBump
        Caption = 'Concluido'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GradientColorStyle = gcsCustom
        GradientColorStart = 14662293
        GradientColorStop = clInactiveCaption
        ParentFont = False
        TabOrder = 4
        VisualStyle = vsGradient
        ExplicitLeft = 342
      end
      object RzPanel8: TRzPanel
        AlignWithMargins = True
        Left = 461
        Top = 8
        Width = 94
        Height = 21
        Margins.Left = 0
        Margins.Top = 8
        Margins.Right = 10
        Margins.Bottom = 8
        Align = alLeft
        BorderInner = fsFlatRounded
        BorderOuter = fsBump
        Caption = 'Atualizado'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GradientColorStyle = gcsCustom
        GradientColorStart = clSilver
        GradientColorStop = clSilver
        ParentFont = False
        TabOrder = 5
        VisualStyle = vsGradient
        ExplicitLeft = 446
      end
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 1269
    Height = 33
    Align = alTop
    BorderOuter = fsNone
    BorderSides = []
    BorderShadow = clBlack
    Color = 3349504
    FlatColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStart = 2631720
    GradientColorStop = 2631720
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    object Image1: TImage
      Left = 1185
      Top = 0
      Width = 84
      Height = 33
      Align = alRight
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000258
        0000009D080600000068DC06F20000000467414D410000B18F0BFC6105000000
        206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
        98000017709CBA513C000000097048597300002E2300002E230178A53F760000
        33CC49444154785EED9D07B8F454B586A5F72ABD235244902E20BD098A087640
        40C08E888522A014A528450101E94D4514C4825850505440A48828A020C57EED
        8AD782D7F2DFF79BACE8784E92C9CC99643299EF7D9EEF813F67257BED4C2659
        B3B3F75A4F32C61863C68159B3662D8DE68F7F1A638C31C698994270353B9A2D
        FE698C31C618630685A06A2EB4319A3B3619638C31C698991023578BEABFB1C9
        18638C31C618638C31C618638C31C618638C31C618638C31C618638C31C61863
        8C31C618638C31C618638C31C618638C31C618638C31C618638C31C618638C31
        C618638C31C618638C31C618638C31C618638C31C618638C31C618638C31C618
        638C31C6349E59B366CD8516468BA325D092F1DFC5D082688E3035C698B127EE
        6D9BA0CDD16AB1D91863CAC3CD6325B40BDA07BD111D832E409F4577A01FA05F
        A23FA2BFA0BF86F4FF7F467F403F430FA05BD127D1FBD1DBD0ABD11E68ED68CE
        1863FE0DF786F5D061E8C02EE9BEF17AB46498D50AED1E8CA672139A2B4C8C31
        E6BFE106B13EDA1729F8B90AFD10D5C5E3E806B47AB8638C9970B81F1CAF9B43
        0E9B87596DD0E68649D3995C1666C69849871B8286B84F4257A33A83A9227E8D
        560A178D31130CF782B777EE0AD96C1A66B5419B1ABDCFE3FFD0B2616A8C9924
        F8F2CF8B5E812E457AB5D754E4DB12E1B6316642E13ED0B400EB6B49D3B9AC17
        A6C69849802FBDE64F7D033DA13BC098F05DE4C9F1C64C30DC039A1660DD9B34
        9DCBD6616A8C692B7CD1B7427AF5A709E7E3CA4DD11D63CC04C23DA06901D67D
        49D3B96C17A6C69836C1975BAF00B5BAE6B7FAA6B7044F1C356642E1FBDFB400
        EBDB49D3B96C19A6C69836C097FA29E8BCCED7BB9D9C185D35C64C107CF79B16
        607D35693A9775C3D41833CEF0655E055DDEF95AB79FFDA3DBC6980981EF7DD3
        02ACF7254D67F2BF68F13035C68C237C895744D7E81B3D616C1FA7A010EC9E81
        5E8276436F40C7A15391129C5E88AE40CAF3F571A4C4A7D7A1CFC47F3F8DAE45
        1F45B23B1FE9A67A2C528E30656EF64DD4981AE0BBD6B4006B55F4F74EEBD339
        29CC8C31E3065FE03951D12FA8B6A38CF13DF3CC60B359C7BA3AFE81EE470AC6
        2E414A86B8335A385C30C60C01BE538D0AB004ED6E83BE8C54BD422BB39556E6
        C8F8B33166DCE00BBC3FFA179A74EE8E53520876CAB89CF74BB32A74B37D187D
        09291BFED3C31D63CC00F01D6A5C809542FB73A3F9E39FC69871832FF01AE81E
        64FEC3A5717A0AC16ECBC47CA4FC0ADD8CF4AA7275345BB8678CE901DF97C606
        58C69831861BC83B93FB88C9E0A8384D8560B77D62DE181470BD0BAD8D660F37
        8D3119F01D7180658C191EDC389E86BEDFB9859822768B53560876CF4BCC1BC7
        CFD00968FD70D518D305DF0D0758C698E1C04DE380E4DE614AA0C9E66BC5A92B
        04BB833B7B34975BD19E68BE70D9988987EF83032C63CCCCE066311B9AC4D40B
        33E54134579CC642B03BA6B347B3F91D523A8955C26D632616BE070EB08C3183
        C38D4209439582C00CC657E354F6045BA55518176E446B84EBC64C1C5CFF0EB0
        8C3183C14D62F7E45E6166C879714A7B82AD928A8E135F406B87FBC64C0C5CF7
        0EB08C31FDC30D428599C719E57DFA39D26BBABBD12DE8B3E88348AFB94E4447
        A137A1D7A157A357865E8394BAE050A45777CAB4AE2CEB7A4D7A13BA1D7D073D
        8A7E83FE897A714C9CDA42B09B033DD4D963BCD0B9592CBA614CEBE17A778065
        8CE90F6E0E0A3CC6813F214DC05669997390822195A1591F2D862ACFEB441B73
        A1E5D016488B0014B85D8054EA4639C2FE0FA5940DB25642AA1D368EA8FFA5E6
        9D1933CE709D3BC032C6F4073707CDAF691ABF479F471A493A02295167E357B5
        E1E3C2E1AB46CD34CAB350FCA910EC9E8FC6959FA2ADA32BC6B412AE710758C6
        98FEE0E67075728F18294A7AF901F42AB42D9A37DC1B5BE8C3EC688EF8674FB0
        7D0B1A673E81168CEE18D32AB8B61D601963FA839BC3E5C93DA2569437EA9348
        739FF4BACD655B80F3D084607726FC1A7934CBB40EAE6B0758C698FEE0E6A091
        A33AF80B3A176D8E1688E64D179C17156DFD1E1A774E8C2EB516FAB8105A173D
        17A900FA9B911EC22A2BA51244C721BDDE7E2D7A11D20F891550E951CD2682FF
        F3A1B5D04EE8E5E88D48F3388F4769BF8F444AA8BB17DA0EAD8AC67AAE1EFE3B
        C01A229CB365909E05FA6E68E191BE2BBA76740DE93B742C52A17A5D5F07A217
        22BDDD58072D81E68C43B512FAA705502BA3ADD1CBD04148DFABF47BA6FFEA7B
        A7F3B337D2F74C69965A7D5EC60E3E90D35155A4AFFE3641FEE04BC079DA088D
        3B774777C61EFAA2C4BB0A10B4A0E232F50DFD10E90743BF6805AA46F9B4DA55
        0B36F483430F1895A46ADCEB557CD2828EDDD079E80EF4081A74418612D76AC5
        EC57911E0E7A702C124D351E7C6D5480459B4F461F42D7C67F53E9FCBE2CCC1A
        01FE2C8F541D4223F4F7A1FF417A8B31287F43CAD7F830D2E222CD23D673462B
        C2B741FA3E8DD3B5A51F6BCF420A2ABF82747FF82D1A04EDA7F2763A270AC8F4
        EC9D3F9A6A34F8A915FC9F43DDD7B3E6629F1C268D04FFF4B97D31FC4DA52C06
        A7E98F8A86878956D2DD80FCAA684038774A1931CEDC135D195BE8C3D2E830F4
        1375A806EE8DA6470A7ECC8B34F2F46D3955039F425B46F38D051F9B166029E8
        CFE394301B29F8A1E05C3F4846C1DF91DE0634F6E18C6F1AC1D3DCD5AA5130AB
        C4D61B46D38D04FFF2EA1EDF1F268D04FF6E4BDC9CC643FAE3D1C9FFCF18E58A
        3A048D45B4DC74388F4A4731AE34225818047C57DA0F2554AD9B9106A5B4BF20
        7A37EA4E3552272A38AEBC748D9C8F895F4D0BB094DE258FF784D948A07DE519
        D4886513F87EB8D518F049A37975FD709BCA6368BF70A551E0575E80F59D3069
        24F8A7B711593CA83F2AF9E64CD010DEF6D19619129CD325D11F7482C790FBA2
        1B63033E6BFE9B5E018E8A1BC395DAA16D5571506A9426A0D7888D9BD3844F0E
        B07A40BB4A53F3B58E07CDE113E1DEC8C19715915E693601BDEE6FD4C831FEB4
        32C0D2AF8D7ED1AFDCF7A015A20D53019CDF17EB648F21DF8B2E8C05F8BB311A
        F52FEE8BC29D5AA1DD2B92E61BC7484761A6823F0EB00AA04D2D7CF863A7F566
        7142B83852F04329889AC8FBC3C591832FAD0CB0B412A82C7F469AA03A361308
        C71DCEB556D868F29F568C48BAD16BB5CD2948938FF52A5173DEEE443F46FA8C
        FE8546C943E17EE3C1D767272E0F8C467EEE429A6CACCF43D9EDF5196982A956
        466925945EC39F80341157E949342F656A40572AF3FFB0A03DE569FB72A7E5FE
        F82BD2AFF08FA1F722F555FD7C2B522E37FD57FF56A50525DCD51C2BCD85D19C
        987EF974B83B72F0C501560EB4B708D2ABA77E51E9B1AFA30F235D4BBA6674ED
        680E6AF7F5A47FEB7BF40EA4FBDEC548755CF5BDEB3561FE4DE1E6C8C0074D82
        EE17DDC7F5E0D63D45D79EDE346945B256546AD5B2FEAB49FD5A45A87B8DAA9B
        68F4709020F7E67075A4E0472B03AC1724FF5F881ED847C4F14C43E133D28A37
        DDEC940E402B69B4826467A45A936721CD2DFA112A534F71263C122E351AFCDC
        3E71B7348F23D5B7D4B2E9F59086FCE78EC3F505FBCD83F439E9389A7BF48CF8
        532DD09E562B95452B92749F580D0D946285FD1645BA26F7417AA896E5337188
        91821F0EB072A03DFD68288356FEE9878656CC2905C18C5377708C3991A653AC
        8E3412FD3CA41FA2AAA421F609D39140FB0A0ACBA285254AB9A0EFD940C9B6B5
        5FECAF7B543FDFB3DBE21023031F5A196015FD82D78358135FC73EB3BAF90F7C
        9EBA21E961A725CDCA57F451F42DA45F83C3E087D15463C147DDE0CBFCDAD377
        E052A4C9EFAD48884B3F3462D00B9D1B0515958C56735C055C1AED2BB35CFF9C
        D86D64E08303AC0C684BF3F77AA1D1AD5D6297DAA04DE5921A59DE39DA566A97
        32683478D5D86DA8705CE50C53A680328B57AE8EDD4602EDB732C05282B22CF4
        EAC92B02270C3E732DFFD6BC3C15B0D68463E59CE917AD90993D0ED948F0EFA6
        8EA7C5C866F1D8A515D09F32732EAF0CF3CAA1ADF9917237F5E2F9B1CB48A07D
        075819D0D69792267339374C270AFAAD1C727FEA9C817C34A563EDD8A5526847
        5302F443BA176F885D6A87B65B1960A9387137DF406BC6BE66C2E15A50123CBD
        F3BF0895CD8DA425F78D4D2C8B6F9AE7D18B9787796BA04FCBA25E93F9F70FF3
        5AA15DCD2B2C42F3754636F793B61D604D81767ABD623F3C4C270EFAAE1FA845
        8C647523EDEE9B345FC8D3C2BC5668B7950196929D090D21EE15FB189309D7C8
        D391E651683E57DEB0F32FD0407393AA06BF1643BD52126C16E6AD827E697270
        11230D2A695F2B938B382E4C6B87B61D604D81768A7228DE1A6613077DEFF5DA
        F4DA301D09B4AFEA11455C15A6B542BBAD0CB0B6429AB8EB9581A62FB866F47E
        5F9329F5E0EE0EB634DA305F98350AFCD28A9B22B60AD35641BF5437B18833C3
        74A4E0C747127732D11CC191CC07A55D075853A09DA249D43B87D9C441DF6F4E
        4E41265F0DB391821F5A8158C4BA615A1BB4D9BE00CB9861C0C5A491A19722D5
        64D26BA827C79F1A033E69854DD144FE93C2B475A86F491733694C62587C590A
        15D53B3C2C4C6B85761D6075411BFABEE7CD317A2CCC260EFADEEBB5692D73AE
        CA802F57262E65F2B130AB0DDA7480D544E8C85C48930AD365BA9AC8ABA5BAEF
        439723E5E251CE1FFDE2D21C33E58CD2AAB97BD177432A42AAFF6A9BE61A29C7
        CAEDE816A425ED2ADEA80B52F946B42A436581347AA345025A91A755518D9ED8
        5D179C078D6C356EE5293E15AD985501E7567E7EF44BD766D1DCAB7DC3B411E0
        CF7E895B997C37CC6A85761D6075411B6B244D65F2A5309B38E8FBD9C929C8E4
        7D61D608F067199457B45EAB886B5DE0437B0EB0EA0627952F482BDB143CA978
        A812CEE995A6866115083D8AF44AAAEADC4EBD5002468D8EA812BA12492A77D0
        054849F214F46D8494ABC52B334704E7BEA814CE5161D63AE89B724FE5D1C45A
        6D5AF1A4EF751EB517ADA54D07585DD0C6064953999C1D661305FDD6E86BDEA8
        9E0296A5C2B431E0931287E7714898D502ED39C0AA121C5244AD2FAE8A619E89
        E4F82099699B8C32F4AAFAB646D7540A47FD5D2E4E81A910CEF303288FA78459
        EBA06F0AF4F3784798350AFC3A3C712F93DACB7BD0A603AC2E6843C942F36844
        799ABAA1DF7B25DDCFE492306B14F8B54EE25E26B5BE26A43D0758C382C69F8C
        34B2F306A407808A4F4E324A6DA0ECC35A99A3BA55AD9C6C3D2A389F4A2C9AC7
        F561D63AE89B5E9FEBDACAE209B46C98360AFC5286FB3CBE1D66B5419B0EB0BA
        A08D2D92A632392BCC260AFAAD41813CF608B3C6816F57272E4E4379BA6A9B36
        415B0EB00685C61450BD10E9159F92D38DFA95DE38B0679C3E33433897453537
        F70BB3D641DF9456238F3BC2AC91E05FDE6A2CBD8EAFF5750BED39C0EA823636
        4D9ACAA4B53F588AA0DF9AC79B4563D3D6087CD320471EDB8659E5D09603AC7E
        A0816D915E85693ED22019C1CD0896CBB611CE63D16BB2F5C2AC75D0B7A29C37
        A7865923C1BFC3123733796998D502ED39C0EA82368A02F7912C441825F45975
        49F38AEC8FBCCE5F11F857B4F2F1ED615639B4E500AB080EA8DA4F7A0F7D059A
        F4577EC3E2EE38BD6606701EB51A340B8D862C1166AD83BE9DDEE96536DB8759
        23C13FCD51CCE39430AB05DA7380D5056D68D5F6DF3BAD65D3DA398D59D0DFA2
        11BDF7865923C1BFC591E60667714198550E6D39C0CA82036952BAEA89E96165
        86CFE571AACD80700E5557318B07C2A495D03FA527C9E271B450983512FC2B9A
        80FBE130AB05DA73803505DAF95ED25C2613B59290FE1695A019691DCD32E0A3
        521765515B491FDA728025D8714EB40BFA0CEA55D0D20C8703E2F49B3EE1DCA9
        A0705E1EA8CF8559EBA06F9AE09E9758F5A1306B2CF8A811F19F76BC9DCE4D61
        560BB4E7006B0AB45334A9FBB76862AA83D0D7533BBD9E8EE61AAF10668D051F
        3FD7F1763A5F0F93CAA1ADC90EB0D86179A47A61FFD0DEA656548A66B5F8284C
        1F70DE94472D8FDA97FCD7057D5371E7BCD73863512B0E3F357F330B055E7384
        59E5D09603AC29D04EAF9A76E78469EBA1AF79018A56F0D6769D0E0A3E7EACE3
        ED747E84660BB34AA19DC90CB030DC09E5CD6131F551DBAF8936C179D3628B3C
        8E09B3D641DF5461208F4F8759A3C1CFBC1BBF2614AF186695435B0EB032A0AD
        7B92267339394C5B0DFD5415902C1A5386AA08FCFC50E2EE3454B6AA969148DA
        99AC000B831DD01D1D53D31426E286354C38674A0F92C75BC2AC75D0B767265D
        CCE4F4306B34F87951E26E265B8759E5D09603AC0C686BEFA4C942549E6C83D8
        A575D0B705D11FD4D10CC665A4580BD3F25839CC2A85762623C0E20F5ABD93D7
        59337AB6898FCA9480F3755072DA32794D98B50EFAA61F48791C19668D063FDF
        9BB89BC98BC2AC7268CB01560EB4A7B9B865F826DA3D766B0DF46969949786E8
        86306B34F8993782259E1E6695423BED0EB0D8A05FFA0EAC9A8FEA1DCE171F9B
        E901E7AAE8E1D8DAC503F4AD688ECC58F41B3FDF99B89B496DB5D268CB01560E
        B4B730CA5BA59B85561F9E84D689438C35F4E329EA540E578659A3919F89BB99
        AC1F6695423BED0CB0F89FE7A2A26AFBA6795CD8F9F04C4F3857EF4A4E59262F
        0FB3D641DF5E9B743193C62F1D17F8595493F0F830AB1CDA728055006D2E817E
        D269BD3F3409FC23A8D139D98AC0F7A2B98E6391AE023FF3E63A8A5A8AABD34E
        6B032CD5C033E347EB86DBAB80F3A495AF79BC2CCC5A077D2BCA84BE4398351A
        FC7C75E26E26B5CD47A42D07583DA05DA505F942C783C1D03C2695517B255A29
        0EDB78F0F519288FB198338B9F9F4ADCCDA496F973B4D3DA00AB6822A9692E5A
        E1516B4DB6718473745AE76C65F392306B1DF4EDD8A48B998CC53C3EFC2CAA21
        59DB447DDA72805512DA57503C8C543E8FA237A155E3D08D04FF3692B3391C17
        6623075F94574E3581F54A737DB435D2F7EB1D48F512F3A8A55C1BEDB436C02A
        4A18679ACD359D0FD1E4C2396AC444E9BAA16F27265DCC64CB306B34F859542E
        E7CC30AB1CDA7280D507F8300F3A19A962C030D0C3F72854CB84EB7EC0A7A232
        39952D26E1D8F3A26590EA426E839E875E8A0E4487A0A3919EED9F405A60F073
        A47C8AFDB266345929B4D3DA004B130ECDF8F2FACE076932E1FCA8E0781E2F0C
        B3D641DF4E49BA98C9B3C2ACD1E0E70B127733A92D492C6D39C01A007C510A83
        FDD1ED726C48285868CCEA5F7CD9ACE355368785CD6C6801A4806875B4215250
        B41BD22892563A2B80D48F2265853F0BA940FDE5E82AA420E9B348A5AFEE420F
        23CD9BAE23E9772DAF6B69A7B50156D1AB04D37C54037295CE8769A6C1B9290A
        B0DA3C8255F46A745C02ACDD1377337180954D6302AC6EF04BAFD21444E425E5
        EC178DC8689466EE686224D0FEE67226871F23E592D47F35C76CDCAAA0A808F4
        E2D1D54AA19DD606588726FF6E0DCAF2FC04FA3D7A0CDD8B94895E13303F8E94
        F343F3CECE467AF8EA97FEBB9146F2F40B42FFD5C4683DA0F44BE23C7419FA28
        BA0EDD84F42BEA7EA4921D7F44830CBD0E93EB3B1FA69906E7E6F4E41465F2E2
        306B1DF4AD68727F1B46B0CE0AB3CAA12D075843041F5576ED1528AFC870BF1C
        1B87AE1DDA2E0AB0C69D5FA179A3AB95423BAD0DB05E9FFCBBD128FAD7B0E8B7
        D0CD48793B140C6929FAAEE8596803B4265A1169D9F0FC9D0E56086DCC8E1642
        4BA195D15A487EC81FF9A5099FCAE5A3A15EAD90D1AF195D482AC23BECA0ECF0
        70CB74C179297A55D6E649EE27245DCC645CE660BD2471379333C2AC7268CB01
        5645E0AFEED57B20AD66FF251A14DD536B5F1D4B9B4515139A8E6A95EABC2937
        995EE35E8BF4BCD2DC47CD2D5B3EBA5939B4D5DA004BBF249A8046829444F336
        A451262D335790F254344FC7D996407FF44E7E49A42FA7CA4DE8A2D6C5AD9131
        9D83BCD20B4568E46E8D68C2049C93A2C9DE7B8559EBA06FC7245DCC64DB306B
        34F8B96FE26E26A78559E5D09603AC9AC07F4DDAD65B03BD561B8413E250B540
        7B9A4FD534F42AF237486F70F44A56C193E6709D8BF45C5500A5678F9E41B514
        73EE057EB436C02AFA955805FAF03592A304735AE5A05128E51219E9BBF426A1
        7381341AB6275280702152AE925E19936F8A43988073725C726A32D92FCC5A07
        7D7B6BD2C54C760CB346839F45A3EB278659E5D09603AC11405FD6469ABED1EF
        BCAD0FC6212A87B614105681DE70E887B692B12AF8D08F6FBD05D134152506BD
        149D8334295EA916943FEC3948291834997EAC9EA7F8DBDA004B99DCABE401A4
        577A7A55A3723CB54C9A6B2B9CBF159096E3EAC6A3229D9A5FA639672963913D
        B82E381F6F4E4E4B26078659EBA06F45493A5F10668D063F3589398F63C2AC72
        68CB01D688A15FDBA32F767A588E5A0270DA5923692E13E5F25210A41FC8FAAF
        E6FC6A6EA4AA4BBC0DE90784466935D77047A41589EBA25591A69D68E5E1ECD1
        54ABA19FAD0DB08A8AC20E821A5444BD175ABDD388A914CEF36268277424BA04
        2D197F9A7838174515FF0F0AB3D641DF34AF258F578559A3C1CFA2D7BBB5A527
        A12D07580D81FE2951665169976E2AAFD4401B9AB09FB73AD08B8F4AC2B96A6D
        80A58CAE33E13EA439442F432B760E6A46069F8126DECF11FF9C7838170A3CF3
        785B98B50EFAB65DD2C54CDE1E668D063FB5D2378FDAEA29D29603AC86413F9F
        8DFED4E9713E5AE55DE962278EBF0852558D2CBE1966A6079CABD606585AF1D6
        0F5A79A094057AB5B86CE720C63414AED1A23912B5CDE3A91BFAB671D2C54C6A
        4B713013F053E951F2A82DD5046D39C06A20F47559A47C584554BEBA9A36B4C2
        3D8BE4216B7AC2B9CA0BB0EE0D9346827F3D03AC4D927F17A2D50867202DDD6C
        D58A3ED36EB85E17465AA19AC55561D63AE89B1649E4F1D9306B34F8A909BD59
        FC0D2D1D6695435B0EB01A0AFDD584EEDF767A9E8D02B04A277C73FC1B3B2D4D
        472BF9E60B335300E7A9B52358CADB948586573544DFE8629BC6F4826B583F10
        B2B8254C5A077DD324590522598CC5AB0BFCBC3B71771A0F87492DD09E03AC06
        439F7BE5727C66985602C75742EA3CD60A335300E7292FC07A204C1A09FEF50C
        B0D649FEDDE1474841D5C69D3F1AD302B89E9516248BD6FEC2A45FCAB5A6EF73
        168F845963C1C7A200F10B61560BB4E700ABC1D067CD83526DBE3C0E0ED34AE0
        F82AB09CC7DE61660AE03C29D969168DBE57E15FCF004BB946BE8AC662659131
        FDC2B55DB4EAA8B523B4F44DC905B3505A8F46AF34C5BFA2C5099785592DD09E
        03AC8643BF551C398F2BC2AC12387E51B99C73C3CC14C07952E9B92C7E8D6A29
        D73308F8561C6019D376B8D80F4EAEF94CB60AB3D641DF946F278FDDC3AC91E0
        DFEB123733A93B5BB703AC8643BF9F9F743F93AF845925707CE526FC67A7A5E9
        DC1E66A600CED3B793D3350DAD145D2CCC1A07BE39C032930D17FB7AC9359F49
        9B57121625113E2FCC1A09FE9D9FB899C9CE61560BB4E700ABE1D0EFA29A8077
        865965D0465EB679D5FA9B2BCC4C0E9C2395F3C9A3B16F19F04DA5FDB2708065
        FE0317C48BA4F867ABA05FCA0DF6139445E3E7230D0A7D2BCA327D4F98350E7C
        9B0BA94448165A31B64098D602ED39C06A38F4BB281D4BE5D73A6DA8B2461ECF
        09339303E7E8A6E45465B26198350E7C5309A32C1C6099FFC005A1320D4235B0
        BE86F47A695BB442988C35F44375BCF2D82CCC5A077D7B24E96226AB8559A3C0
        AFA2D73DB5AF80A4CDA200ABB67C5C29B4E9006B0AF4FB6949F733B92BCC2A83
        365440398FF3C3CCE4C039FA5072AA32696C692F7CBB2B71711A0EB0CC7FC345
        9137EF45A33F7A65A3F22B1A1519BB9577F85C34A7E792306B1DF44D05D5F338
        3DCC1A057EBD3F712F93E3C2AC3668F3B0A4E94CB60BB3DAA04D075853A0DF45
        8975BF1E6695411B0B224DC8CE42AF099D0FAB00CECF319D3395CD9961D638F0
        EDDEC4C56938C032D3E1C2F844727D14A289879F414720D59C6CE4484837F858
        F4BA4CFD592A4C5B05FD2AFA65AD5C778DAABA8F3F4BA3BFCAB91C6A9F8F419B
        AF499ACE648F30AB0DDA74803505FAAD82C9795C176695423BA725CD65D2DAB9
        9EC380F353543BB5F2397483826F79E9251C6099E970612C891EEF5C22FDA149
        9E27A357A0A7C7E11A057E15BDE7BF38CC5A05FD9A1BE5CD3F136F0AD346803F
        2A589EC7AD61562BB45BF4CAF28830AB0DDA74803505FA5DB428A296E086768A
        EA7FFE1ED5567D60DCE0DC6CD8394BF93472A23B7EE54DC1F87E9818F3DF7071
        1C945C2333A27179D5F0A968559D68EB24FFA393EE65A252228B84E948C18FA7
        763CCA67CF30AD15DA2D2A887F6998D5066D3AC0EA823EAB1C5651B99CE78669
        E5D0D6CD499399549A8F6B9CE1DC2C8E8A8A7737EEDCE1D31C486F01B2F85E98
        19331D2E90BC322565392D0ED528F0EB3B897B992897CD0661DA1AE8D3CA488B
        17F2B8324C470A7E7C21712793910DB9D376D10AB5DBC2AC3668D3015617F4F9
        80A4EBB9AC12A695435BFB274DE67250989A29706E3E9E9CA25C1A5561067FE6
        477981FDFD6166CC74B84054D87B265C1F876A14F8B567E25E2E0AB25A977C94
        3E154D76174785E948A0FD2B123772794D98D60E6D6B5E585ED91EBD7E9D3D4C
        6B81F61C6005F477519437B95CDC18A6B5419B452B96C5BE616ABAE0BCF47AC3
        F0033447988F1C7C5908FD518E65D0E822D5A60170919C9B5C2B03D1D842CAF8
        766DE262218784792BA03FF3A2BCA2D729237938D36E51292331F29B153EE495
        F210EB87592DD09E032CA0AF4BA0BC22C129BB86796DD0E69649D3859C11E626
        E09CCC89F2EAA7A6D41E30E7812FCBA3BF77BC9A4E63F30C9A86C045A209EFFF
        DBB95CFAA7B143A4F8A657667FEE78598C92C8B5A656217D5132D95E2833F1B2
        B14BA5D08E6AB8FD528DF660E4AF6DF1E1BCC4954C4E09B35AA0BD890FB0E8A7
        569DE58D2AA6DC1BE6B543DBEF4B5C28E4C7E899B18B01CEC79B3A67A6180561
        4F8B5D6A857655447F35A4D42D45F7AEC6AE7CAC143AAEACDEF320E52D7932D2
        F0BF22513D7475E2D6446B2115C15E17A9CC8AB43ED24A076983D8263D03AD83
        94E84EFB6AA2EE2A48F5A996416A434389F3A139C38DB1019FDF8206A1F65727
        FD806F45E90BA6A2D587FBA0A1275DE5981A59AAAD98296D9D8ACAF04134F491
        198EA989A1BB2015982F43234612F163D7C49D4CBE1B66B5407B230FB0684793
        92178A7FD602ED6984A39F6B67A419D4693FAFD8FA5494D8F98568FED8B55668
        7701A43C627B23CD211B697165DA2F9A27DBCDF5680754D96B438EAD58612BA4
        797ECACFF70B5486DAE766F60D4E2A185280A2C045BF767746FAE5F232A40B41
        C923DF8CDE868E457A78E897A6B2C27E1ADD886E41CAB6AA21FE479166FDFF0A
        2915C15F907E05FD030D1BCDE5D1C462E5F4D17BDADF20ADD8D26B1AE5CEB807
        7D037D1929A7D447D1254873659445FD2874287A037A257A39D208846EF45AD5
        A4A06E5954791E23DAC8ABB35584FABC701CA291E05F5102C93CBE8E94D97B5F
        A42FF7F271B89E60AB07E34EB1AFDABE128943C3A41668EF2349B3A5F8165290
        AD54057D8FE6B18FCADE6C82942FED145466C42AE5BD719891832F45057D456D
        D50068AB0901D68793E63AF38D345AA36B440F21E5A3DA06E9C7EAC0C935D957
        F77EFD58D5FD4E79C82E424A75509653E35023031F14B8E4E549CA42ABE8F40C
        D0FD5EF391568A430D0CC75020AC81821D917E54EAD86F452AEDA3A9120A66BA
        F3CEE91A1F69F50EDA2F5AB59B859EE92721DD635493729E385469B40FD260C9
        EEE855E838F4399437C7AA1737C7A1EB834675B3D5E8CEB39022F643904ECC59
        E8627415BA0E69A9EB7D4819708B563F4D3AFA3228707B00E957501AA8E96694
        066AAF47FAB26AB46DF1F828FA82FD74D10DC2BA7188C6828FEF485C1D987F21
        0DF5ABAABA7EB17E125D8334AF48AB62743D2B28CBABAD276ACF544C9B45A529
        8A505FF5C3453767058897A20BD105F1DFCB9002B84F219D933FA04168DCAB2E
        7CD2E79A476DE91A68AB090196AEE95EE8E1F4105221DF2F22DD9FF4FDD0F7E2
        EA90CEA9FEADEB45DF9FAF2065C7D67D6D50AE0937470EBE280F5D5E399532E8
        759846D0A77EDF94F74BFFD573F372A4BFE93CEA1CCB5E3F8C14780CF2FCACBD
        3AC154F04181E0A0685ACB9D48235CBAC6341AAFC035BD4FE99C69518DEED1BA
        E6B4627ED0402A8F2F4557660E07D37B494D38D430A3469734FAF25EA407BD3A
        780352A4FC3B644687BE6C4A8CA651337D1975A1E97352B4BE567C9C99F0F7CF
        A37ED925766F34F8595446A70E6E08576A85768F4F9A6F1C7B878B8D427E25EE
        65A240BBF03B342C6867A401166DE8D77E3F239175724EB8D918F049A37145C1
        79D37875B83E52F0436F6DC60D8DB2EA99BA6674A31CECA0B94A5A1DA1E1B3D3
        917E996B12B0864035D294379BDE8C077A7D3A577CDCD3E06F9A77D62F63B312
        0F5F57451A351D05239B1049DB9A5BA851A926A03C588D487A9A07FEE5D51E13
        578759A5D0CEA8032C4D4D68DAFD5EA3163B868B8D04FF34BDA5A80C545368CC
        E831BE3C05293D43937902693049A98DA6CF0763A3260F2E87D277B57A75A7A1
        48BD76D243477387AA98A7649AC59BE392C884BF975919D3CD49B1EBD880CF1A
        A5A83BE0782C9A1F19F8F06A949795B86A342560D370A5D1E067D12896D83D4C
        2B8336461D6069BA4153500EAC5AE730CE047CD53419CD171EF62BA961329211
        F522F04973918BB2F5D789A63DE815E43B9116BD152F0AC04093A98D51209D7B
        B1F037ADBCD40281B29C1FBB8E1DF8AEBA629A6BA4851055A157B67A6DAEB902
        8D48A0871F9AA0ACC99D83CE9D2A8BE6969C8DC6AEC8363EEB876711EB856925
        707C8DB6E651F9E46EDA50FA16CDF9D1689E560BD7FDE35BC18926D78FC51484
        3CF05F0BB5B4D8699483171AF9D3B411CD43D2FC2DFD88DE295C6C1CF8A644D1
        77A05E293A8685DAD1C2347DE7556B7733345BB8530E76D09C296344E16B3DFE
        7E6062568A8FC46E630DFD781E5230F009A4D5A845ABC9A6A2E1630D71EB81A0
        C9DF4ADEAA82C65A4DF8E468A291E09F86BC354F4B1342F5FAEE61D44FDF85FA
        AF55A89AC4AC09A6AA7339D2554A3305FF8BAA1C2820DF264C2B81E32B7BF97B
        9016B2E8BFA9F439D51E74D0A6A68F3C076935B796B26B52B11ED65A25AD51D1
        99BC4ED4E210CD195540A73E567A6E47017D5A0469045913B135D7B5A8387B59
        F4BDD3B953E0A4EFAEE642EB3596A6F71C8EF4BA52A988065EE9394AF05B8B07
        B4F84A01A116C769D1C5A0235C0A32F5A64E73C5758F3E07E95AD62AF199AF84
        E7205AB6698CD088CAA2716964C2DF75C32B43E3869A8701FDD2820E3D647593
        52C079305282BC34A5C64B9046C0944AA3F05C8E1BF447A3171B21E523D2B268
        3D18BAFBAF399AFA95A90052CB9E6BCD955417F46BEA8F52A57D7963FCD9049C
        937401941EE65B20AD68D6F5A1EF8D1697BC11E9DAD135A4740C9AD8ACD40CFA
        7E293F617FA3052D817E2B2FE3B6E8A548E745D376249D2FFD48792DD2394CD3
        F728C0557A03BDB2527A0BA56798A873477FF5FA55E941741E94A540694374AE
        D2F3A615F53A675A88A7FB97523A688E57B541260DA87163528E894B2313FEAE
        E2B70FA25EAFCF4656A0D798AAE1FA4E6BCE6915EE4893331A631A0A370745C3
        C6A414CEC54AC146C3B4ABA3ED9192D8E9D781120E9E8094EF46738B1A9D6CD4
        9841E1DA5E11353ED79B3166847093D083D1986E469E09D918638C196B7898EE
        973C538DF9374A98B6585C22C618638CE9171EA49AAC6ACC542E8A4BC418638C
        31FDC28354F3678C998AF234AD1C978931C61863FA8187A8F2491893C5797199
        18638C31A61F78882A3789315928B1E41A71A918638C31A62C3C40557FD0983C
        2E8F4BC518638C3165E101AACCA7C61451697D35638C31A675F0F0DC3879861A
        93CB8571B918638C31A60C3C3C5533CC985EEC1E978C31C618637AC18353D5D0
        6F47BF40AA2C6D8CF817FA35FA0EFA257A4B5C32C6185319DC6BF44C5A22FE69
        4C3BE0A25E00AD8A54697A67F402A48ADDAA9AAFAAE76F4327A2F3D135E82674
        377A18FD16FD0399E6F077F41BF408D2E7A4CF4B9F9B3E3F7D8EFA3C556DFC95
        48096795B26307B41E5A0ECD159786AE8D39D04456B737C6D403F7984D50CA9A
        B1D998C9862FC33C48BF3CD6409AD7A522C0BBA217223DBCF7472A2CAD07FAE1
        E868F42E7406BA187D147D062908F806FA367A10FD08FD0AFD11FD053D819404
        532904C61105A17F437F457F422A4BF33FE831F4005220740BFA2252D1E40F23
        0544A7A3E3D151E850F446F41AF40AB4275230FC1CB41DDA083D152D85E6898F
        C818631A0DF7ABD7A3940362B331A60AF892CD8614BC2D8416474BA265D10A68
        65B41A5250B7167A3A5A17AD8F36440AF4F48B6853B4397A16DA126D85B47A72
        1BB46D488189A4C0504AFF9DFE5D92BDF6D331B6403ADE6648237E6A4781CD06
        48F3DAD6416BA33591821D8D0CAE8496479D2170B428D2A8E19CD15D638C9958
        B817EA4778CACB637323C1BF55D061E8D9B1C918638C31A67910ACE887B346F1
        BF8C1689CD8D04FF343546BC3B3619638C31C698994060F568125FCD3A393619
        638C31C698994060958E6039C032C618638C190604560EB08C31C61863860981
        9556B98B77C526638C31C698C121A8D02A68A589792F3A079D17FF7D1F7A273A
        106975F542B14B29B0576A99BDD18BD1C093DCD9772774123A1B7D2074267A0F
        524E47E579D46AF452B9FDB09B1DED825E827644CF434AAF23945B502BC79F1F
        DA07AD1DBBF60DFB6AB5BC8E710AD239559A1EF97F1A52BAA34A92B0725CAD76
        57DA9FF4BCE9333D17BD1BED1066D3E06F3A8F4AC5A4DC8A6721ED277F752DE8
        780B87E98CE0380B22ADD2575B6F473A1FEF47697BFA7FA57ED2E73447EC3663
        3896321468B5A8AE1F9D0FB5A7F3A3D4494A37F532F434F4EFBC91C618634C5F
        F010519A1CADF0EB874D63F79E60AB87634AE9FD52D8470F3C55A128CBC762D7
        42B0539A20E5622CCBA9B16B69D8470FF26F76F6EE8D72266E11BB0E04FB2F8C
        945351955C945BB217CA43F9DAD857D7C1854809C6CB7079A7D101605FF9A95C
        98FD72461C6220D85FA9999487B32CAA84B368EC6E8C31C694838787F20E7607
        190FA10FA163D15BD19BD11148231E57A2FBD19FD1BA71889E60AB91A5948D62
        7329B0BF22D9ADC3EFD0E791463994D85ABE2998380E5D806E44E2B4D8BD10EC
        E64297A22FA1AB9046AD94285A7C1F5D823E1EBA13ED13BB96027B554CE94689
        B63522A384D21A0D5402568D98DC81BA1968FE17FB6984702A2A89A6FE695452
        9FA73E4BF9702B4A033025C9BE0B3DDEF957823E632507D72892CEB5F6D53570
        3DEAB6BB2B9AEF0BF69B1BA96C9B5060A900FF727432523592F4BAD3F9D167AE
        E4DD29B7C661FA82FD5E9AECDE411551F499EABA5100AFF6DE8294F45BA3744A
        08AEEBED3E34B49133638C3113020F8F8FA194DD62F350E1B8DD01D686B1B927
        D82A7974CAC5B1B95268279D8375426C1A08F6D7ABD41405ADABC59F32E1EFF3
        21553D49794DFCA934ECA30021E548347FFC2913FEAEFC64695A8A94CFA19EA3
        68D85CDDB14E18286718FBCD8B668F7FF6045B05D629E7C5E6D2B04FBA80E167
        68A5D86C8C31C60C171E32AA45FA733D71E0B0D83C7438F6A00196464FC4EDB1
        A972686B28AB08D95F818AB827369502FB8B92DD3AAFA6968ACDA5C05E738AC4
        DDB1A927D8AA12493A9275456C2E05F62AFF26EE8F4D95435B2A33271424951E
        59C256D55A52D68BCDC61863CCF0E141B362F2BCE9F08CD83C7438F6A00156FA
        00EF7BB46250686BC60116FB768FBCED119B4B81BD161AA4AFE05E179B4B81BD
        5EE5896FC6A652609F0675B7C4A65260BF7BB25B87F56373A5D08E4ADBA5F4F3
        9A5AAF38C50F629331C618530D3C6C564F9E391D4A073EFDC2B1070DB0D2C9E1
        E7C7A6CAA1AD610458E9ABBA0763535FB0DFA9C9EEB3AE8A4DA5C03E0DB06E8B
        4DA5C0FE05C96EB3FE8A4AAFF2C4562B1453F68ECD95423BDDD7EC2EB1B927D8
        BE23D965D623B1C918638CA9061E36F3A374C5D8D1B179E870EC41032C4DAA17
        034DA41E04DA1A468075597288591F884D7DC17E0724BBF7170C609F06587D4D
        02C77E8B64B70E2BC7E69E60ABD1B6273A7B1154C6E64AA11DCD1B4B797E6CEE
        09B62F4C76E9D0D7420B638C31A66F78D8A42BEFB44AEBA9B179A870DC4103AC
        EE575087C7E64AA19D6104584A9120DE1A9BFA82FDD2D5800A5E168BCD3DC176
        D0006BA364B70EABC7E69E60AB34179A2B260E8DCD95423BDDAFB54B2FCAC056
        3F26D2B410A5E7A819638C3103C1C366FDE499F36F3E88B4026EEE3099311C6B
        A0004B607F43B25B072D99DF132D1E7F1E3A1C7B460116FBCD89D264A507C4E6
        BE60BFF4959D727F2D139B7B82ED3002ACD24136B6CA6535E3008B7DE7414AEA
        AAEB44896E951455A380FAEC953E42691C1E439AD8FE0794D2D7AA57EC958C36
        457E9F805643A557321A638C31A5E101B30E52BEA46EFE89941B4AD9D36794B5
        9BFD070EB004FBA42BC7BAB917BD16AD18664381E3CD34C052D0A11C52A2D4BC
        24EC94AE6069A487BD5EBB297BBAD067B06C98F504DB510658838ED6BD01A5AF
        19FBA5EFB422ECA3FC6353D16B72A580D81839E79531C698E1C2C345E56C945E
        40D9BDA7A27C59CF0CD3BE60BF19055882FDD6434A0A9995855B093CF7457386
        F9C0708C9906588BA2F4FC5D8C94DC52893395B85593D7B5624FE7F20BE85B68
        6A60DB8D028F25E3D03DC176AC022CF6495F4F0BA50B51825B95123A18ED8636
        472A57A379579D57A5FCB77B92FB4079DBD84F39C7F499A4AF72BB517FE443E9
        B968C618634C2978B8686ECDEB9046B0D26CDB294A30394F989602FB190758DD
        708CED906AC86914AB9B9FA2BE4BF174C3FE330DB0164169D0D10F0AB494D1FD
        B348AFC7CE40FBC5614B81FDD80458D8AB7E64CA11B1B927D80E34072B0F8EA1
        4A06AA81A86CF1534B0BD532EFCF1863CC04C24346738A76402AB7927267FCB9
        14D80F35C0EA86E3AD81544EE51F3A78B06DFCB96FD877A601965EF7A52B3335
        52A539630A56F56A4AA57354585AC5A3754E3645ABA07963F719C171C622C0C2
        7639947E5EC7C6E652603FD400AB1B8EA782DC2ABCFD031D3C3837FE6C8C31C6
        54030F1BD5FD4B293DA919DBCA02AC148EFB7494D654FC4E6CEE1BF69D518025
        D857AF2CC5C1B1A916686F5C02ACED935D3A2C1F9B4B817D650156371C5B7529
        536A49A26A8C316682E16193D6CB7B2036F504DBCA032CC1B135FA903250667A
        F61B468095D6773C2B36D502ED8D4B807548B2CBAC87635369D8A7AE004B73E9
        54EC591C1F9B8D31C6986AE0617372F2CCE9AC942B95A309BBBA022C3D14958D
        5CBC3836F705FB3D92EC3EEBA4D8D437EC9BD6041C78246D10686F5C02ACE393
        5DCA07E929EC534B802538FEA79366665D1B9B8C31C6986AE061F3AEE49933EB
        4FA869019626E7CB2FF1A2D8DC17ECF768B2FB8C46B094DA22659BD85C39B435
        2E01565A17F087B1A934ECA3E2D4295507589F4C9A99754D6C32C61863AA410F
        9BE49933EBDED8D4136CEB0AB0D2049DE269B1B92FD84F2BF9C440656E52D8FF
        EBC961665D179B2A87B6C625C0DA31D9A5435FAF72B1D7A280945D63F3D0E1D8
        5AACA0C4A6E2A8D86C8C31C60C1F1E347B24CF9B0EA597B0635BC72477AD004B
        479FFA7EF594C2BE97248798593915F6EF0EF66A5989463BE3126029A96A9A2B
        ACAF0014FBB593DD3AEC149B870EC7561A90940D62B331C618D31B1E1C4AC170
        0C3A0A2915831E5E4AEAB8245A0AE9758C1EBE4A31904E6E175AC65EBA940EB6
        030558D8AA40EFB948819DFC5815C92FF9A7A5FE6B22FDED7D28AD3327067E75
        C4BE3A0F29D7A37F279CE4FFFBCAF28DFDD93A48A0E04F25609E8B745EF53A73
        01A4C050A332EADFAE4813C0CF430AF4168D439502FBB108B004F6DD656B5402
        49C94537409A47A7EB720EA451A4E5D1B6E808A444A4DD9FF3F671B89E60AB6B
        459F870A696F8994DE6359A46B6919A46B6B6BA495B24A009BF2C1388431C618
        530E1E1E7AB8A7655DCAA21404A5CBB708EC77E9EC99B0596CEE09B6CA76DE2F
        7BC5EE03C331D251AC14D504147DCFC5611F650C1F94CDE330A5C0FEC864B759
        B7C5A65260BF49B25B873563734FB0ED0EB08E8ECDA5619F3420EC17E5D03A07
        F513E42BD37FBF5C1EBB1B638C31E5E101A29102D582FB3852515D8DB22849A6
        268A6B359EF24AFD047D07A94C4DE9E0A81BF6538D3715EC556992D563734FB0
        D5C897CACD7C0D7D1FFD02C927BD5E5260A8D18C0791CAFBE8013A94849D8263
        BD087D03FD06A50CB49A8CFD14C86A65A1FAAF523F0A4AFE86540A47FD51BFD4
        8F3BD1A7D0BBD12B50BF23584A62AAF372666C2A05F62A3F730FBA052D179B7B
        82EDFCE83A24FF075D54B0183A08DD8474FD3D8E144029A8D535A80CF7F7237D
        C60A203743F3C7EEA5611FD57954091C1D4715007E8C54385AE74BD793FE5F05
        A5BF89B4CA714AA99C273DE9FF018213E6326E181A170000000049454E44AE42
        6082}
      Proportional = True
      Transparent = True
      ExplicitLeft = 1003
      ExplicitHeight = 62
    end
  end
  object RESTClient2: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 
      'https://firestore.googleapis.com/v1beta1/projects/coliseusugesto' +
      'es/databases/(default)/documents/sugestoes'
    Params = <
      item
        Kind = pkREQUESTBODY
        name = 'protocolo'
        Value = '701434805722'
      end>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 898
    Top = 200
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <>
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 898
    Top = 248
  end
  object RESTResponse2: TRESTResponse
    ContentType = 'application/json'
    Left = 898
    Top = 304
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 344
    Top = 296
  end
  object DS_Query_Sugestoes: TDataSource
    DataSet = Query_Sugestoes
    Left = 1104
    Top = 152
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    Left = 416
    Top = 488
    Bitmap = {
      494C010101001400600020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000F1F1F
      1E5A5D5D5D9C9E9E9CCCD3D3D0ECF0F0ECFCF0F0ECFCD3D3D0EC9E9E9CCC5D5D
      5D9C1F1F1E5A0000000F00000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000050505265F605F9EE4E4E1F6F2F2
      EDFFEFF0E9FFEFF0E9FFEFF0E9FFEFF0E9FFEFF0E9FFEFF0E9FFEFF0E9FFEFF0
      E9FFF2F2EDFFE4E4E1F65F605F9E050505260000000000000000000000000000
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
      00000000000000000000000000094C4C4B8CEBECE8FAF0F1EBFFEFF0EAFFC9C9
      C4FF93928EFF686664FF4C4A48FF3D3B3AFF3C3939FF494746FF646261FF8F8E
      8BFFC7C7C2FFEFF0EAFFF0F1EBFFEBECE8FA4C4C4B8C00000009000000000000
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
      00000000000005050525ABABA8D4F1F2ECFFEFF0EAFFB3B2ADFF5D5B57FF3D3B
      38FF3B3936FF393735FF373533FF353332FF333130FF322F2FFF322F2FFF322F
      2FFF322F2FFF52504FFFADADA9FFEFF0EAFFF1F2ECFFABABA8D4050505250000
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
      000009090931D0D1CEEBF0F1EBFFDADAD4FF6C6B66FF43413CFF413F3BFF3F3D
      39FF3D3B38FF3B3936FF3A3735FF403E3CFF3E3C3AFF343131FF322F2FFF322F
      2FFF322F2FFF322F2FFF322F2FFF5E5C5BFFD7D7D2FFF0F1EBFFD0D1CEEB0909
      0931000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000505
      0424D1D1CEEBF1F2ECFFC7C7C1FF53524CFF46453FFF45433EFF43413CFF5756
      51FF979792FFC8C8C2FFE7E8E1FFEDEEE7FFE9EAE2FFE3E4DCFFC3C3BDFF8E8D
      89FF474544FF322F2FFF322F2FFF322F2FFF3F3C3BFFC1C1BCFFF1F2ECFFD1D1
      CEEB050504240000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000009AAAA
      A8D4F1F2EDFFC8C8C2FF525049FF4A4942FF484741FF53514CFFACACA6FFECED
      E6FFEEEFE8FFEEEFE8FFEBECE5FFE1E2D9FFE4E5DDFFE8E9E1FFECEBDFFFEEEE
      E6FFEAEBE4FF9F9F9AFF3D3A3AFF322F2FFF322F2FFF383535FFC1C1BCFFF1F2
      EDFFAAAAA8D40000000900000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000004B4B4A8CF3F3
      EEFFDDDDD7FF5B5951FF4E4D45FF4C4B44FF6B6A63FFDDDDD6FFEFF0E9FFEFF0
      E9FFEFF0E9FFEAEBE4FFD8D6C8FFE1CD9EFFECC26AFFF3B334FFF8A605FFEEE4
      C9FFEEEFE8FFEFF0E9FFD6D6D0FF52504EFF322F2FFF322F2FFF3F3C3BFFD8D8
      D4FFF3F3EEFF4B4B4A8C00000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000005050526EBECE8FAF1F2
      EDFF79786FFF525148FF504F46FF6E6D66FFE7E8E1FFEFF0EAFFEFF0EAFFEFF0
      EAFFEFF0EAFFEEB447FFF5A106FFF6A000FFF6A000FFF6A000FFF6A30AFFEAE9
      E0FFEDEEE7FFEFF0EAFFEFF0EAFFE2E2DDFF524F4EFF322F2FFF322F2FFF5F5D
      5BFFF1F2EDFFEBECE8FA05050526000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000005F5F5D9EF3F3EEFFBCBC
      B5FF56554BFF545349FF5E5D54FFDFE0D9FFF0F1EBFFF0F1EBFFF0F1EBFFEFF0
      EAFFEDEDE7FFF0DCB3FFF4A00CFFF59C00FFF59C00FFF59C00FFF59C00FFF2AA
      29FFEDD9B1FFEEEEE8FFF0F1EBFFF0F1EBFFD6D7D1FF3C3A39FF322F2FFF322F
      2FFFAFAEABFFF3F3EEFF5F5F5D9E000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000FE4E4E1F6F3F4EFFF7473
      69FF58574CFF56554BFFB4B4AEFFF1F2EDFFF1F2EDFFF1F2EDFFEFF0EAFFE6E6
      DFFFE9EAE3FFEDEEE7FFF0DDB7FFF39D0DFFF39800FFF39800FFF39800FFF398
      00FFF39A03FFEECE94FFEEEFE9FFF1F2ECFFF1F2EDFF9F9D9AFF322F2FFF322F
      2FFF535150FFF3F4EEFFE4E4E1F60000000F0000000000000000000000000000
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
      0000000000000000000000000000000000001E1E1E5AF4F5F0FFD3D4CDFF5B5B
      4FFF5A594EFF6C6B62FFF0F1EBFFF2F3EEFFF2F3EEFFF0E4D1FFE1B480FFE0DB
      CEFFE5E6DEFFEAEAE4FFEEEEE8FFF0DEBBFFF19A0FFFF19400FFF2CA85FFF19D
      15FFF19400FFF19603FFEDD9B2FFEFF0EAFFF2F3EDFFEDEEE9FF454342FF322F
      2FFF322F2FFFCACAC6FFF4F5F0FF1E1E1E5A0000000000000000000000000000
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
      0000000000000000000000000000000000005C5C5B9CF4F4F0FFA8A8A0FF5D5D
      51FF5B5B4FFFA8A8A0FFF3F4EFFFF3F4EFFFF3F3EEFFE8922CFFE57600FFE0A9
      6AFFE0E1D9FFE6E6DFFFEBEBE5FFEFEFEAFFF1DFC0FFF0AF4AFFF3F4EFFFF3E8
      D3FFF09A17FFF09000FFEFA129FFEDEDE6FFF0F1ECFFF3F4EEFF8C8B88FF322F
      2FFF322F2FFF91908EFFF4F4F0FF5C5C5B9C0000000000000000000000000000
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
      0000000000000000000000000000000000009C9D9BCCF4F5F0FF89897DFF5F5F
      52FF5D5D51FFD3D4CEFFF4F5F0FFF4F5F0FFF1D8B4FFE98000FFE77A00FFDAB6
      8AFFDADBD3FFE1E1DAFFE6E7E1FFEBECE6FFEFF0EBFFF3F3EEFFF4F5F0FFF4F5
      F0FFF2D3A2FFEE8C00FFEE8C00FFEBD3ACFFEDEEE9FFF1F2EDFFC2C2BFFF322F
      2FFF322F2FFF666463FFF4F5F0FF9C9D9BCC0000000000000000000000000000
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
      000000000000000000000000000000000000D2D2CFECF5F5F1FF757568FF6161
      54FF605F53FFEFF0EBFFF5F6F2FFF5F6F2FFF0BB71FFEA8400FFE6860EFFCCCB
      C1FFD4D4CCFFDBDBD4FFE1E2DBFFE7E8E1FFECEDE7FFF0F1ECFFF3F4F0FFF5F6
      F2FFF5F5EFFFED9114FFEC8800FFE9B66CFFEAEAE4FFEEEFEAFFE4E5E0FF3331
      30FF322F2FFF4A4747FFF5F5F1FFD2D2CFEC0000000000000000000000000000
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
      000000000000000000000000000000000000EFF0ECFCF5F6F2FF6C6C5FFF6363
      55FF69685CFFF6F7F3FFF6F7F3FFF6F7F3FFF0B153FFEC8900FFDF932EFFC3C3
      BAFFCCCCC4FFD5D5CDFFDCDCD5FFE2E2DCFFE8E8E2FFEDEDE8FFF1F2EDFFF4F5
      F1FFF6F7F3FFEDA23EFFEA8400FFE7A54DFFE5E5DFFFEAEBE5FFF0F0ECFF3836
      35FF333130FF3C3A39FFF5F6F2FFEFF0ECFC0000000000000000000000000000
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
      000000000000000000000000000000000000EFF0ECFCF6F6F2FF6E6E60FF6565
      57FF6A6A5DFFF7F7F4FFF7F7F4FFF7F7F4FFF1B556FFEE8D00FFDE942AFFBABA
      B0FFC4C4BBFFCDCDC4FFD5D5CEFFDCDDD6FFE3E3DDFFE8E9E3FFEEEEE9FFF2F2
      EEFFF5F6F2FFEC9F3EFFE98100FFE4A14AFFDFE0D9FFE8E8E3FFF6F6F3FF3A37
      36FF353332FF3E3B3AFFF6F6F2FFEFF0ECFC0000000000000000000000000000
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
      000000000000000000000000000000000000D2D2CFECF6F7F3FF7A7A6CFF6767
      58FF656557FFF1F1EEFFF8F8F5FFF8F8F5FFF4C67AFFF09200FFEA900AFFB1AF
      A3FFBABAB1FFC4C4BBFFCDCDC5FFD5D6CEFFDDDDD6FFE3E4DEFFE9EAE4FFEFEF
      EAFFF2F1ECFFE88511FFE77C00FFDDA762FFDDDED8FFF5F6F3FFEAEAE7FF3937
      35FF373533FF4D4B49FFF6F7F3FFD2D2CFEC0000000000000000000000000000
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
      0000000000000000000000000000000000009C9D9ACCF6F7F3FF909084FF6969
      5AFF676758FFD7D7D2FFF9F9F7FFF9F9F7FFF6E2BFFFF29600FFF09200FFC19F
      63FFB0B0A6FFBBBBB1FFC4C5BCFFCDCEC6FFD6D6CFFFDEDED7FFE4E4DFFFEAEA
      E5FFEBCAA2FFE57800FFE57800FFD7BD9BFFF5F5F2FFF9F9F7FFC9C8C6FF3B39
      36FF393735FF6A6966FFF6F7F3FF9C9D9ACC0000000000000000000000000000
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
      0000000000000000000000000000000000005B5C5A9CF7F7F4FFAFAFA6FF6969
      5AFF69695AFFAFAFA6FFFAFAF8FFFAFAF8FFFAFAF7FFF4AC2FFFF29600FFEA93
      0CFFB0A385FFB0B0A6FFDD9432FFCCBA9CFFCECEC7FFD7D7D0FFDEDED8FFE5E5
      DFFFE6B277FFE47400FFE58C2DFFF4F4F0FFFAFAF8FFFAFAF8FF959491FF3D3B
      38FF3B3936FF969593FFF7F7F4FF5B5C5A9C0000000000000000000000000000
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
      0000000000000000000000000000000000001E1E1D5AF6F7F4FFD9DAD4FF6969
      5AFF69695AFF79796CFFF7F8F6FFFBFBF9FFFBFBF9FFF8E5C0FFF49C03FFF296
      00FFEA930BFFC99C54FFEC8900FFE78A10FFCBBCA2FFCECFC7FFD7D7D1FFDFDF
      D9FFE5E0D7FFEEC396FFF8EEE1FFFBFBF9FFFBFBF9FFF5F6F4FF53514DFF3F3D
      39FF3D3B38FFCFCFCCFFF6F7F4FF1E1E1D5A0000000000000000000000000000
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
      0000000000000000000000000000000000000000000FE4E4E0F6F8F8F5FF8282
      74FF69695AFF69695AFFBEBEB7FFFCFCFAFFFCFCFAFFFCFCFAFFF8D9A2FFF49C
      04FFF29600FFF09200FFEE8D00FFEC8900FFE68C15FFCBBEA8FFCFCFC8FFD8D8
      D2FFF0F0EDFFFCFCFAFFFCFCFAFFFCFCFAFFFCFCFAFFABAAA7FF43413CFF413F
      3BFF5E5C59FFF8F8F5FFE4E4E0F60000000F0000000000000000000000000000
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
      000000000000000000000000000000000000000000005D5D5B9EF8F8F6FFC6C6
      BFFF69695AFF69695AFF727263FFE9E9E6FFFCFDFCFFFCFDFCFFFCFDFCFFFAE8
      C7FFF5AD33FFF29600FFF09200FFEE8D00FFEC8900FFE58E1AFFCBC1ADFFEBEB
      E8FFFCFDFCFFFCFDFCFFFCFDFCFFFCFDFCFFE3E3E1FF504E49FF45433EFF4341
      3CFFB8B8B4FFF8F8F6FF5D5D5B9E000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000005050526ECEDE9FAF8F8
      F5FF8C8C7EFF69695AFF69695AFF838375FFF3F3F1FFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFCFBFFF39F0CFFF29600FFF09200FFEE8D00FFED9315FFF3D4ABFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFF0F0EEFF676560FF484741FF46453FFF6F6D
      69FFF8F8F5FFECEDE9FA05050526000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000004949488CF8F8
      F6FFE6E6E2FF727264FF69695AFF69695AFF838375FFEAEAE8FFFEFEFEFFFEFE
      FEFFFCF1DCFFF6A107FFF5B341FFF8CD87FFFBE9CDFFFEFEFDFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFE5E5E4FF6A6963FF4C4B44FF4A4942FF54524CFFE2E1
      DFFFF8F8F6FF4949488C00000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000009A8A8
      A5D4F9FAF7FFD5D5D0FF6E6E5FFF69695AFF69695AFF717163FFBEBEB7FFFBFB
      FBFFFFFEFDFFFEFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFAFAFFB4B3AFFF5B5A51FF504F46FF4E4D45FF525049FFCDCDCAFFF9FA
      F7FFA8A8A5D40000000900000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000404
      0424CFD0CCEBFAFAF8FFD5D5D0FF737364FF69695AFF69695AFF69695AFF7878
      6AFFAEAEA6FFD8D8D5FFF4F4F3FFFFFFFFFFFFFFFFFFF3F3F2FFD5D5D2FFA6A6
      A0FF68675EFF56554BFF545349FF525148FF5B5A52FFCFCECBFFFAFAF8FFCFD0
      CCEB040404240000000000000000000000000000000000000000000000000000
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
      000008080831CFCFCCEBFAFBF9FFE7E8E4FF8C8C80FF69695AFF69695AFF6969
      5AFF69695AFF676758FF656557FF656558FF646356FF5F5F52FF5D5D51FF5B5B
      4FFF5A594EFF58574CFF56554BFF7A7A72FFE4E4E1FFFAFBF9FFCFCFCCEB0808
      0831000000000000000000000000000000000000000000000000000000000000
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
      00000000000004040425A8A8A4D4FAFAF7FFFAFAF8FFC8C8C1FF838375FF6969
      5AFF69695AFF69695AFF676758FF656557FF636355FF616154FF5F5F52FF5D5D
      51FF5B5B4FFF75746BFFC2C1BCFFFAFAF8FFFAFAF7FFA8A8A4D4040404250000
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
      00000000000000000000000000094949478CEDEDE9FAFBFBF9FFFBFBFAFFDCDC
      D8FFB1B1A9FF919186FF7B7B6DFF6E6E61FF6D6D5FFF76756AFF8B8B81FFACAC
      A5FFD9D9D6FFFBFBFAFFFBFBF9FFEDEDE9FA4949478C00000009000000000000
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
      000000000000000000000000000000000000050505265C5C5A9EE3E4E0F6F9FA
      F7FFFCFCFAFFFCFCFAFFFCFCFAFFFCFCFAFFFCFCFAFFFCFCFAFFFCFCFAFFFCFC
      FAFFF9FAF7FFE3E4E0F65C5C5A9E050505260000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000000000000F1D1D
      1C5A5A5A589C9C9C99CCD1D2CEECEFEFEBFCEFEFEBFCD1D2CEEC9C9C99CC5A5A
      589C1D1D1C5A0000000F00000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 728
    Top = 248
    object Act_Atualizar: TAction
      Caption = 'Carregar Listagem'
      Hint = 'Atualizar Listagem'
      ImageIndex = 0
      ShortCut = 116
      OnExecute = Act_AtualizarExecute
    end
    object Act_Visualizar: TAction
      Caption = 'Visualizar'
      ShortCut = 113
      OnExecute = DBGrid1DblClick
    end
    object Act_EmAnalize: TAction
      Caption = 'Em Analize'
      ShortCut = 16449
      OnExecute = Act_EmAnalizeExecute
    end
    object Act_Aprovado: TAction
      Caption = 'Aprovado'
      ShortCut = 16450
      OnExecute = Act_AprovadoExecute
    end
    object Act_Recusado: TAction
      Caption = 'Recusado'
      ShortCut = 16466
      OnExecute = Act_RecusadoExecute
    end
    object Act_Desenvolvimento: TAction
      Caption = 'Em Desenvolvimento'
      ShortCut = 16452
      OnExecute = Act_DesenvolvimentoExecute
    end
    object Act_Concluido: TAction
      Caption = 'Concluido'
      ShortCut = 32835
      OnExecute = Act_ConcluidoExecute
    end
    object Act_Atualizado: TAction
      Caption = 'Atualizado'
      ShortCut = 32881
      OnExecute = Act_AtualizadoExecute
    end
    object Act_ResponsavelColiseu: TAction
      Caption = 'Alterar Respons'#225'vel Coliseu'
      OnExecute = Act_ResponsavelColiseuExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 176
    object ActAtualizar1: TMenuItem
      Action = Act_Atualizar
    end
    object Visualizar1: TMenuItem
      Action = Act_Visualizar
    end
    object Status1: TMenuItem
      Caption = 'Status'
      object EmAnalize1: TMenuItem
        Action = Act_EmAnalize
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Aprovado1: TMenuItem
        Action = Act_Aprovado
      end
      object EmDesenvolvimento1: TMenuItem
        Action = Act_Desenvolvimento
      end
      object Concluido1: TMenuItem
        Action = Act_Concluido
      end
      object Atualizado1: TMenuItem
        Action = Act_Atualizado
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Recusado1: TMenuItem
        Action = Act_Recusado
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object AlterarResponsvelColiseu1: TMenuItem
      Action = Act_ResponsavelColiseu
    end
  end
  object ImageList2: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 20
    Width = 20
    Left = 552
    Top = 256
    Bitmap = {
      494C010102002C00500014001400FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000001400000001002000000000000019
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
      000000000016514D48E95C5854FD2A2926B00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000201
      001A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010003
      0527505858E96A655FFF67625CFF5F5B56FF061C247200000113000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CF90
      30F8070501300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010117007FB0DA00B5
      F4FF706B64FF736D67FF6D6862FF645F5AFF12A5D4FF00AFF0FD003D579A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FF0101001700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000070B3700B2F3FF00BCF5FF00C4
      F7FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF3FD5F9FF00C1F7FF00B8F4FF00A7
      E9FB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FFDB9833FF2D1F0A74231808672318086723180867231808672318
      086723180867231808672318086723180867201607630000000D000000000000
      00000000000000000000000000000001011600ACEBFB00BEF5FF00CAF8FF00D1
      FAFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFA6EFFCFF00CEF9FF00C5F7FF00B9
      F4FF006187BF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFA06F25DA000000000000
      00000000000000000000000000000080B1DB00BBF5FF00C9F8FF00D3FAFF78EB
      FDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF01D7FCFF00CFFAFF00C3
      F7FF00B5F4FF0006093300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF000000000000
      000000000000000000000000000800B3F3FF00C3F7FF00D0FAFF07DBFCFFF4FD
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFABF4FEFF00D7FBFF00CC
      F9FF00BDF5FF008BC3E500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF000000000000
      000000000000000000000023327500B8F4FF00C9F8FF01D5FBFF72ECFDFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFAFEFEFF0FDDFCFF00D0
      FAFF00C2F7FF00B2F3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFF1D6ADFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF000000000000
      00000000000000000000005D83BC00BBF5FF00CCF9FF01D8FCFFE2FAFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF54E8FDFF00D3
      FBFF00C5F7FF00B4F3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF000000000000
      0000000000000000000000648BC200BBF5FF00CCF9FF01D8FCFFF1FCFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF5EE9FDFF00D3
      FBFF00C5F7FF00B5F3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFF1D6ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9833FFDB9833FF000000000000
      0000000000000000000000334A8D00B9F4FF00CAF8FF01D6FBFFA2F3FEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF28E1FDFF00D1
      FAFF00C3F7FF00B2F3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF000000000000
      000000000000000000000002031D00B5F3FF00C5F7FF00D2FAFF1AE0FDFFF9FD
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC4F7FEFF01D8FBFF00CD
      F9FF00BEF6FF00A4E5F800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFF1D6ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB9833FFDB9833FF000000000000
      000000000000000000000000000000A1DEF500BEF5FF00CBF8FF00D5FAFF2BE1
      FDFFECFCFEFFFEFEFEFFFEFEFEFFFEFEFEFFA6F3FEFF02DAFCFF00D1FAFF00C6
      F7FF00B8F4FF00151E5C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF000000000000
      00000000000000000000000000000005072C00B4F3FF00C1F6FF00CCF9FF00D3
      FBFF01D9FCFF01DDFDFF01DDFDFF01DBFDFF01D7FBFF00D0FAFF00C8F8FF00BC
      F5FF0094CDEB0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF000000000000
      000000000000000000000000000000000000002C3F8300B5F4FF00C0F6FF00C8
      F8FF00CDFAFF00D1FAFF00D1FBFF00D0FAFF00CCF9FF00C5F8FF00BCF5FF00AD
      EFFD0001021B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF674718AF000000000000
      000000000000000000000000000000000000000000000010175000B1F2FF00B9
      F4FF00BEF5FF00C2F6FF00C2F6FF00C1F6FF00BCF5FF00B6F4FF008FC8E80000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000004003E
      599B008DC3E500AAE7F900B1F1FE009FDBF2007CACD7000E144B000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000140000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 456
    Top = 193
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.Password = '45781389'
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Username = 'silenus@silenus.com.br'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 824
    Top = 153
  end
  object Query_Sugestoes: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select col_sugestoes.ID_COLSUGESTOES,'
      '       col_sugestoes.data,'
      '       col_sugestoes.cnpj,'
      '       clientes.nome,'
      '       clientes.nome_fantasia,'
      '       col_sugestoes.protocolo,'
      '       col_sugestoes.solicitacao,'
      '       cast(col_sugestoes.descricao as varchar(500)) descricao,'
      '       col_sugestoes.responsavel,'
      '       col_sugestoes.fone,'
      '       col_sugestoes.email,'
      '       DESCRITIVOS_FINAIS,'
      '       DATA_PREVISTA,'
      '       DATA_APROVA,'
      '      VALOR,'
      '       case when col_sugestoes.tipo = 1 then '#39'SUGEST'#195'O'#39
      '             when col_sugestoes.tipo =2 then  '#39'SOLICITA'#199#195'O'#39
      '       end tipo_,'
      '       col_sugestoes.tipo,      '
      '       case when col_sugestoes.status = 1 then '#39'EM AN'#193'LISE'#39
      '            when col_sugestoes.status = 2 then '#39'APROVADO'#39
      '            when col_sugestoes.status = 3 then '#39'RECUSADO'#39
      
        '            when col_sugestoes.status = 4 then '#39'EM DESENVOLVIMEN' +
        'TO'#39
      '            when col_sugestoes.status = 5 then '#39'CONCLUIDO'#39
      '            when col_sugestoes.status = 6 then '#39'ATUALIZADO'#39
      ''
      '       end,'
      '      col_sugestoes.status,'
      
        '   (SELECT FUNCIONARIOS.nome FROM FUNCIONARIOS WHERE funcionario' +
        's.id_funcionario = col_sugestoes.aprovado_por) APROVADO_POR,'
      
        '   (SELECT FUNCIONARIOS.nome FROM FUNCIONARIOS WHERE funcionario' +
        's.id_funcionario = col_sugestoes.atualizado_por) ATUALIZADO_POR,'
      
        '   (SELECT FUNCIONARIOS.nome FROM FUNCIONARIOS WHERE funcionario' +
        's.id_funcionario = col_sugestoes.responsavel_empresa) RESPONSAVE' +
        'L_COLISEU,'
      '    col_sugestoes.responsavel_empresa'
      ''
      '       from col_sugestoes'
      
        '        left join clientes on clientes.id_cliente = col_sugestoe' +
        's.id_cliente')
    Left = 1024
    Top = 153
    object Query_SugestoesID_COLSUGESTOES: TIntegerField
      FieldName = 'ID_COLSUGESTOES'
      Origin = 'ID_COLSUGESTOES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Query_SugestoesDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Query_SugestoesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object Query_SugestoesNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object Query_SugestoesNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Query_SugestoesPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Size = 50
    end
    object Query_SugestoesSOLICITACAO: TStringField
      FieldName = 'SOLICITACAO'
      Origin = 'SOLICITACAO'
      Size = 50
    end
    object Query_SugestoesDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object Query_SugestoesRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object Query_SugestoesFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 15
    end
    object Query_SugestoesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object Query_SugestoesDESCRITIVOS_FINAIS: TMemoField
      FieldName = 'DESCRITIVOS_FINAIS'
      Origin = 'DESCRITIVOS_FINAIS'
      BlobType = ftMemo
    end
    object Query_SugestoesDATA_PREVISTA: TDateField
      FieldName = 'DATA_PREVISTA'
      Origin = 'DATA_PREVISTA'
    end
    object Query_SugestoesDATA_APROVA: TDateField
      FieldName = 'DATA_APROVA'
      Origin = 'DATA_APROVA'
    end
    object Query_SugestoesVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
    end
    object Query_SugestoesTIPO_: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_'
      Origin = 'TIPO_'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
    object Query_SugestoesTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
    object Query_SugestoesCASE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CASE'
      Origin = '"CASE"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 18
    end
    object Query_SugestoesSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object Query_SugestoesAPROVADO_POR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APROVADO_POR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Query_SugestoesATUALIZADO_POR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATUALIZADO_POR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Query_SugestoesRESPONSAVEL_COLISEU: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RESPONSAVEL_COLISEU'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Query_SugestoesRESPONSAVEL_EMPRESA: TIntegerField
      FieldName = 'RESPONSAVEL_EMPRESA'
      Origin = 'RESPONSAVEL_EMPRESA'
    end
  end
end
