program Project1;

uses
  Forms,
  GeradorDeCpfs in '..\..\Documents\RAD Studio\Projects\GeradorDeCpfs.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
