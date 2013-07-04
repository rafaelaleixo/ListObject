unit uFormPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, uListaUsuarios, uUsuario;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FListaUsuario: TListaUsuarios;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  oUsuario: TUsuario;
  nIdx: Integer;
begin
  FListaUsuario := TListaUsuarios.Create;
  oUsuario := TUsuario.create;
  oUsuario.id := 1;
  oUsuario.nome := 'rafael';
  FListaUsuario.Add(oUsuario);

  for nIdx := 0 to FListaUsuario.Count -1 do
  begin
    Memo1.Lines.Add(FListaUsuario[nIdx].nome);
  end;
end;

end.
