

(*Escriba un programa que lea dos numeros y luego permita introducir una opcion, que puede
ser “suma”, “resta”, “multiplicacion” o “division”. A partir de estas entradas, segun la opcion elegida realizar el calculo.*)

program TP2Ej6;

(*DECLARACIONES*)

Var in1, in2, in3: Integer;

Var resultado: Real;

Var resultadoStr, resultadoStr2: ShortString;

(*FUNCIONES*)
function operar(a, b, c: Integer):Real;

var total: Real;

begin
  total := 0;
  case c of
    1: total := a + b;
    2: total := a - b;
    3: total := a * b;
    4: total := a / b;
  else
    WriteLn('(!!!) ERROR, OPERACION INVALIDA, SE RETORNA 0')
  end;
  operar := total;
end;

(*MAIN*)
begin
  while true do
  begin
    WriteLn('INGRESE DOS NUMEROs ENTEROS:');
    ReadLn(in1,in2);
    WriteLn('NUMEROS INGRESADOS: a = ',in1,'; b = ',in2);
    WriteLn('INGRESE EL NUMERO DE LA OPERACION QUE DESEA REALIZAR CON DICHOS NUMEROS');
    WriteLn('OPCIONES:');
    WriteLn('1) SUMAR (a + b)');
    WriteLn('2) RESTAR (a - b)');
    WriteLn('3) MULTIPLICAR (a * b)');
    WriteLn('4) DIVIDIR (a / b)');
    ReadLn(in3);

    str(in3, resultadoStr);
    resultado := operar(in1, in2, in3);
    str(resultado, resultadoStr2);

    WriteLn('La operacion ',resultadoStr,') con los valores ingresados resulto en: ', resultadoStr2);
  end;
end.