unit Uteis.Uteis;

interface

type
  TUteis = class
    private
      FResultadoGet : Boolean;
    public
      function ResultadoGet(Value : Boolean) : TUteis; overload;
      function ResultadoGet : Boolean; overload;
  end;

implementation

{ TUteis }

function TUteis.ResultadoGet: Boolean;
begin
  Result := FResultadoGet;
end;

function TUteis.ResultadoGet(Value: Boolean): TUteis;
begin
  Result := Self;
  FResultadoGet := Value;
end;

end.
