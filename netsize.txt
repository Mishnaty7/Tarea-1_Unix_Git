cd ../
cd Ikiam/SextoSemestre/Bioinformática/CSB/unix/data/Saavedra2013/

echo "Escriba un guión que tome uno de estos archivos y determine el número de filas (polinizadores) y columnas (plantas). Tenga en cuenta que las columnas están separadas por espacios y que hay un espacio al final de cada línea.
Primero se ubica la carpeta con los datos, se utilizó el comando cd hasta encontrarme en la carperta Saavedra2013 En la carpeta se elige un archivo del cual se determinará las filas y las columnas.

Archivo elegido: n2.txt

Filas:
Se utilizó el comando wc -l el cual sirve para contar las líneas, es decir filas, del archivo"

wc -l n2.txt

echo "Columnas:
Se utilizó el comando head -n 1 n2.txt para obtener la primera línea:"

head -n 1 n2.txt

echo "Para contar las columnas se utilizó el comando tr, y el comando wc -c que nos servirá para contar el número de columnas:"

head -n 1 n2.txt | tr -d ' ' | tr -d ' \ n ' | wc -c

