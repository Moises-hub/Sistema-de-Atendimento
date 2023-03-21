object Frm_Atendimento: TFrm_Atendimento
  Left = 0
  Top = 0
  Align = alCustom
  AutoSize = True
  Caption = 'Atendimento'
  ClientHeight = 749
  ClientWidth = 1288
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 1288
    Height = 673
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object RzGroupBox7: TRzGroupBox
      Left = 0
      Top = 441
      Width = 1288
      Height = 232
      Align = alClient
      Alignment = taCenter
      Caption = 'HIST'#211'RICO DE ATENDIMENTO'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      Color = clWhite
      GroupStyle = gsUnderline
      TabOrder = 3
      VisualStyle = vsGradient
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 0
        Top = 20
        Width = 1288
        Height = 212
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DM.DS_Query_Historico
        DrawingStyle = gdsClassic
        FixedColor = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clInactiveBorder
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Alignment = taCenter
            Color = clGradientInactiveCaption
            Expanded = False
            FieldName = 'DATA_HORA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Data / Hora'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOLICITANTE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Width = 226
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Pitch = fpFixed
            Font.Style = []
            Title.Caption = 'Tipo'
            Width = 88
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SOFTWARE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Software'
            Width = 97
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VERSAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vers'#227'o'
            Width = 74
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DETALHE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Descri'#231#227'o'
            Width = 380
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RESPONSAVEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Repons'#225'vel'
            Width = 124
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1288
      Height = 233
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Panel5: TPanel
        Left = 913
        Top = 0
        Width = 375
        Height = 233
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object RzGroupBox4: TRzGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 369
          Height = 227
          Align = alClient
          BorderColor = clWhite
          BorderOuter = fsFlatRounded
          Caption = 'Software / Vers'#227'o / data de Atualiza'#231#227'o'
          CaptionFont.Charset = ANSI_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -13
          CaptionFont.Name = 'Calibri'
          CaptionFont.Style = [fsItalic]
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsItalic]
          GroupStyle = gsCustom
          ParentFont = False
          TabOrder = 0
          Transparent = True
          object DBGrid3: TDBGrid
            AlignWithMargins = True
            Left = 7
            Top = 22
            Width = 355
            Height = 198
            Align = alClient
            BorderStyle = bsNone
            DataSource = DM.DS_Query_ListSoftware
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Options = [dgIndicator, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Calibri'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'SOFTWARE'
                Width = 183
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VERSAO'
                Title.Caption = 'VERS'#195'O'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ATUALIZACAO'
                Title.Caption = 'DATA ATUALIZA'#199#195'O'
                Width = 64
                Visible = True
              end>
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 913
        Height = 233
        Align = alLeft
        BevelOuter = bvNone
        Color = clHighlightText
        ParentBackground = False
        TabOrder = 1
        StyleElements = []
        object RzGroupBox3: TRzGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 907
          Height = 70
          Align = alTop
          Caption = 'DADOS'
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clGray
          CaptionFont.Height = -11
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = [fsBold]
          Color = clGradientInactiveCaption
          GroupStyle = gsTopLine
          TabOrder = 0
          Transparent = True
          VisualStyle = vsGradient
          object DBText1: TDBText
            Left = 68
            Top = 23
            Width = 229
            Height = 17
            DataField = 'NOME'
            DataSource = DM.DS_Clientes
          end
          object DBText10: TDBText
            Left = 630
            Top = 41
            Width = 251
            Height = 17
            DataField = 'EMAIL'
            DataSource = DM.DS_Clientes
          end
          object DBText2: TDBText
            Left = 399
            Top = 23
            Width = 155
            Height = 17
            DataField = 'CPF_CNPJ'
            DataSource = DM.DS_Clientes
          end
          object DBText7: TDBText
            Left = 68
            Top = 41
            Width = 88
            Height = 17
            DataField = 'FONE'
            DataSource = DM.DS_Clientes
          end
          object DBText8: TDBText
            Left = 233
            Top = 41
            Width = 77
            Height = 17
            DataField = 'FONE2'
            DataSource = DM.DS_Clientes
          end
          object DBText9: TDBText
            Left = 393
            Top = 41
            Width = 76
            Height = 16
            DataField = 'CELULAR'
            DataSource = DM.DS_Clientes
          end
          object Label1: TLabel
            Left = 28
            Top = 23
            Width = 34
            Height = 13
            Caption = 'NOME:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 581
            Top = 41
            Width = 43
            Height = 13
            Caption = 'E-MAIL:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 363
            Top = 23
            Width = 30
            Height = 13
            Caption = 'CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 32
            Top = 41
            Width = 30
            Height = 13
            Caption = 'FONE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 197
            Top = 41
            Width = 30
            Height = 13
            Caption = 'FONE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 363
            Top = 41
            Width = 22
            Height = 13
            Caption = 'CEL:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 579
            Top = 23
            Width = 45
            Height = 13
            Caption = 'CIDADE:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 630
            Top = 23
            Width = 229
            Height = 17
            DataField = 'CIDADE'
            DataSource = DM.DS_Clientes
          end
          object DBText4: TDBText
            Left = 114
            Top = 57
            Width = 201
            Height = 17
            DataField = 'RESPONSAVEL_EMPRESA'
            DataSource = DM.DS_Clientes
          end
          object Label4: TLabel
            Left = 28
            Top = 57
            Width = 80
            Height = 13
            Alignment = taRightJustify
            Caption = 'RESPONS'#193'VEL:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RzGroupBox1: TRzGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 79
          Width = 907
          Height = 34
          Align = alTop
          Caption = 'MODULOS'
          CaptionFont.Charset = ANSI_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -13
          CaptionFont.Name = 'Calibri'
          CaptionFont.Style = [fsBold]
          Color = clWhite
          Enabled = False
          FlatColor = clBlack
          GroupStyle = gsTopLine
          TabOrder = 1
          Transparent = True
          VisualStyle = vsClassic
          object CheckBox1: TCheckBox
            Left = 18
            Top = 16
            Width = 57
            Height = 17
            Caption = 'NF-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object CheckBox2: TCheckBox
            Left = 143
            Top = 16
            Width = 48
            Height = 17
            Caption = 'NFC-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object CheckBox3: TCheckBox
            Left = 75
            Top = 16
            Width = 58
            Height = 17
            Caption = 'NFS-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object CheckBox4: TCheckBox
            Left = 211
            Top = 16
            Width = 67
            Height = 17
            Caption = 'MDF-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object CheckBox5: TCheckBox
            Left = 271
            Top = 16
            Width = 57
            Height = 17
            Caption = 'CT-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object CheckBox6: TCheckBox
            Left = 322
            Top = 16
            Width = 97
            Height = 17
            Caption = 'APP SALES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object CheckBox7: TCheckBox
            Left = 407
            Top = 16
            Width = 97
            Height = 17
            Caption = 'APP DASH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
        end
        object RzGroupBox2: TRzGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 119
          Width = 907
          Height = 98
          Align = alTop
          Caption = 'MODO DE TRABALHO'
          CaptionFont.Charset = ANSI_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -13
          CaptionFont.Name = 'Calibri'
          CaptionFont.Style = [fsBold]
          Enabled = False
          FlatColor = clBlack
          GroupStyle = gsTopLine
          TabOrder = 2
          Transparent = True
          VisualStyle = vsClassic
          object CheckBox15: TCheckBox
            Left = 18
            Top = 22
            Width = 138
            Height = 26
            Caption = 'CONTROLE DE ESTOQUE POR GRADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            WordWrap = True
          end
          object CheckBox16: TCheckBox
            Left = 154
            Top = 19
            Width = 132
            Height = 32
            Caption = 'CONTROLE DE ESTOQUE POR DEPARTAMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            WordWrap = True
          end
          object CheckBox17: TCheckBox
            Left = 388
            Top = 23
            Width = 82
            Height = 24
            Caption = 'CONTROLE DE ENTREGA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            WordWrap = True
          end
          object CheckBox20: TCheckBox
            Left = 296
            Top = 23
            Width = 74
            Height = 24
            Caption = 'BOLETO BANCARIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            WordWrap = True
          end
          object CheckBox29: TCheckBox
            Left = 18
            Top = 60
            Width = 87
            Height = 17
            Caption = 'PROPRIEDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object CheckBox30: TCheckBox
            Left = 154
            Top = 60
            Width = 110
            Height = 17
            Caption = 'CONDICIONAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object CheckBox31: TCheckBox
            Left = 388
            Top = 57
            Width = 70
            Height = 24
            Caption = 'ORDEM DE SERVI'#199'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            WordWrap = True
          end
          object CheckBox18: TCheckBox
            Left = 296
            Top = 60
            Width = 49
            Height = 17
            Caption = 'LOTE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object RadioGroup1: TRadioGroup
            Left = 502
            Top = 12
            Width = 159
            Height = 34
            Caption = 'Baixa de Estoque pela Entrega'
            Color = clWhite
            Columns = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsItalic]
            ItemIndex = 0
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 8
          end
          object RadioGroup2: TRadioGroup
            Left = 502
            Top = 50
            Width = 322
            Height = 40
            Caption = 'Tipo de Faturamento PDV'
            Color = clWhite
            Columns = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlightText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsItalic]
            ItemIndex = 0
            Items.Strings = (
              'FRENTE DE CAIXA'
              'ATENDIMENTO')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 9
            WordWrap = True
          end
          object RadioGroup3: TRadioGroup
            Left = 665
            Top = 12
            Width = 159
            Height = 34
            Caption = 'Presta'#231#227'o de Servi'#231'o'
            Color = clWhite
            Columns = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clHighlightText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsItalic]
            ItemIndex = 0
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 10
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 274
      Width = 1288
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object RzBitBtn2: TRzBitBtn
        AlignWithMargins = True
        Left = 131
        Top = 7
        Width = 97
        Height = 32
        Cursor = crHandPoint
        Margins.Top = 7
        Margins.Bottom = 7
        FrameColor = clSilver
        ShowDownPattern = False
        Action = Act_Atender
        Align = alLeft
        Caption = 'Atender - F2'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        HighlightColor = 9932172
        HotTrack = True
        HotTrackColor = 9932172
        LightTextStyle = True
        ParentFont = False
        TextShadowColor = 13487565
        TabOrder = 0
        TextStyle = tsShadow
        ThemeAware = False
        ImageIndex = 1
        Images = ImageList2
      end
      object RzBitBtn1: TRzBitBtn
        AlignWithMargins = True
        Left = 234
        Top = 7
        Width = 101
        Height = 32
        Cursor = crHandPoint
        Margins.Top = 7
        Margins.Bottom = 7
        FrameColor = clSilver
        ShowDownPattern = False
        Action = Act_Ocorrencia
        Align = alLeft
        Caption = 'Ocorr'#234'ncia - F3'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        HighlightColor = 9932172
        HotTrack = True
        HotTrackColor = 9932172
        LightTextStyle = True
        ParentFont = False
        TextShadowColor = 13487565
        TabOrder = 1
        TextStyle = tsShadow
        ThemeAware = False
        ImageIndex = 0
        Images = ImageList2
      end
      object RzBitBtn3: TRzBitBtn
        AlignWithMargins = True
        Left = 468
        Top = 7
        Width = 119
        Height = 32
        Cursor = crHandPoint
        Margins.Top = 7
        Margins.Bottom = 7
        FrameColor = clSilver
        ShowDownPattern = False
        Action = Act_Atualizacao
        Align = alLeft
        Caption = 'Atualiza'#231#227'o - F4'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        HighlightColor = 9932172
        HotTrack = True
        HotTrackColor = 9932172
        LightTextStyle = True
        ParentFont = False
        TextShadowColor = 13487565
        TabOrder = 2
        TextStyle = tsShadow
        ThemeAware = False
        ImageIndex = 2
        Images = ImageList2
      end
      object RzBitBtn4: TRzBitBtn
        AlignWithMargins = True
        Left = 341
        Top = 7
        Width = 121
        Height = 32
        Cursor = crHandPoint
        Margins.Top = 7
        Margins.Bottom = 7
        FrameColor = clSilver
        ShowDownPattern = False
        Action = Act_Pendencia
        Align = alLeft
        Caption = 'Pend'#234'ncia - Shift+P'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        HighlightColor = 9932172
        HotTrack = True
        HotTrackColor = 9932172
        LightTextStyle = True
        ParentFont = False
        TextShadowColor = 13487565
        TabOrder = 3
        TextStyle = tsShadow
        ThemeAware = False
        ImageIndex = 3
        Images = ImageList2
      end
      object RzBitBtn5: TRzBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 7
        Width = 122
        Height = 32
        Cursor = crHandPoint
        Margins.Top = 7
        Margins.Bottom = 7
        FrameColor = clSilver
        ShowDownPattern = False
        Action = Act_Cancelar
        Align = alLeft
        Caption = 'Cancelar Atend.- Shift+C'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        HighlightColor = 9932172
        HotTrack = True
        HotTrackColor = 9932172
        LightTextStyle = True
        ParentFont = False
        TextShadowColor = 13487565
        TabOrder = 4
        TextStyle = tsShadow
        ThemeAware = False
        ImageIndex = 4
        Images = ImageList2
      end
      object RzBitBtn6: TRzBitBtn
        AlignWithMargins = True
        Left = 593
        Top = 7
        Width = 106
        Height = 32
        Cursor = crHandPoint
        Margins.Top = 7
        Margins.Bottom = 7
        FrameColor = clSilver
        ShowDownPattern = False
        Action = Act_Finalizar
        Align = alLeft
        Caption = 'Finalizar Atend. - F5'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        HighlightColor = 9932172
        HotTrack = True
        HotTrackColor = 9932172
        LightTextStyle = True
        ParentFont = False
        TextShadowColor = 13487565
        TabOrder = 5
        TextStyle = tsShadow
        ThemeAware = False
        ImageIndex = 5
        Images = ImageList2
      end
      object RzBitBtn7: TRzBitBtn
        AlignWithMargins = True
        Left = 1190
        Top = 7
        Width = 95
        Height = 32
        Cursor = crHandPoint
        Margins.Top = 7
        Margins.Bottom = 7
        FrameColor = clSilver
        ShowDownPattern = False
        Action = Act_Close
        Align = alRight
        Caption = 'Sair - Esc'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        HighlightColor = 9932172
        HotTrack = True
        HotTrackColor = 9932172
        LightTextStyle = True
        ParentFont = False
        TextShadowColor = 13487565
        TabOrder = 6
        TextStyle = tsShadow
        ThemeAware = False
        ImageIndex = 7
        Images = ImageList2
      end
      object RzBitBtn8: TRzBitBtn
        AlignWithMargins = True
        Left = 1105
        Top = 7
        Width = 79
        Height = 32
        Cursor = crHandPoint
        Margins.Top = 7
        Margins.Bottom = 7
        FrameColor = clSilver
        ShowDownPattern = False
        Action = Act_Cliente
        Align = alRight
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        HighlightColor = 9932172
        HotTrack = True
        HotTrackColor = 9932172
        LightTextStyle = True
        ParentFont = False
        TextShadowColor = 13487565
        TabOrder = 7
        TextStyle = tsShadow
        ThemeAware = False
        ImageIndex = 6
        Images = ImageList2
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 233
      Width = 1288
      Height = 41
      Align = alTop
      Color = clGray
      ParentBackground = False
      TabOrder = 4
      object Label5: TLabel
        Left = 1
        Top = 1
        Width = 117
        Height = 39
        Align = alLeft
        Alignment = taRightJustify
        Caption = '    CONTATO:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 19
      end
    end
    object RzGroupBox6: TRzGroupBox
      Left = 0
      Top = 320
      Width = 1288
      Height = 121
      Align = alTop
      Alignment = taCenter
      Caption = 'ATENDIMENTO'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      GroupStyle = gsUnderline
      TabOrder = 2
      Transparent = True
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 20
        Width = 1282
        Height = 98
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnHighlight
        DataSource = DM.DS_Query_Ocorrencia
        DrawingStyle = gdsClassic
        FixedColor = clHotLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clHighlightText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'TIPO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 95
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_HORA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'DATA/HORA'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOFTWARE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 137
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VERSAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 404
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
            Width = 263
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BTN'
            Title.Caption = ' '
            Width = 24
            Visible = True
          end>
      end
    end
  end
  object RzGroupBox5: TRzGroupBox
    Left = 0
    Top = 0
    Width = 1288
    Height = 57
    Align = alTop
    Alignment = taCenter
    Caption = 'ATENDIMENTO'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Calibri'
    CaptionFont.Style = [fsBold]
    GroupStyle = gsUnderline
    TabOrder = 1
    Transparent = True
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 20
      Width = 1282
      Height = 34
      Align = alClient
      BevelOuter = bvNone
      Color = 11904411
      ParentBackground = False
      TabOrder = 0
      StyleElements = []
      DesignSize = (
        1282
        34)
      object Label13: TLabel
        Left = 188
        Top = 10
        Width = 58
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Atendente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 194
      end
      object Label14: TLabel
        Left = 422
        Top = 10
        Width = 71
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Respons'#225'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 428
      end
      object Label15: TLabel
        Left = 664
        Top = 10
        Width = 55
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 670
      end
      object Label16: TLabel
        Left = 1085
        Top = 10
        Width = 36
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 1091
      end
      object Label17: TLabel
        Left = 0
        Top = 0
        Width = 72
        Height = 34
        Align = alLeft
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = 'Canal de Atendimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitHeight = 32
      end
      object Edit2: TEdit
        Left = 725
        Top = 9
        Width = 351
        Height = 21
        Anchors = [akTop, akRight]
        CharCase = ecUpperCase
        Color = clBtnHighlight
        Ctl3D = True
        DoubleBuffered = False
        MaxLength = 80
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ReadOnly = True
        TabOrder = 1
      end
      object RzComboBox1: TRzComboBox
        Left = 252
        Top = 9
        Width = 164
        Height = 22
        Anchors = [akTop, akRight]
        Style = csOwnerDrawFixed
        CharCase = ecUpperCase
        Color = clBtnHighlight
        Ctl3D = True
        DoubleBuffered = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ReadOnly = True
        ReadOnlyColor = clBtnHighlight
        TabOrder = 0
        Items.Strings = (
          '<>')
      end
      object RzComboBox4: TRzComboBox
        Left = 1127
        Top = 9
        Width = 128
        Height = 22
        Anchors = [akTop, akRight]
        Style = csOwnerDrawFixed
        CharCase = ecUpperCase
        Color = clBtnHighlight
        Ctl3D = True
        DoubleBuffered = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ReadOnly = True
        ReadOnlyColor = clBtnHighlight
        TabOrder = 2
        Items.Strings = (
          'URGENTE'
          'EM ESPERA'
          'EM ATENDIMENTO'
          'FINALIZADO'
          'PENDENTE'
          'CANCELADO')
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '9')
      end
      object RzComboBox2: TRzComboBox
        Left = 506
        Top = 9
        Width = 152
        Height = 22
        Anchors = [akTop, akRight]
        Style = csOwnerDrawFixed
        CharCase = ecUpperCase
        Color = clBtnHighlight
        Ctl3D = True
        DoubleBuffered = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        TabOrder = 3
        OnSelect = RzComboBox2Select
        Items.Strings = (
          '<>')
      end
      object RzComboBox3: TRzComboBox
        Left = 76
        Top = 9
        Width = 109
        Height = 21
        Anchors = [akTop, akRight]
        Color = clWhite
        ReadOnlyColor = clWhite
        TabOrder = 4
        Items.Strings = (
          'TELEFONE'
          'WATTS'
          'EMAIL'
          'SKYPE')
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 730
    Width = 1288
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 800
    Top = 216
    object Act_Ocorrencia: TAction
      Caption = 'Ocorr'#234'ncia - F3'
      ImageIndex = 1
      ShortCut = 114
      OnExecute = Act_OcorrenciaExecute
    end
    object Act_Atualizacao: TAction
      Caption = 'Atualiza'#231#227'o - F4'
      ImageIndex = 2
      ShortCut = 115
      OnExecute = Act_AtualizacaoExecute
    end
    object Act_Atender: TAction
      Caption = 'Atender - F2'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = Act_AtenderExecute
    end
    object Act_Pendencia: TAction
      Caption = 'Pend'#234'ncia - Shift+P'
      ImageIndex = 3
      ShortCut = 8272
      OnExecute = Act_PendenciaExecute
    end
    object Act_Finalizar: TAction
      Caption = 'Finalizar Atendimento - F5'
      ImageIndex = 5
      ShortCut = 116
      OnExecute = Act_FinalizarExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar Atendimento - Shift+C'
      ImageIndex = 4
      ShortCut = 8259
      OnExecute = Act_CancelarExecute
    end
    object Act_Close: TAction
      Caption = 'Sair - Esc'
      ImageIndex = 6
      ShortCut = 27
      OnExecute = Act_CloseExecute
    end
    object Act_Cliente: TAction
      Caption = 'Cliente'
      ImageIndex = 8
      OnExecute = Act_ClienteExecute
    end
  end
  object Query: TFDQuery
    Connection = DM.Conexao
    Left = 744
    Top = 200
  end
  object Query_atend: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select * from controle_atendimentos'
      'where id_atendimento =:f')
    Left = 700
    Top = 221
    ParamData = <
      item
        Name = 'F'
        ParamType = ptInput
      end>
    object Query_atendICO_CANAL: TStringField
      FieldName = 'ICO_CANAL'
      Origin = 'ICO_CANAL'
      FixedChar = True
      Size = 0
    end
    object Query_atendCANAL: TIntegerField
      FieldName = 'CANAL'
      Origin = 'CANAL'
    end
    object Query_atendDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object Query_atendCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 70
    end
    object Query_atendID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object Query_atendID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Origin = 'ID_ATENDIMENTO'
    end
    object Query_atendATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Origin = 'ATENDENTE'
      Size = 50
    end
    object Query_atendID_ATENDENTE: TIntegerField
      FieldName = 'ID_ATENDENTE'
      Origin = 'ID_ATENDENTE'
    end
    object Query_atendDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object Query_atendSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 14
    end
    object Query_atendID_STATUS: TIntegerField
      FieldName = 'ID_STATUS'
      Origin = 'ID_STATUS'
    end
    object Query_atendRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Size = 50
    end
    object Query_atendID_RESPONSAVEL: TIntegerField
      FieldName = 'ID_RESPONSAVEL'
      Origin = 'ID_RESPONSAVEL'
    end
    object Query_atendALT: TStringField
      FieldName = 'ALT'
      Origin = 'ALT'
      FixedChar = True
      Size = 0
    end
    object Query_atendDEL: TStringField
      FieldName = 'DEL'
      Origin = 'DEL'
      FixedChar = True
      Size = 0
    end
    object Query_atendCAN: TStringField
      FieldName = 'CAN'
      Origin = 'CAN'
      FixedChar = True
      Size = 0
    end
    object Query_atendATE: TStringField
      FieldName = 'ATE'
      Origin = 'ATE'
      FixedChar = True
      Size = 0
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 896
    Top = 168
    Bitmap = {
      494C010109003000B00018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000151515250C0C0C150000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0C15171717280202020400000000000000000000000000000000000000000000
      00000000000000000000151515250B0B0B140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E5F78C8C8CA50000
      0000000000000000000000000000000000000000000000000000000000008D8D
      8DB2FFFFFFFF1B1B1B2E00000000000000000000000000000000000000000000
      00000000000000000000F0F0F0FC7676769A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECEE1B9B9B9C80000
      000000000000000000000000000000000000000000000000000000000000CACA
      CAEBFFFFFFFF3B3B3B4B00000000000000000000000000000000000000000000
      0000000000003535355BFEFEFEFF4747476E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B8B8BA0F2F2F2FC2A2A
      2A4000000000000000000000000000000000000000000000000055555575FDFD
      FDFFFAFAFAFFA8A8A8C40505050A000000000000000000000000000000000000
      00000E0E0E15DADADAF7DDDDDDF10505050A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000707070FE4E4E4FBFEFE
      FEFF2A2A2A400000000000000000000000000000000024242443F1F1F1FDCCCC
      CCE0666666A3FFFFFFFF9A9A9ABB000000000000000000000000000000000101
      0101A6A6A6D2FFFFFFFF4F4F4F62000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002C2C2C3DE4E4
      E4FBF2F2F2FCB9B9B9C88D8D8DA5909090A6C0C0C0CEFBFBFBFFC6C6C6E32121
      212F00000000818181A5FDFDFDFFD6D6D6EBA0A0A0AF878787A3A4A4A4AEDEDE
      DEEEF6F6F6FE6767678404040408000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001313
      1325E4E4E4F5FFFFFFFFF1F1F1FDF5F5F5FDFFFFFFFFF0F0F0FE1B1B1B2C0000
      00000000000000000000868686ACFFFFFFFFFBFBFBFFEEEEEEFCFEFEFEFFFFFF
      FFFF7B7B7BA20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003030305D4D4
      D4F8FFFFFFFF6F6F6FA00000000002020204808080AEFFFFFFFF929292B90000
      0000000000003D3D3D64FFFFFFFFE1E1E1FB1D1D1D31000000001A1A1A31DEDE
      DEF2F0F0F0FC0707070E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3E4CFFFF
      FFFF6666667E00000000000000000000000003030305808080AEFBFBFBFF2B2B
      2B4700000000BBBBBBCDD4D4D4E3080808100000000000000000000000001C1C
      1C2CE9E9E9FBB9B9B9E300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6C80FFFF
      FFFF212121350000000000000000000000000000000002020204F5F5F5FE6C6C
      6C9300000000E0E0E0F3969696A7000000000000000000000000000000000000
      0000969696BEFFFFFFFF0B0B0B15000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007373738BFFFF
      FFFF1C1C1C2F0000000000000000000000000000000000000000F1F1F1FD7272
      729800000000E3E3E3F68D8D8DA5000000000000000000000000000000000000
      00008D8D8DB4FFFFFFFF0F0F0F1B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000045454555FFFF
      FFFF5656566C000000000000000000000000000000006F6F6FA0FFFFFFFF3333
      335300000000C3C3C3D4CDCDCDDF000000000000000000000000000000001010
      101DE4E4E4F6C8C8C8EF01010102000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C15D4D4
      D4EAEDEDEDFC5656566C1C1C1C2F212121346565657DFFFFFFFFA7A7A7C70000
      00000000000056565672F9F9F9FEA5A5A5D02F2F2F431A1A1A2B32323247BCBC
      BCD2F1F1F1F82323233E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0102D4D4D4EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9F90D0D0D180000
      0000000000000000000061616181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFF555555800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C15454545557272728A6F6F6F853E3E3E4C03030307000000000000
      00000000000000000000010101022828283D5F5F5F6E787878935A5A5A642020
      202F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0DED300A2BCA60078967800688A
      6900688A690078967800A2BDA700D0DED3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000494846FFA3ACABFFC2C9C4FFCECF
      C3FFD1D0C5FFD0D0C5FFD0D0C4FFD0D0C4FFD0D0C4FFD0D0C4FFD0D0C4FFD0D0
      C4FFD0D0C4FFD0D0C4FFD0D0C4FFD0D0C4FFD0D0C4FFD8D8CEFFFBFBF9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000006264E5005364DD006E81E3006C7EE3006C7DE3006B7D
      E3006A7BE3006779E3006577E2006175E2004655DA006264E500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0C5B300305F32002B592C002B5629003B704300447D
      5000447D50003B7043002B5629002B592C00305F3200AFC5B300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000054500000545001C21
      5A00424676006B6E9400989BB400C1C3D200E6E7ED0000000000000000000000
      00000000000000000000000000000000000070716CFFA2C3DBFFA2C4DFFFA8C3
      D7FFDFE5E7FFEFF0EEFFF4F4F0FFF2F2EFFFF2F2EFFFF2F2EFFFF2F2EFFFF2F2
      EFFFF2F2EFFFF2F2EFFFF2F2EFFFF2F2EFFFF2F2EFFFF5F5F3FFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000191CCF008C99DC00C0CDF900C0CDF900C0CDF900C0CDF900C0CD
      F900C0CDF900C0CDF900C0CDF900C0CDF900C0CDF9007886D800191AD9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDE8E000688F6C002C5D2E003F784A006BB68B0086DBB10087DEB30084D8
      AE0084D8AE0087DEB30086DBB1006BB68B003F784A002C5D2E00688E6C00DDE8
      E000000000000000000000000000000000000000000000000000000000000000
      0000000000000D327C00082D79000D327C000D327C00000B4E003765A9003B67
      AB00365EA1003051950025408300172C6F000A185B00000C4E00021255000517
      5D00061D640008246C000A2B74000D307B00F7FBFEFFC1DFF4FFBDDDF5FFB9DC
      F6FFAED7F7FFA4D0F2FF97C5E9FFE6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FDFE
      FF001F1FD9008590F200B5BDF6000102E3000000E3000000E3000000E3000000
      E3000000E3000000E3000000E3000000E3000202E300B4BDF600808BF0001F1F
      E10000000000000000000000000000000000000000000000000000000000D1E0
      D4002F6437002C61330070B78E008EDFB7007ED1A40069BD85005AB4740059B2
      710059B271005AB4740069BD85007ED1A4008EDFB70070B78E002C6133002F63
      3700D0E0D4000000000000000000000000000000000000000000000000000000
      0000000000000A317E000C0D0F000C0D0F000C0D0F00001256003D6FB3004A7D
      BE005184C8005A8DD2006194D9006497DC006295DA005F91D6004E7BBF003A62
      A70025478C00163278000A21660000125700FEFFFFFFC5E1F3FFC1DFF4FFBDDD
      F5FFB4DAF7FFB1D9F9FFB1D9FAFF55BCFEFFE4F4FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FBFCFE001F1F
      D600838EF000B7C0F5000000E1000001E1000004E2000004E2000004E2000004
      E2000004E2000004E2000004E2000004E2000001E1000101E100B6BEF5007D8A
      F0001F1FE000FDFEFF0000000000000000000000000000000000DDE9E1002F68
      3A003873440088D3AC008AD7AE0061B87C0050AE660054B16C0056B26E0056B2
      6E0056B26E0056B26E0054B16C0050AE660061B87C008AD7AE0088D2AC003874
      44002F683A00DDE9E10000000000000000000000000000000000000000000000
      0000000000000C3582000E1012000E0F12000E0F1200001A62003869AD003163
      A7003568AB003D70B400497CC0005588CD005D90D5006396DB006799DC005B8E
      D3005083C8004679BD003D70B400001A6300FFFFFFFFCBE2F2FFC5E0F3FFC1DF
      F4FFB9DCF6FFA5D7F8FF6CC7FBFF009FFFFF50BBFFFFE4F4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FBFCFE001F1FD400838E
      F000B8C1F4000000DE000001DE000004DE000004DE000004DE000004DE000004
      DE000004DE000004DE000004DE000004DE000004DE000001DE000001DE00B6C0
      F4007D89EE001F1FDE00FBFCFF00000000000000000000000000689672002B67
      38008DD4AF008AD6AD0055B16C0056B06E0059B2720059B2720059B2720059B2
      720059B2720059B2720059B2720059B2720056B06E0055B16C008AD6AD008DD4
      AF002B673700699673000000000000000000000000000000000000000000F9FC
      FA00000000000F3A870011121400111214001112140000206A003A6BB0002A59
      9D00295CA000285B9F0026599D0025589C00497BCD006295DA003366AA00396C
      B0003B6EB2003B6EB2003C6FB30000206B00FFFFFFFFE1EEF5FFCEE4F0FFCAE2
      F1FFA5D8F8FF62CDFDFF24C5FFFF01A9FFFF01A4FFFF019FFFFFE4F4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000001E1ED200838EEE00B7C0
      F3000001DB000001DB000004DC000004DC000004DC000004DC000004DC000004
      DC000004DC000004DC000004DC000004DC000004DC000004DC000001DB000001
      DB00B6BFF3007C88EC001F1FDD000000000000000000B1CBB8002A6A39007BBD
      970096DCB6005AB170005BB471005DB574005DB574005DB5740055B16D004FAE
      67005DB573005DB574005DB574005DB574005DB574005BB471005AB1700096DC
      B6007BBD97002A693800B1CCB90000000000000000000000000000000000002F
      E60000000000113F8C0013141700131417001313170000226D003F71B6002553
      98002B5DA1002B5EA2002B5EA2002B5EA2004577C8005E91D60025559900295C
      A000285B9F002C5FA3003869AE0000226E00FFFFFFFFEFF6F9FFD4E5EFFFD1E4
      F0FF50C9FFFF68CBFFFF48C8FFFF09B8FFFF01A9FFFF01A4FFFF50BBFFFFE4F4
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000525CE500BDC4F4000101
      D8000001D9000005DA000004DA000004DA000004DA000004DA000004DA000004
      DA000004DA000004DA000004DA000004DA000004DA000004DA000005DA000001
      D9000101D800BDC5F3004D59E40000000000000000002F75440042865900A6E5
      C7006CBD84005BB371005EB675005EB675005EB575004EAE670080C69300CAE9
      D20041A95D005DB574005EB675005EB675005EB675005EB675005BB371006ABD
      8400A6E5C700428659002E74430000000000000000000000000000000000002F
      E6000018DA001442900015161A0015171A0014171A0000246F004173B800224E
      94002A5CA0002B5EA2002B5EA2002B5EA2004172C000598CD100235094002B5E
      A2002B5EA2002F62A6003B6CB10000247000FFFFFFFFFCFDFEFFDAECF5FFBEDE
      F4FF33C6FFFF50C9FFFF69CBFFFF24C5FFFF09B8FFFF01A9FFFF019FFFFF50BB
      FFFFE4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000006F7BE6007986E9000000
      D4000005D5000105CD000105CC000105CD000005D5000005D5000105CE000005
      D5000005D5000105CD000105CC000105CD000005D5000005D5000105CE000005
      D5000000D400808CE9006E79E60000000000D2E4D80028713E0084C4A00097D8
      B30058B16E0061B6790061B6790061B6780051AF69008BCB9B00000000000000
      0000D1EBD9004DAD66005FB5770061B6790061B6790061B6790061B6790058B1
      6E0097D8B30084C4A00028713E00D3E4D900000000000000000000000000002F
      E6001569FF000109CB0017191D0017191E0017191E00002672004375BA001B44
      8900255498002B5EA2002B5EA2002B5EA2003C6CBA005386CC001F4A8E002B5E
      A2002B5EA2002F62A6004072B70000267300FFFFFFFFFFFFFFFFFFFFFFFFF3FA
      FFFF8CCEFFFF63CAFFFF34C6FFFF69CBFFFF48C8FFFF24C5FFFF01A9FFFF01A4
      FFFF019FFFFFE4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000006C78E500808CE8000000
      D200BCBCBC00BCBCBC00BCBCBC000506A0000105CB00BCBCBC000406A8000105
      CB00BCBCBC00BCBCBC00BCBCBC000506A0000105CB00BCBCBC000406A6000205
      C2000101C900838EE7006A76E50000000000A6C9B10024743E00B0E6CB007DC6
      960062B6770066B97C0065B87B004EAE6800A0D6AF0000000000000000000000
      000000000000DFF1E30049AC640063B7790066B97C0066B97C0066B97C0062B6
      77007DC69600B0E6CB0024743E00A7CAB3000033EE000033EE000033EE00002F
      E6001669FF00095EFE000400B400191B2100191B2000002875004577BC001438
      7F001A42860025559900295CA0002A5DA1003766B4004E81C700183F83002656
      9A002B5EA2003063A7004274B90000287600FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB4DDFFFF8CCEFFFF63CAFFFF50C9FFFF69CBFFFF48C8FFFF09B8FFFF01A9
      FFFF01A4FFFF50BBFFFFE4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000006B77E3007F8BE6000000
      CE000004CE000205C000CECECE0005079D000105C800CECECE000506A0000105
      C800CECECE0005069E00CECECE0005069E000105C800CECECE00CECECE00CECE
      CE0005059F007680DD006A76E3000000000076AD8A00408D5C00B5E7D1006DBC
      830067B97B0068B97D005FB57600B5DFC0000000000000000000000000000000
      00000000000000000000E9F5ED0058B3700065B87A0069BA7D0069BA7D0067B9
      7B006DBC8300B5E7D100408D5C0076AC8A000033EE005DA2FF003F87FF002876
      FF001569FF00095EFE000055FE0008009D001B1E2300002B78004779BE000C2B
      73000E2C7000173D8100214E920026589C003463AF004A7DC200113276001C46
      8A0026569A002F61A5004476BB00002B7900FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3FAFFFFB4DDFFFF8CCEFFFF34C6FFFF50C9FFFF69CBFFFF24C5FFFF09B8
      FFFF01A9FFFF019FFFFF50BBFFFFE4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000727FE3008591E6000709
      CE00E1E1E100E1E1E100E1E1E10005069F000103C700E1E1E10005059F000103
      C600E1E1E10005069F00E1E1E10005069F000105C600E1E1E10005069D00E1E1
      E10005059D00737ED9006A76E2000000000067A37E004D996E00B3E5CD006DBB
      82006ABA7F0068B97D007CC4900000000000000000000000000000000000FCFD
      FC00000000000000000000000000F2F9F40056B06E0067B87D006CBB81006ABA
      7F006DBB8200B3E5CD004D996E0067A37E000033EE00599FFF004089FF002874
      FF001568FF00095EFE000055FE000052FD0007008100002D7B00142669001425
      68003A69B1002D5AA300245095001E498D003362AD00477ABF000A266A000F2E
      720018408400265599004678BD00002D7C00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF3FAFFFF8CCEFFFF63CAFFFF34C6FFFF69CBFFFF48C8
      FFFF24C5FFFF01A9FFFF01A4FFFF019FFFFFE4F4FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000808DE50095A0E800232B
      D300F3F3F30011149E002026BA002229C400252FD100F3F3F3000B0D9D000E13
      BF00F3F3F30005069D00F3F3F30005069D000105C400F3F3F30005079D00F3F3
      F30005059C00737ED8006A77E0000000000066A77F00509C6F00B9E6D00071BD
      86006DBB82006FBB840065B77C0076C28900000000000000000099D2A80051AF
      6A0000000000000000000000000000000000FAFDFA0068B87D0069B87F006DBB
      820071BD8600B9E6D000509C6F0066A77F000033EE005DA2FF003F87FF002876
      FF001568FF00095DFE000055FE000052FD0007008100002F7D003166B4005287
      D1003765AF003A69B3003D6FB6004274BB00477ABF00477ABF004373B9003564
      AB002C5AA20029569E00477ABF00002F7E00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB4DDFFFF8CCEFFFF63CAFFFF50C9FFFF69CB
      FFFF48C8FFFF09B8FFFF01A9FFFF01A4FFFF50BBFFFFE4F4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000828FE50096A1E9002B33
      D3000000000000000000000000001B1FA900000000000000000000000000191D
      A800000000000000000000000000090B9F000409C40000000000000000000000
      000005059C007580D9006976DE000000000075B18E0040956400C3EBDA0076BF
      8B0070BD850072BE870072BE870068B87E0085C996009FD3AD0061B679006BBA
      810071C08700000000000000000000000000000000000000000076C18A006DBB
      820076BF8B00C3EBDA004095640074B18E000033EE005DA2FF004089FF002876
      FF001669FF00095DFE000055FE0008009D0024262D00003080006497DE0072A4
      E90027579B002E5CA2003161A8003666B0003361AE00497CC1003564B0003867
      B2003C6DB6004274BB00497CC10000308100FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FAFFFFB4DDFFFF8CCEFFFF34C6FFFF50C9
      FFFF69CBFFFF24C5FFFF09B8FFFF01A9FFFF019FFFFF50BBFFFFE4F4FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000008492E60096A2EA00333E
      D4003D4AD7003944D0003842CE003943D0003E48D6003842D0003641CE003640
      D0003843D500343DCF00313ACD002F38CE002C37D4001F25D0000C14C4000206
      C0000101BD007D89E1006975DE0000000000A6D0B80020854A00C4EADB008ECE
      A20070BD840074C0890074C0890074C0890070BD85006DBC820074C0890074C0
      89006CBB810076C28900000000000000000000000000000000008BCB9C006CBB
      80008ECEA200C4EADB001F844900A8D2BA000033EE000033EE000033EE00002C
      E6001569FF00095DFE000400B40025292F0025282F00003282004D80C5002553
      970025579B0025589C0026599D0026599D003A6AB8005184CA001F4C90002857
      9B003464AC004374BE004B7EC30000328300FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FAFFFF8CCEFFFF63CA
      FFFF34C6FFFF69CBFFFF48C8FFFF24C5FFFF01A9FFFF01A4FFFF019FFFFFE4F5
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000008996E700A8B3EE00353F
      D5004753D9004854D9004954D9004955DA004954DA004853DA004752DA004651
      DA00434FDA00414CD9003D49D8003A46D6003742D5003641D500323CD4002730
      D1000204C500919DE600636FDB0000000000D3E9DC00218B4F0099CFB400B2E0
      C7006EBB7F0079C18A0079C18A0079C18A0079C18A0079C18A0079C18A0079C1
      8A0079C18A006EBB81008FCD9F0000000000DDEFE1006CBD800072BD85006EBB
      7F00B2E0C70099CFB400208A4E00D4E9DE00000000000000000000000000002C
      E6001668FF000109CB00282B3300272A3300272A3300003485004F82C800204B
      91002355990024579B0025589C0025589C004274C4005B8ED4001D4A8E002558
      9C0026599D002E61A5004C7FC40000348600FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4DDFFFF8CCE
      FFFF63CAFFFF50C9FFFF69CBFFFF48C8FFFF09B8FFFF01A9FFFF01A4FFFF51BC
      FDFFEBF4FAFFFFFFFFFFFFFFFFFFFFFFFFFF000000004E5CDA00D2D9F7008894
      E700434FD600515EDA00515FDA00525FDA00515EDA00505EDA004F5DDA004E5B
      DA004C57DA004855DA004752D900434FD800404BD6003B47D6003843D300262F
      D0007683E100C7CFF1002832D20000000000000000002994590045A26F00CFED
      E50088CB9C0077BF89007CC28E007CC28E007CC28E007CC28E007CC28E007CC2
      8E007CC28E007CC28E0072BD850086CA98006AB97E007AC08C0077BF890088CB
      9C00CFEDE50045A26F002793580000000000000000000000000000000000002C
      E6000018DA002560B1002A2E36002A2D36002A2D3600013687005083C9001A42
      87001E4D910023569A0024579B0024579B004D7FD3006699DF00194486002457
      9B0025589C002D60A4004D80C50000368800FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FAFFFFB4DD
      FFFF8CCEFFFF34C6FFFF50C9FFFF69CBFFFF24C5FFFF09B9FFFF00AAFFFF5AB1
      E8FFC7CDCBFFF6F5F4FFFFFFFFFFFFFFFFFF00000000A2A3E4005866DB00DADF
      F8008D99E7004F5DD9005B68DB005C69DB005C69DB005B68DB005A67DB005765
      DA005563DA00525FDA004F5DD9004B57D8004853D600434FD600333ED2007986
      E200D0D7F400404CD600A3A5ED000000000000000000B1D9C300209154009ED2
      B800C6E8DC007AC28B007BC18D007DC290007DC290007DC290007DC290007DC2
      90007DC290007DC290007DC290007AC18D007DC290007BC18D007AC28B00C6E8
      DA009ED2B8001F915400B2DAC40000000000000000000000000000000000002C
      E600000000002560B1002C3038002C3038002C303800013889005184CA001336
      7A00153D80001E4E92002254980023569A00588DE20072A5EA00143A7C002050
      930024579B002C5FA3004F82C80000388A00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3FAFFFF8CCEFFFF63CAFFFF34C6FFFF5AC8FFFF28B7FFFF6CC4F8FFF9F8
      F4FFF1F1ECFFCECFCDFFE3E3F3FFFFFFFFFF0000000000000000A6A8E5006070
      DC00DFE4F80093A0E8005C69DA006573DE006473DC006473DC006371DC006070
      DB005E6CDA005C69DA005966DA005462D900505ED600404CD3007F8DE400D6DB
      F4004954D900A5A7ED000000000000000000000000000000000065B78C002095
      5800C7E7D900C4E6D8007DC38C007CC28D0080C4910080C4910080C4910080C4
      910080C4910080C4910080C4910080C491007CC28D007DC38C00C4E6D800C7E7
      D9002095580064B68C0000000000000000000000000000000000000000000000
      0000000000002560B1002E313A002E313A002E313A0001398B005285CB000A25
      680007205D000F337300174386001D4E92006096EF007BAEF4000E2D6E001740
      8300205194002C5EA2005083CA0000398C00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB4DDFFFF8CCEFFFF63CBFFFF2BB6FEFF75C1F2FFEBF2F3FFF9F9
      F5FFF1F2F3FF7788D2FF4F55BDFFE0E0F2FF000000000000000000000000A7A9
      E6006A79DF00E4E7F9009AA6E8006674DB006F7CDE006D7BDE006C7ADE006A78
      DE006776DB006473DA006070DA005D6BDA004E5CD5008895E500DADFF700525F
      DA00A7A8ED000000000000000000000000000000000000000000DFF0E700259D
      600036A46C00CCE8DF00CFEBE10093CEA30079C3880080C6900083C7920083C7
      930083C7930083C7920080C6900079C3880093CEA300CFEBE100CCE8DF0036A4
      6C00249D5F00DFF1E80000000000000000000000000000000000000000000000
      0000000000002560B10030333D0030333D0030333D00013A8D005A8ED3004D80
      C9004172BC003969B3003160A80028549B005A93F60082B5FA00051C58000924
      620011347500214F92005184CB00003A8E00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3FAFFFFB4DDFFFF78CAFFFF67BDEEFFD1D7D3FFECEBE5FFF1F2
      F3FF7B8DD8FF082BBEFF031AB2FF4F56BFFF0000000000000000000000000000
      0000A9ABE6007482DF00E6E9F900A3AEE900707DDC007481DE00727FDE00707D
      DC006C7ADB006977DA006573DA005C69D60093A0E600DCE1F7005E6BDB00A9AA
      EC0000000000000000000000000000000000000000000000000000000000D3EC
      DF0024A063001F9D5E00A9D9C400E4F3F300C9E6DB00A4D5B4008CCB9B0089C9
      9A0089C99A008CCB9B00A4D5B400C9E6DB00E4F3F300A9D9C4001F9D5E0024A0
      6200D3ECDF000000000000000000000000000000000000000000000000000000
      0000000000002560B10031353E0031353F0031353F00003C8F00568AD1006598
      DD006FA2E7007AADF20086B9FE008CBFFF0086B9FE007DB0F5006093DE004779
      C3003362AB002E5CA4005487CD00003C9000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF8FEFFF8F8F4FFF4F5F0FFDDDEDAFF082B
      BEFF022AC4FF042ECCFF0532D5FF2C50D7FF0000000000000000000000000000
      000000000000AAABE6007D8BE100E2E6F800D4D9F400D5DAF400D5DAF400D4D9
      F400D2D8F300D1D8F300CFD6F300CDD3F200D9DEF4006977DD00A9ABEB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFF1E80062BE93001B9F5F0048B17F00ACDCC800E7F2F400EBF5F600E3F0
      F000E3F0F000EBF5F600E7F2F400ACDCC80048B17F001B9F5F0063BE9300DFF1
      E900000000000000000000000000000000000000000000000000000000000000
      0000000000002560B100323740003237400032374000033D8C0005419400124D
      9E00235DAC003871BD005087D200699EE6007BAEF40082B5FA007EB1F60079AC
      F10071A4E900689BE0005C90D500003D9100FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF8FFEFF1F3FF798BD5FF022A
      C4FF042ECCFF0431D2FF2951DCFFBAC7F4FF0000000000000000000000000000
      00000000000000000000A8A9E5007C88E00096A2E70094A1E70094A1E70094A1
      E700939FE700909DE7008E9BE6008B99E5006D7BDF00A8A9EA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2DFCA0026A86D001BA2630018A2610041B27F0057BA
      8D0057BA8D0041B27F0018A161001BA2630025A76C00B2DFCA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002560B10034384200343841003438410034384200313747002938
      5100213A5E00193B6A00113C78000A3D8400033E8F00084599001754A5002863
      B200346DBA003F77C1004379C200003E9300FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFA4B0E4FF0A2DBFFF042E
      CCFF0431D2FF0533D5FFBFCBF5FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5EEE300AADDC60072C9A10062C3
      970062C3970072C9A100ABDDC600D6EFE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002560B1002560B1002560B1002560B1002560B1002560B1002560
      B1002560B1002560B1002560B1002560B1002560B100235EAF001E5AAB001854
      A700134FA2000C4A9D000745990002419600FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E6F9FF0A37
      D6FF2D54DDFFB9C6F4FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5E5E500A9A9A900888888006E6E6E0088888800A8A8
      A800E5E5E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9EBDE00248B3F001F883A0098C8A4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBF7F300E4D1B900D4B28900D1AB7C00CBA1
      6D00D1AA7C00D4B18900E4D0B800FBF7F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00EBEBEB00E8E8E800E8E8E800EBEBEB00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EBEBEB009B9B9B00767676006C6C6C006767670067676700676767006C6C
      6C00767676009D9D9D00E9E9E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00A5D2B400279E58003AB3760021974E0062AD770000000000E7F3EA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9DBC900BC8A4E00BF884600C38E4D00C3925200C4965400C495
      5600C4945300C4915000C18E4B00BE884400BC894C00E9DAC800000000000000
      00000000000000000000000000000000000000000000FDFDFD00EBEBEB00E9E9
      E900E8E8E800DADADA0095959500888888008888880095959500DADADA00EBEB
      EB00FDFDFD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAEA
      EA0075757500656565007C7C7C00909090009D9D9D008F8F8F00787878006666
      66005D5D5D005D5D5D0075757500EAEAEA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00A3D2B30033AB680053CD970045BF8500249A520035975300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD8C5300C08D4900C5935300C89B5C00CAA36500CEAA6E00CDAA6F00CEAA
      6D00CFAB7000C9A66A00CBA06300C5975800C3905000C08B4600BA874E000000
      000000000000000000000000000000000000E9E9E900DADADA00767676005D5D
      5D00535353007D7D7D0091919100ECECEC00BABABA009D9D9D00959595009595
      9500DCDCDC00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE008C8C
      8C007B7B7B00A6A6A600C3C3C300B7B7B700A4A4A40091919100919191008B8B
      8B0082828200777777006C6C6C009A9A9A00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFF00F7FC
      FA00D9F1E60035AE6D0052CD970051CD950046C2880029A15C00349854000000
      000000000000000000000000000000000000000000000000000000000000B67E
      3A00C3915000C8995A00CBA46800CBAC7200E5D7BE0000000000B1783500B178
      3500B1783500FEFCFB00E3D3B800CBAB7200CAA26400C5945400C38F4D00B178
      3500000000000000000000000000000000006464640077777700DADADA00D4D4
      D40076767600515151009D9D9D00AAAAAA008C8C8C00868686009D9D9D009B9B
      9B00A1A1A100DADADA00EBEBEB00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA009595
      9500C1C1C100D2D2D200BABABA00A1A1A1009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009090900087878700DADADA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6F3EA0059AF77002D9D5700289E57002AA2
      5D0033AB690039B474004AC68F0048C58E0048C58E0045C1880028A15F005DAD
      7800000000000000000000000000000000000000000000000000B47C3700C493
      5200C99E6000CBA86E00E0D0B300000000000000000000000000B1783500B178
      3500B1783500000000000000000000000000E0D0B300CBA66A00C8995900C38E
      4C00B1763300000000000000000000000000E9E9E900EBEBEB00FDFDFD00E8E8
      E8008888880086868600AAAAAA00D2D2D200C8C8C800BBBBBB00767676009494
      94009D9D9D009595950095959500DCDCDC00FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00C7C7
      C700D7D7D700C1C1C100A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBF5EE005EB17B0028A05A003AB4750047C3880048C58C0045C3
      8A0044C2890044C28B0040BE87003FBD86003FBC85003DBB840041BE870028A3
      62004EA66D0000000000000000000000000000000000C69D6E00C4935100C99E
      5E00C9A86E00E0D0B30000000000000000000000000000000000BA7E3D00BA7F
      3E00BB884E0000000000000000000000000000000000E0D0B300CAA66B00C598
      5800C28F4B00C49A69000000000000000000000000000000000000000000E8E8
      E80088888800F5F5F500ECECEC00ABABAB00A3A3A300CCCCCC00C0C0C0008E8E
      8E0082828200949494008C8C8C00A1A1A100DCDCDC00FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000ACACAC00DBDB
      DB00CDCDCD00B3B3B300B1B1B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1
      B100B1B1B100B1B1B100B1B1B100B2B2B200ACACAC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1F0E70035A05D0038B4740047C58C0042C189003EBC85003DBB83003CBA
      83003BB9810039B8800038B77F0038B67E0037B57E0036B47C0034B27A0037B5
      7D0019904900000000000000000000000000F7F1EA00BF8B4600C89A5B00CAA8
      6E00CBA86D000000000000000000000000000000000000000000BD844000BC84
      4000C08E52000000000000000000000000000000000000000000CBA96F00CBA3
      6800C4955300BE864200F7F1E90000000000000000000000000000000000EBEB
      EB0095959500FEFEFE00F7F7F700B4B4B400C5C5C500DADADA00CFCFCF00C4C4
      C400898989008A8A8A008A8A8A0082828200A1A1A100DCDCDC00FDFDFD000000
      0000000000000000000000000000000000000000000000000000A5A5A500DDDD
      DD00C5C5C500BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00A5A5A50000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F9
      F50037A05F003BB77A0040BF870038B77F0037B67E0036B57D0035B57C0034B3
      7B0033B37A0032B1790031B0780030AF77002EAE75002EAD75002DAC740026A5
      6B0014894300000000000000000000000000CCA67800C5955500CAA46700C9A9
      6F00CAA86D00CAA86E0000000000000000000000000000000000C0894500C089
      4500C292570000000000000000000000000000000000CAA96E00CAA96E00CBA8
      6F00C99E6000C28E4D00CAA2740000000000000000000000000000000000FDFD
      FD00DCDCDC00A6A6A600AEAEAE00FAFAFA00F2F2F200E8E8E800898989007D7D
      7D00C8C8C800E7E7E700F9F9F9009494940086868600A1A1A100DCDCDC00FDFD
      FD00000000000000000000000000000000000000000000000000ACACAC00D7D7
      D700C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500ACACAC0000000000000000009C9C
      9C004C4C4C004C4C4C009C9C9C00000000000000000000000000000000007BBE
      92002DA866003ABA810030B0780031B178002FAF75002BAA6F0027A46700219D
      5D00209D5E00209C5B0029A9700029A9700027A76F0028A86F001C995E001289
      430097C9A900000000000000000000000000F2E8DB00C99B5D00CBA86E00C9A7
      6C00CBA96E00DECEB00000000000000000000000000000000000C28D4E00C18C
      4B00C5975F0000000000000000000000000000000000DECEB000CBA96E00C9A8
      6D00CAA56A00C4935300F2E7DA00000000000000000000000000000000000000
      0000FDFDFD00EFEFEF00EBEBEB009999990088888800888888009C9C9C00B3B3
      B300D9D9D900EFEFEF00FCFCFC00000000009D9D9D0086868600A1A1A100DCDC
      DC00FDFDFD000000000000000000000000000000000000000000B3B3B300D4D4
      D400CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00B3B3B30000000000000000004F4F
      4F0000000000000000004F4F4F00000000000000000000000000000000002798
      520033B275002AAB72002AAB720023A164001B965100198E470027934F0050A7
      6F003C9E6100148E4A0023A46B0022A36A0021A26A00139254001A8B45008DC6
      A10083BD9700E1EFE500000000000000000000000000F3ECE100CAA96F00C8A8
      6D00DAC7A3000000000000000000000000000000000000000000C4905000C48F
      4F00C6975F000000000000000000000000000000000000000000DAC7A300C8A8
      6E00CAA86F00F3EBDF0000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00EBEBEB00E8E8E800E8E8E800DCDCDC00A1A1
      A100DCDCDC00F4F4F40000000000FCFCFC00EDEDED00949494007C7C7C00A1A1
      A100DCDCDC00FDFDFD0000000000000000000000000000000000B9B9B900D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800B8B8B80053535300B8B8B800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800B9B9B90000000000000000005353
      5300000000000000000056565600000000000000000000000000000000001891
      49002BAC720023A56B001A9656002793500090C6A200F6FBF80000000000FEFE
      FE009DCDAE00108C48001EA067001B9D64000D8B4B00298C4D000000000070B4
      8900097D37008AC29D000000000000000000000000000000000000000000FAF7
      F200000000000000000000000000000000000000000000000000C4945400C493
      5300C69D6500000000000000000000000000000000000000000000000000FAF7
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00DCDC
      DC00A1A1A100E4E4E40000000000F7F7F700E5E5E500CECECE00848484007F7F
      7F00A1A1A100DCDCDC00FDFDFD00000000000000000000000000B2B2B200DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF005B5B5B00E9E9E9005B5B5B00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00B2B2B20000000000000000005656
      560000000000000000005959590000000000000000000000000000000000138D
      46001EA066001593520058AB750000000000D3E7DA0042976000097832005EA7
      77009BCBAB000C884400149558000C85430052A36E000000000099CBA900198A
      49001088470068B2830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CA995800C997
      5800C9A069000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD00DCDCDC00A1A1A100E8E8E800F1F1F100DEDEDE00C1C1C1009E9E9E007777
      77009B9B9B00A1A1A100DCDCDC00FDFDFD000000000000000000B9B9B900E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E60064646400F9F9F90064646400E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600B9B9B90000000000000000005B5B
      5B0000000000000000007171710000000000000000000000000000000000138A
      43001391520042A06300FEFEFE00B5D7C0001E8545000D8549000E8A4C003697
      5C00B5D8C0001C8643001883410085BE980000000000B6D9C20023904F001792
      58001891550064B1810000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E7DA00F2E7DA00CA9D5F00CA9B
      5D00CBA57000F2E7DA00F2E7DA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00DCDCDC00A1A1A100ECECEC00D5D5D5009B9B9B008A8A8A007979
      79009D9D9D009898980095959500EBEBEB000000000000000000BBBBBB00E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E9006E6E6E00000000006E6E6E00E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900BBBBBB0000000000000000005F5F
      5F00000000000000000090909000000000000000000000000000000000003498
      580013864200F3F9F50092C5A3000B7C3900118F53001C98610016915500389A
      5E00DFEEE4000000000000000000D0E7D80053A77000168C47001C975C0025A1
      6A00229C5E0067B4830000000000000000000000000000000000000000000000
      0000000000000000000000000000F2E7DA00CCA46A00CAA26500C9A26300C9A1
      6300CCA66900CAA36600C7A36800F2E7DA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F900CECECE00A1A1A10090909000B8B8B800E2E2E200C5C5
      C5007F7F7F009D9D9D0095959500D8D8D8000000000000000000BBBBBB005656
      56005656560056565600565656005656560078787800F6F6F600787878005656
      560056565600565656005656560056565600BBBBBB0000000000000000006464
      64000000000000000000B4B4B40000000000000000000000000000000000B9DA
      C50076B98D0068B181000C86420018965C00209E6700229F68001A965A001F8F
      4C004EA56D00419F63001C8D4600158D46001D97570025A2690027A56D002EAB
      730026A15E007BBE930000000000000000000000000000000000000000000000
      00000000000000000000F2E7DA00C4A06800CCA46A00CBA56A00C9A46800CAA3
      6A00CAA46900CBA56A00CAA26800C6A26700F2E7DA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB0095959500C8C8C800BEBEBE00B2B2B200CFCFCF00DEDE
      DE00B3B3B300828282009D9D9D00828282000000000000000000BBBBBB00D4D4
      D400D4D4D400D4D3D400D3D4D300D4D4D30081818100E2E2E20081818100D3D3
      D300D4D4D300D3D4D400D4D4D400D4D4D400BBBBBB0000000000000000006868
      68000000000000000000D4D4D400000000000000000000000000000000000000
      000046A06700108B4A0022A0670028A66E0027A56E0028A76F0025A266001F99
      5900209A5B00229D5F0028A46A002CAA70002FAD75002FAD750033B27A0037B3
      78003AA46400C5E2CE0000000000000000000000000000000000000000000000
      00000000000000000000D1AD7400CFAC73000000000000000000D0AF7900D2B2
      7A00D2B27D000000000000000000D0AC7300CEAA710000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBEBEB0095959500F5F5F500F5F5F500909090008C8C8C00AFAF
      AF00DCDCDC009A9A9A008C8C8C00707070000000000000000000ADADAD000000
      00000000000000000000000000000000000089898900CDCDCD00898989000000
      000000000000000000000000000000000000ADADAD0000000000000000006D6D
      6D00000000000000000000000000000000000000000000000000000000000000
      0000189352002CAC74002EAD75002EAD75002FAE760030AF770032B1790033B2
      7A0033B37A0035B47C0036B57D0036B57D0037B67E003BBA820040BF86002DA7
      630084C399000000000000000000000000000000000000000000000000000000
      000000000000FDFCFA00D1B78D00000000000000000000000000B1783500B178
      3500B1783500000000000000000000000000C9AA790000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00DADADA0095959500F5F5F50090909000959595009E9E
      9E00D8D8D800C3C3C30084848400828282000000000000000000A0A0A000F6F6
      F600F6F6F500F6F6F600F5F6F600F5F6F600D1D1D0008E8E8E00D0D0D000F6F5
      F600F5F6F600F5F6F600F5F5F600F6F5F600A0A0A00000000000000000007171
      7100000000000000000000000000000000000000000000000000000000000000
      000025A1610039B9800035B57D0037B77F0039B9800039B980003ABA81003BBB
      83003CBC84003DBD85003EBE850041C1880047C78E0044C186002CA5600078BE
      9000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1783500B87D3A00B87D
      3A00B87D3A00B178350000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBEBEB0095959500B8B8B800A4A4A4009E9E9E00A7A7
      A700C8C8C800BEBEBE0092929200D8D8D8000000000000000000FAFAFA00C2C2
      C200E2E2E200E2E2E200E2E2E200E2E2E200C0C0C00086868600C0C0C000E2E2
      E200E2E2E200E2E2E200E2E2E200C2C2C200FAFAFA0000000000000000007676
      7600000000000000000000000000000000000000000000000000000000000000
      00002899560037B77A0043C48B003FC0880041C2890041C2890045C58D0046C7
      8E0046C78D0049CA90004BCA900043C2840032AE6B0033A15D00A2D1B2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1783500BB823F00BB823F000000
      0000B87D3A00BB813E00B1783500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD00DCDCDC00A1A1A100CFCFCF00C4C4C400BCBC
      BC00A3A3A3009191910088888800EBEBEB00000000000000000000000000DCDC
      DC00AFAFAF00CDCCCC00CCCDCD00CDCCCD00AEAEAE008E8E8E00AEAEAE00CCCC
      CD00CDCCCC00CDCCCD00AFAFAF00DCDCDC000000000000000000000000007979
      7900000000000000000000000000000000000000000000000000000000000000
      0000B9DCC400319E5B0039B779004CCE95004BCD94004CCE950046C68A0036B2
      6F0030AB660029A35B00279E560038A25F0099CDAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C38D4900BF8C4E00000000000000
      000000000000C18B4900BF8D4E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00DCDCDC0095959500888888008888
      880095959500DADADA00EBEBEB00FDFDFD000000000000000000000000000000
      000000000000ADADAD009F9F9F00A5A5A500A5A5A5009E9E9E00A5A5A500A5A5
      A5009F9F9F00ADADAD0000000000000000000000000000000000000000007D7D
      7D00000000000000000000000000000000000000000000000000000000000000
      000000000000A3D0B0001B9145003BB9790051D4990056D9A0004ACB8E0064C0
      8C00F1FBF700FDFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C7965300C69A6100000000000000
      000000000000C5945100C4965900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00EBEBEB00E8E8E800E8E8
      E800EBEBEB00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000808080009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A4D0B000198F410036B3700055D89E004BCC8F004EB1
      7400E0EFE4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1925300CA9A5900CA9A59000000
      0000C89F6500CA9A5B00CA9A5B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00828282008282
      82008282820082828200828282008282820082828200828282009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F8F400FEFEFE00C2DFCA002F98510032AE6B0037B573004DAE
      7300E1F0E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCA56800CAA36700CAA2
      6700CBA36800C6A1640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBECDF0055A56A000A7D280074B6
      8500FDFEFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0B17C00D0B0
      7A00CEAC75000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00FFFFFFFF000000FC003FFC
      003FFF807F000000F8001FF0000FF80000000000E0000FE00007F80000000000
      C00003C00003F80000000000800001C00003E80000000000800001800001E800
      00000000800001800001E00000000000800001003000E0000000000080000100
      780000000000000080000100FC0000000000000080000101EE00000000000000
      80000100CF000000000000008EEE710007C00000000000008000010003C00000
      00000000800001000100E00000000000800001800001E0000000000080000180
      0001E80000000000C00003C00003F80000000000E00007C00003F80000000000
      F0000FE00007F80000000000F8001FF0000FF80000000000FC003FFC003FF800
      00000000FFFFFFFF00FFF80000000000FFFFFFFC07FFFFF0FFFE00FFF81FFFF0
      01FFFFE05FF8003F8007FFE000FFFFE03FF0001F0003FFC0007FFFC01FE0400F
      0000FFC0007FFE000FC1C70700007FC0007FF8000783C783E0003FC0007FF000
      0707C7C1E0001FC0007FE0000703C781E0000FC00061E0000703C781F00107C0
      006DE0000387C7C3FC0203C0006DE02023EFC7EFFFC201C0006DE10043FFC7FF
      FFE000C0006DE00083FF01FFFFF000C0406DE00603FE00FFFFF800C0006DE000
      03FC007FFFF800C0006DF00003FCC67FFFF800DF1F6FF00007F9C77FFFF800C0
      006FF0000FFF83FFFFFC00C0006FF0001FFF11FFFFFC00E000EFF0007FFF39FF
      FFFE00F803EFF803FFFF39FFFFFF03FFBFCFFC07FFFF11FFFFFFFFFF801FF807
      FFFF83FFFFFFFFFFFFFFFF07FFFFC7FF00000000000000000000000000000000
      000000000000}
  end
  object ImageList2: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 24
    Width = 24
    Left = 736
    Top = 152
    Bitmap = {
      494C01010800F000B00018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000928252077736859C7A89A
      83F1B8A890FC958975E3534C41AA100E0C4B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005B5347B2BCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FF08080738000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000102001B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1915621916135D000000000000
      0000000000016B6253C100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000056359
      4CB90000000000000000000000006E6455C30000000000000000000000000000
      000000000000000000002E2D2A7D575146AD575146AD575146AD575146AD5751
      46AD575146AD575146AD575146AD575146AD534D44A900000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010119B2A28BF8BCAC93FF5C5448B303030325000000000000
      00000000000000000000000000001917145FAFA089F6BCAC93FF4842399F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003058
      13A870CC2DFF0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000FBCAC93FF0202011D0000
      000000000000A39580EE332E2885000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004B8A890FC2B28
      227B00000000000000003F3931949D8F7AE90000000000000000000000000000
      0000000000003936338A00000011000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B8F7CE7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9A991FDBCAC93FF070605320000000000000000000000000000
      000000000000000000000000000000000000000000007F7563D2BCAC93FF4842
      399F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F1B065E70CC
      2DFF70CC2DFF70CC2DFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028251F77BCAC93FF0000
      0012000000000000000FBCAC93FF282520770000000000000000000000000000
      00000000000000000000000000000000000000000000A59781EFA99B85F20000
      0000000000005E5649B5BCAC93FF000000030000000000000000000000000000
      000000000000857B6BD600000000181717590000000000000000000000000000
      0000000000000000000000000000000000008F877CDC2B2B2979000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000988C78E6BCAC93FF03030224000000000000000000000000000000000000
      000000000000000000000000000000000000524B40A9BCAC93FF7F7563D2BCAC
      93FF080807380000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000103002070CC2DFF70CC
      2DFF70CC2DFF70CC2DFF60AF27EC000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0E0C4ABCAC
      93FF837866D5100E0C4B00000012AC9E87F48A7E6BDB03030223000000000000
      0000000000000000000000000000221F1B6EB0A28AF761574BB7000000003E38
      3093AD9E87F5A2957EED00000010000000000000000000000000000000000000
      000000000000857B6BD600000000000000000000000000000000000000000000
      00000000000000000000000000000000000083796CD327262472000000000000
      0000000000000000000000000000000000000000000000000000000000000E0D
      0B47BCAC93FF2F2B258000000000000000000000000000000000000000000000
      0000000000000000000000000000514A3FA8BCAC93FF554D42AC00000000AEA0
      89F6BCAC93FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000370CC2DFF70CC2DFF70CC
      2DFF70CC2DFF70CC2DFF70CC2DFF3B6B17B90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029252078322E2785000000000000000037332B8BB5A68DFABCAC93FF998C
      78E67F7463D2AFA089F6BCAC93FF8F8471DF0908073A00000000000000005E56
      49B5090807380000000000000000000000000000000000000000000000000000
      000000000000857B6BD600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000796F
      5ECDBCAC93FF0000000200000000000000000000000000000000000000000000
      00000000000000000000514A3FA8BCAC93FF534C41AA00000000000000001917
      135EBCAC93FF100E0C4B00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000070CC
      2DFF70CC2DFF70CC2DFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      03290D0C0A440000001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000857B6BD600000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9AA93FDB6A893FA0000
      000000000000000000000000000000000000000000000000000000000000BCAC
      93FF716858C60000000000000000000000000000000000000000000000000000
      000000000000524B40A9BCAC93FF524B40A90000000000000000000000000000
      0000BCAC93FF534C41AA00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000070CC
      2DFF70CC2DFF70CC2DFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000514A3FA8A99B84F2B0A189F762594CB800000000000000000000
      0000000000000000000000000000080706358A7F6BDBB7A88FFC8F8370DF1412
      1055000000000000000000000000000000000000000000000000000000000000
      000000000000857B6BD600000000000000000000000000000000000000000000
      00000000000000000000000000000000000034312D850D0D0C4400000000A79A
      86EF00000000000000000000000000000000000000000000000000000000BCAC
      93FF0B0A083F0000000000000000000000000000000000000000000000000000
      0000524B40A9BCAC93FF524B40A9000000000000000000000000000000000000
      0000BCAC93FF968A76E400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000070CC
      2DFF70CC2DFF70CC2DFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F927DEB6F6556C40202011D0202011C4F473DA600000000423D3498BCAC
      93FFBCAC93FFAA9B85F2100F0D4D26231E74211E196B0000000A12100E50AC9D
      87F437332B8C0000000000000000000000000000000000000000000000000000
      000000000000857B6BD60000000000000000000000000000000A928674E09286
      74E0928674E0928674E0928674E0928674E0928674E0B9AA92FD000000080000
      0005A79A86EF000000000000000000000000000000000000000000000000BCAC
      93FF00000006000000000000000000000000000000000000000000000000514A
      3FA8BCAC93FF554D42AC00000000000000000000000000000000000000000000
      0000BCAC93FFB8A88FFC00000000000000000000000000000000000000000000
      00000000000000000003000000000000000000000000000000000000000070CC
      2DFF70CC2DFF70CC2DFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000302C
      2682877C69D800000000000000000000000000000000BCAC93FF8F826FDE0000
      00010000000007060532BCAC93FF4D473CA40000000000000000000000000000
      0003BCAC93FF0000000000000000000000000000000000000000000000000000
      000000000000857B6BD60000000000000000000000000202021D030303240000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B1A591F60000000000000000000000000000000000000000BCAC
      93FF0202011E0000000000000000000000000000000000000000524B40A9BCAC
      93FF524B40A90000000000000000000000000000000000000000000000000000
      0000BCAC93FFA89A83F100000000000000000000000000000000000000000000
      00009F927CEBBCAC93FF25221D72000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCAC93FFBCAC
      93FF03030224000000000000000000000000000000000000000000000000BCAC
      93FF0E0D0B47000000000000000000000000423C34988F826FDE000000000000
      0000000000000000000000000011BCAC93FF0303022200000000000000000000
      00009D8F7AE90303022300000000000000000000000000000000000000000000
      000000000000857B6BD60000000000000000000000000202021ABCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FF000000090000
      0000B9AB92FD000000000000000000000000000000000000000000000000BCAC
      93FF322E288500000000000000000000000000000000524B40A9BCAC93FF524B
      40A9000000000000000000000000000000000000000000000000000000000000
      0000BCAC93FF736859C70000000000000000000000000000000000000000A396
      80EEBCAC93FFBCAC93FFBCAC93FF353029880000000000000000000000000000
      00000000000000000000000000000000000000000003BCAC93FFBCAC93FFBCAC
      93FFBCAC93FF0505042C0000000000000000000000000000000000000000B6A6
      8FFB12110E51000000000000000000000000BCAC93FF00000001000000000000
      0000000000000000000000000000827765D42E2A247F00000000000000000000
      0000AA9B85F20101011700000000000000000000000000000000000000000000
      000000000000857B6BD600000000000000000000000000000000000000000000
      00000000000000000000000000000000000003030322736A5DC500000000BBAB
      93FE00000000000000000000000000000000000000000000000000000000A89A
      83F1BBAB92FE000000000000000000000000524B40A9BCAC93FF524B40A90000
      0000000000000000000000000000000000000000000000000000000000000303
      0325BCAC93FF2825207700000000000000000000000000000000988A76E5BCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FF1412105500000000000000000000
      000000000000000000000000000000000000BCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FF0000000000000000000000000000000000000000110F
      0D4DB0A289F7000000000000000000000000BCAC93FF00000000000000000000
      000000000000000000000000000039342C8D4A443AA100000000000000000303
      0222BCAC93FF0000000000000000000000000000000000000000000000000000
      000000000000857B6BD600000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040427696257BDBCAC94FF0000
      000000000000000000000000000000000000000000000000000000000000302C
      2682BCAC93FF0807063600000000524B40A9BCAC93FF524B40A9000000000000
      0000000000000000000000000000000000000000000000000000000000005C54
      48B3BCAC93FF000000090000000000000000000000000000000012100E50BCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FF0A09083C00000000000000000000
      000000000000000000000000000000000000BCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFAC9E87F400000000000000000000000000000000000000000000
      00007B705FCE9F917CEB2925207800000007AB9D86F40605042F000000000000
      0000000000000000000000000000B0A28AF71715125B0605042E50493FA7BAAA
      91FE13120F530000000000000000000000000000000000000000000000000000
      000000000000857B6BD600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003030323000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006BCAC93FFA1947EEC524B40A9BCAC93FF524B40A900000000000000000000
      000000000000000000000000000000000000000000000000000007060532BCAC
      93FF5B5347B20000000000000000000000000000000000000000000000001210
      0E50BCAC93FFBCAC93FFBCAC93FFBCAC93FF0101001500000000000000000000
      000000000000000000000000000000000000BCAC93FFBCAC93FFBCAC93FFBCAC
      93FFA39680EE0000000000000000000000000000000000000000000000000000
      0000000000001C191663716758C60504032A110F0D4EBCAC93FF000000110000
      000000000000000000001816135DBCAC93FF000000054741379D5F574AB60101
      0119000000000000000000000000000000000000000000000000000000000000
      000000000000857B6BD600000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0C43000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030222BCAC93FFBCAC93FF524B40A90000000000000000000000000000
      0000000000000000000000000000000000000000000003030224BCAC93FFB2A2
      8BF8000000000000000000000000000000000000000000000000000000000000
      00000000000CB3A48DF9BCAC93FFBCAC93FFB9A991FD403A32951715125A0B0A
      083F070605330D0C0A4424211C70736A59C8BCAC93FFBCAC93FFBCAC93FF3530
      2988000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000050493EA7BCAC93FF7F75
      63D23A352D8EB0A289F7BCAC93FF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000857B6BD600000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002B2B2979000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000023201C6FBCAC93FFA2957FED0807063600000000000000000000
      0000000000000000000000000000000000022D29237DBCAC93FFB9A991FD0101
      0119000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000084F483EA6BCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFB2A28BF81E1B1767000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030302232E2A
      247F494339A01715125A00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D675CC000000000000000010202021C0202021C0202021C0202
      021C000000110000000D0000000000000000000000006E685EC1000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003020221BCAC93FFBCAC93FFBBAB92FE322D27840202
      021E000000050B0A083F716858C6BCAC93FFBCAC93FF988C78E6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009F9382E9B9AA93FDB9AA93FDB9AA93FDB9AA93FDB9AA
      93FDB9AA93FDB9AA93FDB9AA93FDB9AA93FDB9AA93FD1E1D1B65000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000062F2B2581A79983F1BCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FF796F5ECD0E0D0B4700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101011C01010118000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A0101
      011601010116010101160000000A000000000000000000000000000000000000
      00000000000000000000000000000000000000000000534C41AA534C41AA534C
      41AA534C41AA534C41AA534C41AA534C41AA534C41AA534C41AA534C41AA534C
      41AA534C41AA534C41AA534C41AA534C41AA534C41AA534C41AA534C41AA534C
      41AA534C41AA534C41AA534C41AA25221C720000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000020201D71A7A595FFB2A894FFB7AB93FFB6AA93FFB0A894FFA6A5
      95FF0909083D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A39580EEBCAC
      93FFBCAC93FFBCAC93FFA39680EE000000010504032A030302230000000B0000
      0000000000000000000000000000000000000000000015131056000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000534C41AA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A1814600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848477E4B9AB93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFB3AA94FF4D4D45AF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0A189F7BCAC
      93FFBCAC93FFBCAC93FFB0A18AF700000002696052BF796E5ECCA69983F01412
      1055000000000000000000000000000000000000000015131056000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000534C41AA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004943
      3AA0BCAC93FF0505042D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000302F
      2B8ABAAB93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFB5A994FF0808073B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100F0D4C514A
      3FA8524B40A9514A3FA8100F0D4C0000000000000000000000000101011A9588
      75E3080807380000000000000000000000000000000015131056000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000534C41AA0000000000000000000000000000
      0000000000000000000000000000000000000000000A857A68D7BCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FF403A32950000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A7A5
      95FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFA6A595FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0A431A1814600000000000000000000000000000000015131056000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000534C41AA0000000000000000000000000000
      000000000000000000000201011B928673E1BCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FF4A433AA0000000000000
      000000000000000000000000000000000000000000000000000000000004B4AA
      94FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFADA894FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000011210
      0E501C1916630000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      032926231D730101001400000000000000000000000015131056000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      05303B372E900000000000000000000000000000000000000000000000000000
      0000000000000000000000000000534C41AA0000000000000000000000000000
      0000000000000E0D0B48BCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FF0000
      000100000000000000000000000000000000000000000000000007070636BAAB
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFB4AA94FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000202021FBCAC
      93FFBCAC93FF23201B6F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009689
      75E4BCAC93FF7B705ECE0000000000000000000000000000000E000000000000
      00000000000000000000000000000000000000000000000000000A09083C8E82
      6DDDB6A68FFB332F288600000000000000000000000000000000000000000000
      00000000000000000000000000000202011D0000000000000000000000000000
      00000000000DBCAC93FFBCAC93FF2C28227C0000001000000012403A3295BCAC
      93FFBCAC93FFB2A48CF90F0E0C4A000000060505042D746B5BC9BCAC93FF7C72
      60CF0000000000000000000000000000000000000000000000000C0C0B46BBAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFB6AA94FF0000000C0000000000000000000000000000
      000000000000000000000000000000000000000000005E5649B50504032ABCAC
      93FFBCAC93FF403A329500000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCAC
      93FFBCAC93FFBCAC93FF00000000080706360000000000000000000000000000
      000000000000000000000000000000000000000000000505042D8C806DDCBCAC
      93FFBCAC93FFB4A58DFA332F2886000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9A991FDBCAC93FF0403032700000000000000000000000000000000746B
      5BC9BCAC93FF0F0D0B4900000000000000000000000000000000AA9C85F3BCAC
      93FF04030326000000000000000000000000000000000000000010100E50BBAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFB6AA94FF0000000C0000000000000000000000000000
      000000000000000000000000000000000000080706369F917CEA0504032ABCAC
      93FFBCAC93FF403A329500000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCAC
      93FFBCAC93FFBCAC93FF00000000AC9E87F40000000000000000000000000000
      0000000000000000000000000000000000000505042CA79983F1BCAC93FFBCAC
      93FFBCAC93FFBCAC93FFB6A68FFB3A352D8E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0012BCAC93FF837866D50000000000000000000000000000000000000000322D
      2784BCAC93FF000000030000000000000000000000000000000000000003BCAC
      93FFAEA089F6000000000000000000000000000000000000000025242179BCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBAAC94FF010101170000000000000000000000000000
      000000000000000000000000000000000000716756C59F917CEA0504032ABCAC
      93FFBCAC93FF403A329500000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCAC
      93FFBCAC93FFBCAC93FF00000000BCAC93FF0000000000000000000000000000
      00000000000000000000000000000A09083C8D816DDDBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFB6A68FFB332F288600000000000000000000
      0000000000000000000000000000000000000000000000000000000000001614
      1159BCAC93FF221F1A6D00000000000000000000000000000000000000002F2B
      2580BCAC93FF000000000000000000000000000000000000000000000000A295
      7FEDBCAC93FF000000000000000000000000000000000000000025242179BCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBAAC94FF010101170000000000000000000000000000
      000000000000000000000000000000000000B2A28BF89F917CEA0504032ABCAC
      93FFBCAC93FF403A329500000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCAC
      93FFBCAC93FFBCAC93FF00000000BCAC93FF0000000000000000000000000000
      000000000000000000000505042D8C806DDCBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFB4A68DFA322E2885000000000000
      0000000000000000000000000000000000000000000000000000988B76E5968A
      76E4BCAC93FF7B7260CF29252078000000000000000000000000000000002F2B
      2580BCAC93FF00000000000000000000000000000000000000006D6454C2A193
      7EECBCAC93FF887D69D90606053000000000000000000000000025242179BCAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBAAC94FF010101170000000000000000000000000000
      0000000000000000000000000000000000007C7260CF9F917CEA0504032ABCAC
      93FFBCAC93FF403A329500000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCAC
      93FFBCAC93FFBCAC93FF00000000BCAC93FF0000000000000000000000000000
      000000000000040403299F927DEB8F8470DF8F8470DF8F8470DFA0947DECBCAC
      93FFBCAC93FFAFA289F78F8470DF8F8470DF8F8470DF948975E32C28227C0000
      00000000000000000000000000000000000000000000000000001D1B1766BCAC
      93FFBCAC93FFBCAC93FF00000004000000000000000000000000000000002F2B
      2580BCAC93FF00000000000000000000000000000000000000008F8371DFBCAC
      93FFBCAC93FFBCAC93FF000000000000000000000000000000000C0C0B46BBAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFB6AA94FF0000000C0000000000000000000000000000
      0000000000000000000000000000000000000C0B09429F917CEA0504032ABCAC
      93FFBCAC93FF403A329500000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCAC
      93FFBCAC93FFBCAC93FF00000000B6A78FFB0000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C80
      6DDCBCAC93FF443E359A00000000000000000000000000000000000000002F2B
      2580BCAC93FF000000000000000000000000000000000000000000000000A89A
      83F1BCAC93FF201D196A000000000000000000000000000000000C0C0A45BBAC
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFF6F4F0FFECE7E0FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFB6AA94FF0000000C0000000000000000000000000000
      000000000000000000000000000000000000000000007A705FCD0504032ABCAC
      93FFBCAC93FF403A329500000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCAC
      93FFBCAC93FFBCAC93FF000000000C0B09420000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002665D4FBC0000000000000000000000000000000000000000000000005B53
      47B2BCAC93FF0E0C0A4600000000000000000000000000000000000000000000
      0007554D42AC00000000000000000000000000000000000000000404042CB9AB
      93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFFFFFFFFFFFFFFFFFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFB3A993FF000000000000000000000000000000110000
      000000000000000000000000000000000000000000000000000003020222BCAC
      93FFBCAC93FF2A26217900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009F91
      7CEBBCAC93FF8A7E6CDA00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000423D3498BCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFB3A48DF90000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B1A8
      94FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFFFFFFFFFFFFFFFFFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFAAA795FF000000000A0A093FA8A595FFB6AA94FFAFA8
      94FF494941AA000000000000000000000000000000000000000000000001201D
      196A312D26830000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000807
      0636423C34980101011A00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000100E0C4BBCAC93FFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FFBCAC93FFA89A83F10000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A5
      95FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFFFFFFFFFFFFFFFFFBCAC93FFBCAC
      93FFBCAC93FFBCAC93FF848477E40D0D0C4AB0A995FFBCAC93FFACA794FFB7AB
      93FFB5A994FF0606053200000000000000000000000000000000000000000000
      000B22201B6E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000807
      06360D0C0A450000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F2B
      2580BCAC93FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0329B0A994FFBCAC93FFBCAC93FFBCAC93FFC3B59FFFBFB099FFBCAC93FFBCAC
      93FFBCAC93FFAAA795FF01010015ABA695FFBCAC93FF939284F0000000007B7A
      6EDBBCAC93FF969586F200000000000000000000000000000000000000000000
      00029B8F7AE80403032600000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000584F
      43AE12110E510000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000554F
      43ADBCAC93FF0505042D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001616145EACA794FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC93FFBCAC
      93FFA8A695FF04040328A7A595FFBCAC93FFA4A393FD00000000000000000505
      042FAAA694FFA6A595FF00000000000000000000000000000000000000000000
      00001B1815615A5145B000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040403289B8E
      7AE80000000B0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000948774E2BCAC
      93FFBCAC93FFBCAC93FF06060530000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004B4A43ACA6A595FFB0A794FFB4AB94FFA6A595FF3131
      2C8C0000000DA7A595FFBCAC93FFA8A694FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000077D7261D01917145F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000007847866D51413
      1055000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCAC93FF3934
      2D8D00000000BCAC93FFAC9E87F4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000999989F5BCAC93FFAEA794FFA7A5
      95FFB1A994FFBCAC93FFA8A595FF0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000201011B9A8C78E71B1814610000000000000000000000000000
      0000000000000000000000000000000000000000000D7C7261CF36322A8A0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCAC93FFA193
      7EEC39342D8DBCAC93FF423D3498000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4A393FEB4A993FFB8AA
      93FFB1A894FFA09F8FFA00000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000127E7361D1786D5DCC03030222000000000000
      000000000000000000000000000226231E74A69881EF23201B6F000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F393194BCAC
      93FFBCAC93FF9E907CEA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101011ABCAC
      93FFBCAC93FF998C78E600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030202
      0221000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000030C0B0942A59781EFAC9E87F4A295
      7FED9F917CEBA59781EFB4A58DFA534C41AA0000000E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000403A3295AC9E
      87F4AC9E87F49A8D79E700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000480000000100010000000000600300000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
end
