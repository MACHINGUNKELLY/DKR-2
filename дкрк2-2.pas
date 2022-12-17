begin
var
  s, ss: String;
var  i, j, p, q: Integer;
var  t: Char;
  Write('   Строка: ');
  ReadLn(s);
  Write('Подстрока: ');
  ReadLn(ss);
  i:= 1;
  j:= Length(s)-Length(ss)+1;
  while i <= j do
    begin
    if Copy(s,i,Length(ss))=ss then
      begin
        p:= i;
        Inc(i,Length(ss));
        q:=i-1;
        while p < q do
          begin
            t:=s[p];
            s[p]:= s[q];
            s[q]:= t;
            Inc(p);
            Dec(q);
          end;
        end
      else 
        Inc(i);
  end;
  Write('Результат: ');
  print(s);
  Readln;
end.