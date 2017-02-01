program sce;


function expr1() : boolean;
begin
  expr1 := true;
end;

function expr2() : boolean;
begin
  writeln('Not Short-circuit evaluation.');
  expr2 := true;
end;

begin
  writeln(expr1() OR expr2());
end.
