program Project1;

uses
  Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {Form1},
  uUsuario in 'Classes\uUsuario.pas',
  uListaUsuarios in 'Classes\uListaUsuarios.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
