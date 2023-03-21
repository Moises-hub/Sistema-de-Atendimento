object Frm_Atend_Aberto: TFrm_Atend_Aberto
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Atendimento em Aberto'
  ClientHeight = 671
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 89
    Align = alTop
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 174
      Height = 18
      Caption = 'Atendimento em Aberto'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 66
      Width = 119
      Height = 17
      Caption = 'Selecionar Tudo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object RzBitBtn1: TRzBitBtn
      Left = 280
      Top = 50
      Width = 120
      Height = 33
      Cursor = crHandPoint
      Caption = 'Fechar Atendimentos'
      HotTrack = True
      TabOrder = 1
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RzBitBtn2: TRzBitBtn
      Left = 405
      Top = 50
      Width = 83
      Height = 33
      Cursor = crHandPoint
      Caption = 'Sair'
      HotTrack = True
      TabOrder = 2
      ThemeAware = False
      OnClick = RzBitBtn2Click
    end
  end
  object CheckListBox1: TCheckListBox
    Left = 0
    Top = 89
    Width = 497
    Height = 582
    Align = alClient
    BorderStyle = bsNone
    Color = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ItemHeight = 23
    ParentFont = False
    TabOrder = 1
  end
  object Query_Aten_Final: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select controle_atendimentos.data_hora,'
      '       controle_atendimentos.responsavel,'
      '       controle_atendimentos.descricao,'
      
        '       controle_atendimentos.id_atendimento from controle_atendi' +
        'mentos'
      
        'where ((id_status = 0) or (id_status = 4) or (id_status = 1) or ' +
        '(id_status = 2)) and  controle_atendimentos.id_cliente =:p'
      '')
    Left = 200
    Top = 104
    ParamData = <
      item
        Name = 'P'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Query_Aten_Finaldata_hora: TSQLTimeStampField
      FieldName = 'data_hora'
    end
    object Query_Aten_Finalresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 50
    end
    object Query_Aten_Finaldescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object Query_Aten_Finalid_atendimento: TIntegerField
      FieldName = 'id_atendimento'
    end
  end
  object DS_Query_Aten_Final: TDataSource
    DataSet = Query_Aten_Final
    Left = 256
    Top = 136
  end
  object Query_Atualiza: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'update controle_atendimento set controle_atendimento.status = 3'
      'where  controle_atendimento.id_atendimento =:at')
    Left = 400
    Top = 104
    ParamData = <
      item
        Name = 'AT'
        ParamType = ptInput
      end>
  end
end
