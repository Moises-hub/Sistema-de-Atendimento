object Frm_VSugestoes: TFrm_VSugestoes
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  ClientHeight = 661
  ClientWidth = 888
  Color = clGray
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
  object RzGroupBox1: TRzGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 882
    Height = 655
    Align = alClient
    Color = clWhite
    GroupStyle = gsCustom
    TabOrder = 0
    VisualStyle = vsClassic
    object Label1: TLabel
      Left = 50
      Top = 68
      Width = 26
      Height = 15
      Caption = 'CNPJ'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 49
      Top = 114
      Width = 35
      Height = 15
      Caption = 'NOME'
      FocusControl = cxDBTextEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 49
      Top = 156
      Width = 93
      Height = 15
      Caption = 'NOME_FANTASIA'
      FocusControl = cxDBTextEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 48
      Top = 28
      Width = 69
      Height = 15
      Caption = 'PROTOCOLO'
      FocusControl = cxDBTextEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 50
      Top = 204
      Width = 71
      Height = 15
      Caption = 'SOLICITACAO'
      FocusControl = cxDBTextEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 48
      Top = 251
      Width = 77
      Height = 15
      Caption = 'RESPONSAVEL'
      FocusControl = cxDBTextEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 400
      Top = 252
      Width = 30
      Height = 15
      Caption = 'FONE'
      FocusControl = cxDBTextEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 49
      Top = 298
      Width = 34
      Height = 15
      Caption = 'EMAIL'
      FocusControl = cxDBTextEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 49
      Top = 341
      Width = 61
      Height = 15
      Caption = 'DESCRI'#199#195'O'
      FocusControl = cxDBTextEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 320
      Top = 28
      Width = 28
      Height = 15
      Caption = 'DATA'
      FocusControl = cxDBTextEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 400
      Top = 298
      Width = 38
      Height = 15
      Caption = 'STATUS'
      FocusControl = cxDBTextEdit10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 592
      Top = 20
      Width = 193
      Height = 24
      DataField = 'TIPO_'
      DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Image1: TImage
      Left = 746
      Top = 8
      Width = 57
      Height = 53
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000006C5494441546843ED59696F5B45149DB4954002
        247E049B00D16F48FD007F004A6849489C78C99E266DD60AF807202121C15F00
        9A380E152DFB1E285096B649BA255D52D40F44D02D89ED2CCEF23C9C733DCFD8
        D1247E7E71682472A52382DFCC9D73EF9C7B67DEABDAB66DDBB6D2D87454ED06
        7A67622A96185467E347D554FC03B524C0DF89981AE5B3E97ED5C3B166DADDB5
        5BC7D503D303EA30488E258E2A9D38A674F238F011F031F08901FFE66F78C631
        1C1B1F541719F0CD98BADFB8FBEF4C0FA95DCC2488DF497C68C881E8EC67C017
        C0974ACF7D950FFE26CF304682C21CCE858FDB08A49B3E8DFBCDB5449F7A2C1E
        53232E7197F4DCD7C0B74ACF0F95E9F9EF811F5681BFE119C7706C3618379098
        1A86CC1E35CB6C8E21EB2F2063C90465F2A921FE8D210D920B3F0127CB74EA17
        E0D755C06F7CC631121083C15CFAA02FFA84EFC4D480DA6B962BADC5FB5508C5
        B8EC669DB298FF0E844E003F67482EFE0E9C06CE00C3657AC9807FCB6F7C8631
        1CCB399C4B1F2231B31B5C233EA08266D9D29864DE25FFB9C93A24C16C0AF153
        19924B23C059E05C995E3E9F0FFE26CF304602C21C09843B025FB21BF0ED0691
        88AAE7CDF21BB3F811F530B7368F3CE542A930E3C8ECD2A8217D0118DBA197C7
        77E8954BF9E06FF20C632418CCE15CFAA02FFACC0B825245BD191AFE8C9D410A
        16FA14D918F2292CC80C8A449055214ED297812B3BB433015C5B05FCC6671C23
        C13010EE88BB1BB941602DA989983AB3A1EEC45629DD0645269AA76C5CF2940B
        B37E3193E195AB20F9C73D3A7DB3523BC9F7757A714CA79D249090BFE5373EC3
        188E955DC15CD90DCA0A3E65272827AC25858DB5D162BB0C9DE2ECEF77D57DD0
        E22D910E3A85142C358F2D97CC933C24C18C32BBE91B2F82E8659D4EA7D707C7
        60ACEC0877033E2408F81439B126B09674A78C946EF3C034B4BC1B4F5866C095
        0E3B86142C354FD930F3247F6D9776A6DFB0935D130EE6BC2E732508EE047C4A
        4DB0B0B156564A995DE835B4BC1B221FCB661F3D9B6D4FA483E2A37E2901D17A
        D1E4FF8504C19DA09C58132C6C4A096B71CDEC2EE0DA616879335EB6785FE191
        CF53530A97D977A5C382858E4536C8A68D9C3760EE8D72F1459FF4CD35B89614
        34D6260772998AAA270DBDC226F2C1A54BE483A39FBAE401C46293EC533A2C58
        2F9A2F84A509F8BA372325EE020BDAD402D71619814B51C5CC6B2F6F8E59F9B0
        F3E01415EDB370D10ED951AC84FC00BEE8530A9AB580B5A423B932029799A88A
        1A7A856D66509D13FDE306C9B6C67B8C14AF918F683F79C44EC6079CC47BE233
        2B231633D6E4DAE460EA60C4D02B6C6C5D49DCE1A5F7E7E89F5702295E1C4CE9
        C54B5632BEB0382E3EA598B1465E1DF04C0017B67443AFB021804529E09C00D8
        A7F302E0016523E307F0951B809C09B901800B38A50CBDC2E6298095693B193F
        80AF5207505842A9513B193F80AFDC00362C214F453CF38E9D8C0F38336F97B6
        88BDB451E7AF67AD64FC80BE4ADA4679F728789051460B27AD848A42EAB78C7C
        0A1C647823EC34F40ADB549F7ACAFB55C242AA18C08797ABC49D3EF584A1E7CD
        20A3F35207AE8CD6B8CCA5177EB413F302ECA033B13353BCCC7EA92E73349191
        97EBF49F7B40C6DF85CE997C26239D42D769BC58195ADEADA8179AE4312BC1F5
        C039429E850B5FD2FB8DF657BFD0F8FE7A875DE866060ABD523AD79FB6925C0F
        CEF53D99CC933C0B97D261E7C11AD2FBCD2B653CAA3A0C9DE2CDBCD40F7B79A9
        77E64E5889DAC0B1A279CCA50FFA5AE3A5FEB48EA99D868E3F839387B08D7191
        D23A9F555626BBAC646D5899ECCC142C354FD9E4922FE56715D7F8B98F1F9BF2
        82A09C58132C6CEEC6F86E2B591B3856B2CE82A5E6299B5CF2FC3AD7AF9E33CB
        97C6F8B92F1B04E5C49A6061A363B0EDA54E3D68256B03C7720EE7D2077DD167
        967C54D59A654B6BFCDC87AD4D509F2C32760AD90DF46C4AC046D6068EE51CC9
        3ABB0D0B969A87544B9EF9D586201EE11733E94E663724109C9ACD877AF481AE
        57747BCF6BBAADFB55DDD2D1AB1BDBBA745DCB411D6C68D58170A3AEAC89C858
        CE71B32EDD0605CBCF986699CD35F9070EBC64B347BB81F0C827D91604D1DA71
        18FFEDD54DEDDDBAE140878E34B5E9DAFA165D1D6AD09581B08CCD12C759C356
        B9E16EE3C778C0F0C4C6517F81F795D6F65610EE94401ADB3A757D2BC837B7EB
        10B25F1369D255C13A5D1BAA96BB0DAF2A3C61EFCA3F31D98C97ADAE43C10912
        AE6B3E28C4C3C83CA543F2D5A17AC827AC9B23E5579331F5B899B6B5ACA6AE69
        7F105271515BD7AC0391465D25E4237A7F5550EFABA82A37C3B7A605820D6F55
        871B44EF24FE726D9DAE80EE49BEBC32F0A619B6B5ADB236BCAF32101AAA0884
        665FAA0ECEE27F86F66EF5CC6FDBFFD394FA073DA05D963A0AC3D10000000049
        454E44AE426082}
    end
    object Image2: TImage
      Left = 746
      Top = 8
      Width = 57
      Height = 53
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC610500000168494441546843ED993D4BC3501885A3A0E0E4
        E4E8EAE2244904FF9D9BBAB8496F1C5C0577FF40671D45E8BD05C1AF9F11893D
        0ABE9EE19440DE04EE036768923EF769C7B6C8643299717278F7B45D35E9A20A
        E9A30AB175D92CBED7219E772DC8D2E9DE48A50EEB5A90A5E3FACDFFDF27B274
        88C475C8D26112CF214B87493C872C1D26F11CB27498C473C8D2B182A1B1E723
        4BC70A86C69E8F2C1D2BF01EB27498C473C8D26112CF214BC70A86C69E8F2C1D
        2B181A7B3EB274ACC07BC8D26112CF214B87493C872C1D2BE88BF5AD3B64E958
        415FAC6FDD214B87493C872C1D26F11CB27498C473C8D26112CF214B87493C87
        2C1D26F15A19E21BB27498C86BF52C9E214B8789065F9F9F16A9F0674D7C39BE
        5E1EE0D17142C3577BAEAFD23E1E1B2F24BCDBE3D14DDCC323E3C6C6D721CDCB
        66B98BDBE3E7EF0758DC9F5CBEEEE0D634F88D6F16B765F3B085CBD361159F42
        71DA6EE2D2B4F8FE57A46D37F03293C9643284A2F8021DE5936A0961F0E40000
        000049454E44AE426082}
    end
    object Label12: TLabel
      Left = 617
      Top = 372
      Width = 54
      Height = 15
      Caption = 'RESPOSTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 617
      Top = 497
      Width = 74
      Height = 30
      Caption = 'PREVIS'#195'O DE '#13'CONCLUS'#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 49
      Top = 538
      Width = 89
      Height = 15
      Caption = 'APROVADO POR'
      FocusControl = cxDBTextEdit12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 48
      Top = 578
      Width = 95
      Height = 15
      Caption = 'ATUALIZADO POR'
      FocusControl = cxDBTextEdit13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 506
      Top = 538
      Width = 119
      Height = 15
      Caption = 'REPONS'#193'VEL COLISEU'
      FocusControl = cxDBTextEdit14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 506
      Top = 578
      Width = 118
      Height = 15
      Caption = 'DATA DE APROVA'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 704
      Top = 578
      Width = 37
      Height = 15
      Caption = 'VALOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 50
      Top = 84
      DataBinding.DataField = 'CNPJ'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 231
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 49
      Top = 130
      DataBinding.DataField = 'NOME'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 505
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 49
      Top = 174
      DataBinding.DataField = 'NOME_FANTASIA'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 505
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 48
      Top = 44
      DataBinding.DataField = 'PROTOCOLO'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 233
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 49
      Top = 222
      DataBinding.DataField = 'SOLICITACAO'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 505
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 49
      Top = 268
      DataBinding.DataField = 'RESPONSAVEL'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 328
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 400
      Top = 268
      DataBinding.DataField = 'FONE'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 153
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 49
      Top = 314
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 328
    end
    object DBMemo1: TDBMemo
      Left = 48
      Top = 360
      Width = 505
      Height = 167
      DataField = 'DESCRICAO'
      DataSource = Frm_Sugestao.DS_Query_Sugestoes
      TabOrder = 8
    end
    object RzBitBtn1: TRzBitBtn
      Left = 608
      Top = 123
      Width = 185
      Height = 33
      Cursor = crHandPoint
      Action = Act_Aprovado
      Caption = 'Aprovar Ctrl+B'
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 9
      ThemeAware = False
    end
    object RzBitBtn2: TRzBitBtn
      Left = 608
      Top = 162
      Width = 185
      Height = 33
      Cursor = crHandPoint
      Action = Act_Recusado
      Caption = 'Recusar Ctrl+R'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 10
      ThemeAware = False
    end
    object RzBitBtn3: TRzBitBtn
      Left = 608
      Top = 333
      Width = 185
      Height = 33
      Cursor = crHandPoint
      Caption = 'Sair'
      HotTrack = True
      TabOrder = 11
      ThemeAware = False
      OnClick = RzBitBtn3Click
    end
    object RzBitBtn4: TRzBitBtn
      Left = 608
      Top = 201
      Width = 185
      Height = 33
      Cursor = crHandPoint
      Action = Act_EmAnalize
      Caption = 'Em Analize Ctrl+A'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      TabOrder = 12
      ThemeAware = False
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 320
      Top = 44
      DataBinding.DataField = 'DATA'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 13
      Width = 233
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 400
      Top = 314
      DataBinding.DataField = 'CASE'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      Style.BorderColor = clHighlightText
      Style.HotTrack = True
      Style.TextColor = clHighlightText
      TabOrder = 14
      Width = 153
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 704
      Top = 506
      DataBinding.DataField = 'DATA_PREVISTA'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      TabOrder = 15
      Width = 130
    end
    object DBMemo2: TDBMemo
      Left = 617
      Top = 393
      Width = 217
      Height = 98
      BorderStyle = bsNone
      Color = clInactiveCaption
      DataField = 'DESCRITIVOS_FINAIS'
      DataSource = Frm_Sugestao.DS_Query_Sugestoes
      ScrollBars = ssVertical
      TabOrder = 16
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 49
      Top = 554
      DataBinding.DataField = 'APROVADO_POR'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 17
      Width = 328
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 48
      Top = 594
      DataBinding.DataField = 'ATUALIZADO_POR'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 18
      Width = 328
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 506
      Top = 554
      DataBinding.DataField = 'RESPONSAVEL_COLISEU'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      TabOrder = 19
      Width = 328
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 506
      Top = 594
      DataBinding.DataField = 'DATA_APROVA'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      TabOrder = 20
      Width = 130
    end
    object cxDBTextEdit16: TcxDBTextEdit
      Left = 704
      Top = 594
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = Frm_Sugestao.DS_Query_Sugestoes
      Properties.ReadOnly = True
      Style.Color = clInactiveCaption
      TabOrder = 21
      Width = 130
    end
  end
  object FDQuery1: TFDQuery
    Left = 728
    Top = 288
  end
  object ActionList1: TActionList
    Left = 688
    Top = 288
    object Act_EmAnalize: TAction
      Caption = 'Em Analize Ctrl+A'
      ShortCut = 16449
      OnExecute = Act_EmAnalizeExecute
    end
    object Act_Aprovado: TAction
      Caption = 'Aprovar Ctrl+B'
      ShortCut = 16450
      OnExecute = Act_AprovadoExecute
    end
    object Act_Recusado: TAction
      Caption = 'Recusar Ctrl+R'
      ShortCut = 16466
      OnExecute = Act_RecusadoExecute
    end
  end
end
