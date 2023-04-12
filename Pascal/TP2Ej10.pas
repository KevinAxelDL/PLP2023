(*Leer A y B, enteros. Calcular C = A × B mediante sumas sucesivas e imprimir el resultado.*)

program TP2Ej10;
(*DECLARACIONES*)
var A, B, C: Integer;

(*FUNCIONES*)
function multiplicacionManual(A, B: Integer): Integer;
var resultado, i: Integer;
begin
  resultado := 0;
  for i := 1 to B do
  begin
    resultado := resultado + A;
  end;
  multiplicacionManual := resultado;
end;

(*MAIN*)
begin
  while true do
  begin
    C := 0;
    WriteLn('INGRESE 2 NUMEROS ENTEROS:');
    ReadLn(A,B);
    WriteLn('LOS NUMEROS INGRESADOS SON A = ',A,' Y B = ',B);
    C := multiplicacionManual(A, B);
    WriteLn('EL RESULTADO DE A x B = ', C);
  end;
end.