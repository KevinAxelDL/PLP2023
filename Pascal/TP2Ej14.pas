(* Contar la cantidad de letras de un telegrama que termina en punto (los textos se
leen letra por letra). Modifique el algoritmo para contar la cantidad de palabras*)

program TP2Ej14;

var archivo: TextFile;
var unaLinea: WideString;

begin
  Assign(archivo,'TP2Ej14-texto');
  Reset(archivo); (* Abre el archivo*)
   
  while not Eof do
  begin
    ReadLn(archivo, unaLinea);
    WriteLn(unaLinea);

  end;
end.

(*NOTA: Error actual -> Runtime error 2*)