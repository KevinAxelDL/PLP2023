Program TP2Ej1;

Var a , b , c , d , s :   integer ;

Function alfa ( e : integer ; Var f : integer ) :   integer ;
Begin
  (* "e" representa un pasaje de valor, no de referencia, por eso el valor de "b" NO cambia luego de la ejecucion de la funcion*)
  e := 1;
  (* "f" representa un pasaje de referencia, no de valor, por eso el valor de "c" cambia luego de la ejecucion de la funcion*)
  f := 2;
  (*Valor retornado*)
  alfa := e + f ;
End;

Begin
  b := 10;
  c := 20;
  d := b + c ;
  WriteLn('-----------------------------------------------------');
  WriteLn('RESULTADO d: ', d);
  a := alfa (b , c ) ;
  (* c ahora es c := 2 *)
  s := b + c ;
  WriteLn('RESULTADO a: ', a);
  WriteLn('RESULTADO s: ', s);
  WriteLn('-----------------------------------------------------');
End .
