unit uListaUsuarios;

interface

uses
  Classes, uUsuario;

Type
  TListaUsuarioSortCompare = function (Item1, Item2: Pointer): Integer;
  TListaUsuarios = class(TList)
  private
    function Get(Index: Integer): TUsuario; reintroduce;
    procedure Put(Index: Integer; const value: TUsuario); reintroduce;
  public
    function Add(Item: TUsuario): Integer; reintroduce;
    function Extract(Item: TUsuario): TUsuario; reintroduce;
//    function IndexOf(Item: TUsuario): Integer; reintroduce;
    procedure Insert(Index: Integer; Item: TUsuario); reintroduce;
    function Last: TUsuario; reintroduce;
    function Remove(Item: TUsuario): Integer; reintroduce;
    procedure Sort(Compare: TListaUsuarioSortCompare); reintroduce;
    property Items[Index: Integer]: TUsuario read Get write Put; default;
  end;


implementation

{ TListaUsuarios }

function TListaUsuarios.Add(Item: TUsuario): Integer;
begin
  Result := inherited Add(Pointer(Item));
end;

function TListaUsuarios.Extract(Item: TUsuario): TUsuario;
begin
  Result := TUsuario(inherited Extract(Pointer(Item)));
end;

function TListaUsuarios.Get(Index: Integer): TUsuario;
begin
  Result := TUsuario(inherited Items[Index]);
end;

procedure TListaUsuarios.Insert(Index: Integer; Item: TUsuario);
begin
  inherited Insert(Index, Pointer(Item));
end;

function TListaUsuarios.Last: TUsuario;
begin
  Result := TUsuario(inherited Last);
end;

procedure TListaUsuarios.Put(Index: Integer; const value: TUsuario);
begin
  inherited Items[Index] := Pointer(Value);
end;

function TListaUsuarios.Remove(Item: TUsuario): Integer;
begin
  Result := inherited Remove(Pointer(Item));
end;

procedure TListaUsuarios.Sort(Compare: TListaUsuarioSortCompare);
begin
  inherited Sort(TListSortCompare(Compare));
  
end;

end.
 