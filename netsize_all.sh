cd ../
cd Ikiam/SextoSemestre/Bioinformática/CSB/unix/data/Saavedra2013/

echo "Escriba un guión que imprima el número de filas y columnas para cada red:

Primero se llamó a la carpeta que contiene los datos del ejercicio, para esto se utilizó el comando "for", 
luego se usó el comando "do" para indicar lo que queremos hacer. 
Se utilizó el comando wc -l para  contar el número de filas y el comando head para contar el número de columnas. 
Después se hizo uso del comando grep que sirve para buscar una palabra o patrón e imprimirá las líneas que la contengan. 
Por último colocamos done para terminar la orden."

for file in $(ls *.txt); do wc -l $file;  head -n2 $file | grep -o " " | wc -l; done


echo "(El primer número es las filas y el segundo es las columnas)"

