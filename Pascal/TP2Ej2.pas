
(* 2. Escriba en el lenguaje de programacion Pascal un programa que permita leer
dos numeros (por teclado) y que imprima (con cartel y valores): *)
Program TP2Ej2;

Var in1, in2, res: Integer;

Function suma(a : Integer; b :Integer): Integer;
Begin
  suma := a + b;
End;

Begin
  WriteLn('INGRESE UN NUMERO ENTERO:');
  ReadLn(in1);
  WriteLn('INGRESE OTRO NUMERO ENTERO:');
  ReadLn(in2);
  res := suma(in1, in2);
  WriteLn('LA SUMA DE ', in1,' Y ',in2,' ES: ', res);
End.