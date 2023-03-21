object Frm_Marca_Funcionario: TFrm_Marca_Funcionario
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_Marca_Funcionario'
  ClientHeight = 476
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 464
    Height = 476
    Align = alClient
    DataSource = DataSource1
    Options = [dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 431
        Visible = True
      end>
  end
  object FDQuery1: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select id_usuario,nome from CONTROLE_QUADRO_USUARIO'
      'where id_quadro =:q')
    Left = 240
    Top = 112
    ParamData = <
      item
        Name = 'Q'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQuery1ID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 324
    Top = 104
  end
end
