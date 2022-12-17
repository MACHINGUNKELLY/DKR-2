const nmax=1000;
begin
 var n,k:integer;
 var   a:array [1..nmax] of integer;
 print('Введите количество элементов массива:');
 read(n);
 print('Введите значения элементов массива:');
for var  i:integer:=1 to n do
  readln(a[i]);
 k:=1;
  for var  i:integer:=2 to n do
   if a[i-1]<>a[i]
    then k:=k+1;
 print(k)
end.