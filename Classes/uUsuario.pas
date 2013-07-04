unit uUsuario;

interface

type
  TUsuario = class
  private
    FId: Integer;
    FNome: string;
    function getId: Integer;
    function getNome: string;
    procedure setId(const Value: Integer);
    procedure setNome(const Value: string);
  public
    constructor create;
  published
    property id: Integer read getId write setId;
    property nome: string read getNome write setNome;
  end;

implementation

{ TUsuario }

constructor TUsuario.create;
begin
  FId := 0;
  FNome := '';
end;

function TUsuario.getId: Integer;
begin
  Result := FId;
end;

function TUsuario.getNome: string;
begin
  Result := FNome;
end;

procedure TUsuario.setId(const Value: Integer);
begin
  if value <> FId then
    FId := Value;
end;

procedure TUsuario.setNome(const Value: string);
begin
  if Value <> FNome then
    FNome := Value;
end;

end.
