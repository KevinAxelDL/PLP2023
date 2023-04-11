(*Escriba un programa que permita leer un numero real y mostrar si es mayor,
menor o igual a cero, utilizando una funcion “mayor” que debe implementar.*)

Program TP2Ej4;

(*DECLARACION*)
var in1: Real;
var respuesta: ShortString;

(*FUNCTIONS*)
Function mayor(num: Real): String;

Var in1String, respuestaAux: String;

Begin
  Str(num, in1String);
  If num > 0 Then
    Begin
      respuestaAux := in1String + ' > 0';
    End
  Else
    Begin
      If num < 0 Then
        Begin
          respuestaAux := in1String + ' < 0';
        End
      Else
        Begin
          respuestaAux := in1String + ' = 0';
        End;
    End;
  mayor := respuestaAux;
End;


(*MAIN*)
Begin
  WriteLn('INGRESE UN NUMERO REAL:');
  ReadLn(in1);
  respuesta := mayor(in1);
  WriteLn('EL NUMERO INGRESADO ES ', in1, ' Y SU DESIGUALDAD CON RESPECTO AL 0 ES: ', respuesta);
End.