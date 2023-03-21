unit UFrm_Firestore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TFrm_Firestore = class(TForm)
    RESTResponse2: TRESTResponse;
    RESTRequest2: TRESTRequest;
    RESTClient2: TRESTClient;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Firestore: TFrm_Firestore;

implementation

{$R *.dfm}

end.
