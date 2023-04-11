
(* Dado el radio R de una esfera, escriba un programa que permita calcular e 
imprimir su superficie y su volumen. Utilice un solo procedimiento para realizar 
todos estos calculos. Justifique la eleccion entre usar una funcion o un procedimiento*)

(* NOTA: Dado que los procedimientos no retornan un valor al programa principal y dado que no
es conveniente "imprimir" desde un modulo (ya sea funcion o procedimiento), en este caso,
es conveniente usar una funcion y retornar ambos valores dentro de un arreglo, dada la restriccion
del enunciado*)

program TP2Ej3;

(*TIPOS*)
type arregloResulados = array [1..2] of Real;

(*DECLARACION*)
var in1: Real;
var arResultados: arregloResulados;
var arResultadosAux: arregloResulados;
var superficieEsfera, volumenEsfera: Real; 


(*FUNCIONES*)
Function calularSuperficieYVolumen(radio :Real): arregloResulados;
Begin
  superficieEsfera := 4*pi*radio*(2*2);
  arResultadosAux[1] := superficieEsfera;
  volumenEsfera := (4/3)*pi*(radio*radio*radio);
  arResultadosAux[2] := volumenEsfera;
  calularSuperficieYVolumen := arResultadosAux;
End;

Begin
  WriteLn('INGRESE EL RADIO DE LA ESFERA: ');
  ReadLn(in1);
  WriteLn('RADIO: ',in1);
  arResultados := calularSuperficieYVolumen(in1);
  WriteLn('SUPERFICIE: ', arResultados[1]);
  WriteLn('VOLUMEN: ', arResultados[2]);
End.