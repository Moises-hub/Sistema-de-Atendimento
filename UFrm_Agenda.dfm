object Frm_Agenda: TFrm_Agenda
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Frm_Agenda'
  ClientHeight = 199
  ClientWidth = 862
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitWidth = 987
    object Label1: TLabel
      Left = 255
      Top = 8
      Width = 227
      Height = 13
      Caption = 'Possui Agendamentos para esta Data e Horario'
    end
    object DBText1: TDBText
      Left = 16
      Top = 8
      Width = 233
      Height = 17
      Alignment = taRightJustify
      DataField = 'RESPONSAVEL'
      DataSource = DS_Query_Agenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 601
      Top = 3
      Width = 145
      Height = 35
      ShowCaption = True
      UseToolbarShowCaption = False
      Action = Act_Continua
      Align = alRight
      ExplicitLeft = 696
      ExplicitTop = 2
      ExplicitHeight = 33
    end
    object RzToolButton2: TRzToolButton
      AlignWithMargins = True
      Left = 752
      Top = 3
      Width = 107
      Height = 35
      ShowCaption = True
      UseToolbarShowCaption = False
      Action = Act_Cancelar
      Align = alRight
      ExplicitLeft = 880
      ExplicitTop = 0
      ExplicitHeight = 41
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 862
    Height = 158
    Align = alClient
    DataSource = DS_Query_Agenda
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA_AGENDAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data de Agendamento'
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clLime
        Expanded = False
        FieldName = 'DATA_HORA_AGENDA'
        Title.Alignment = taCenter
        Title.Caption = 'Data / Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENDADO'
        Width = 250
        Visible = True
      end>
  end
  object ActionList1: TActionList
    Left = 776
    Top = 112
    object Act_Continua: TAction
      Caption = 'Continuar com o Agendamento'
      OnExecute = Act_ContinuaExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar - Esc'
      ShortCut = 27
      OnExecute = Act_CancelarExecute
    end
  end
  object DS_Query_Agenda: TDataSource
    DataSet = Frm_Agendamento.Query_Agenda
    Left = 544
    Top = 64
  end
end
