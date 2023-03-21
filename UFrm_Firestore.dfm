object Frm_Firestore: TFrm_Firestore
  Left = 0
  Top = 0
  Caption = 'Frm_Firestore'
  ClientHeight = 338
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RESTResponse2: TRESTResponse
    Left = 568
    Top = 144
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <>
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 568
    Top = 88
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
    Left = 568
    Top = 40
  end
end
