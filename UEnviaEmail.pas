unit UEnviaEmail;

interface

uses
  System.Classes;

type
  MinhaThread = class(TThread)
  private

  public


  protected
    procedure Execute; override;

  end;

implementation

{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure MinhaThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

uses UFrm_Principal, UDM;

{ MinhaThread }



procedure MinhaThread.Execute;
begin



                                         try
                                            //Frm_Principal.EnviarEmail('smtp.bra.terra.com.br',587,'silenus','45781389',Frm_Principal.emailcli,'Atendimento Coliseu Sistemas #'+'', True, True);

                                         except

                                         end;
end;

end.
