# Tarea-1_Unix_Git
Se resuelve el ejercicio 1.10.3 Plant-Pollinator Networks de la materia de bioinformática
 #  Universidad Regional Amazónica Ikiam  
## Bioinformática - Tarea 1
*Culcay García Mishelle Nathaly*

1.10.3 Redes de plantas y polinizadores

Saavedra y Stouffer (2013) estudiaron varias redes planta-polinizador.

Estos se pueden representar como matrices rectangulares donde las filas se polli-
nativos, las columnas plantas, un 0 indica la ausencia y 1 la presencia de una
interacción entre la planta y el polinizador.
Los datos de Saavedra y Stouffer (2013) se pueden encontrar en el directorio
CSB / unix / data / Saavedra2013.

1. Escriba un guión que tome uno de estos archivos y determine el número
de filas (polinizadores) y columnas (plantas). Tenga en cuenta que las columnas están separadas
por espacios y que hay un espacio al final de cada línea.

Primero se ubica la carpeta con los datos, se utilizó el comando cd hasta encontrarme en la carperta Saavedra2013
En la carpeta se elige un archivo del cual se determinará las filas y las columnas.

Archivo elegido: n2.txt

- Filas:

Se utilizó el comando wc -l el cual sirve para contar las líneas, es decir filas, del archivo

wc -l n2.txt

Respuesta de Gitbash:

62 n2.txt

Hay 62 filas en el archivo n2.txt

- Columnas:

Se utilizó el comando head -n 1 n2.txt para obtener la primera línea:

head -n 1 n2.txt

Respuesta del Gitbash:

0 1 1 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0

Para contar las columnas se utilizó el comando tr, y el comando wc -c que nos servirá para contar el número de columnas:

head -n 1 n2.txt | tr -d '   '   | tr -d ' \ n '   | wc -c

Respuesta de Gitbash:

42

Hay 42 columnas en el archivo n2.txt

2. Escriba un guión que imprima el número de filas y columnas para cada red:

Primero se llamó a la carpeta que contiene los datos del ejercicio, para esto se utilizó el comando "for", 
luego se usó el comando "do" para indicar lo que queremos hacer. 
Se utilizó el comando wc -l para  contar el número de filas y el comando head para contar el número de columnas. 
Después se hizo uso del comando grep que sirve para buscar una palabra o patrón e imprimirá las líneas que la contengan. 
Por último colocamos done para terminar la orden. 

for file in $(ls *.txt); do wc -l $file;  head -n2 $file | grep -o " " | wc -l; done

Respuesta de Gitbash:

(El primer número es las filas y el segundo es las columnas)

97 n1.txt
160
14 n10.txt
40
270 n11.txt
182
7 n12.txt
144
61 n13.txt
34
35 n14.txt
30
38 n15.txt
22
118 n16.txt
48
76 n17.txt
62
13 n18.txt
28
10 n19.txt
32
62 n2.txt
82
18 n20.txt
14
19 n21.txt
90
19 n22.txt
72
179 n23.txt
52
80 n24.txt
56
17 n25.txt
32
82 n26.txt
80
27 n27.txt
10
90 n28.txt
38
61 n29.txt
50
25 n3.txt
72
8 n30.txt
38
28 n31.txt
50
45 n32.txt
42
70 n33.txt
40
79 n34.txt
50
14 n35.txt
16
40 n36.txt
338
44 n37.txt
26
51 n38.txt
198
33 n39.txt
50
101 n4.txt
22
28 n40.txt
36
12 n41.txt
20
42 n42.txt
16
55 n43.txt
58
56 n44.txt
18
36 n45.txt
122
58 n46.txt
34
139 n47.txt
82
118 n48.txt
98
47 n49.txt
46
21 n5.txt
14
45 n50.txt
92
8 n51.txt
30
33 n52.txt
14
34 n53.txt
26
126 n54.txt
50
14 n55.txt
100
110 n56.txt
414
14 n57.txt
22
678 n58.txt
180
663 n59.txt
260
9 n6.txt
62
16 n7.txt
50
19 n8.txt
66
12 n9.txt
44






