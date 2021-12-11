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

for file in $(ls *.txt); do wc -l $file;  head -n1 $file | grep -o " " | wc -l; done

Respuesta de Gitbash:

(El primer número es las filas y el segundo es las columnas)

97 n1.txt
80
14 n10.txt
20
270 n11.txt
91
7 n12.txt
72
61 n13.txt
17
35 n14.txt
15
38 n15.txt
11
118 n16.txt
24
76 n17.txt
31
13 n18.txt
14
10 n19.txt
16
62 n2.txt
41
18 n20.txt
7
19 n21.txt
45
19 n22.txt
36
179 n23.txt
26
80 n24.txt
28
17 n25.txt
16
82 n26.txt
40
27 n27.txt
5
90 n28.txt
19
61 n29.txt
25
25 n3.txt
36
8 n30.txt
19
28 n31.txt
25
45 n32.txt
21
70 n33.txt
20
79 n34.txt
25
14 n35.txt
8
40 n36.txt
169
44 n37.txt
13
51 n38.txt
99
33 n39.txt
25
101 n4.txt
11
28 n40.txt
18
12 n41.txt
10
42 n42.txt
8
55 n43.txt
29
56 n44.txt
9
36 n45.txt
61
58 n46.txt
17
139 n47.txt
41
118 n48.txt
49
47 n49.txt
23
21 n5.txt
7
45 n50.txt
46
8 n51.txt
15
33 n52.txt
7
34 n53.txt
13
126 n54.txt
25
14 n55.txt
50
110 n56.txt
207
14 n57.txt
11
678 n58.txt
90
663 n59.txt
130
9 n6.txt
31
16 n7.txt
25
19 n8.txt
33
12 n9.txt
22

3. ¿Qué archivo tiene mayor cantidad de filas?
¿Qué archivo tiene mayor cantidad de columnas?

El archivo que tiene mayor cantidad de filas es el n58.txt con 678 filas

El archivo que tiene mayor cantidad de columnas es el n56.txt con 207 columnas





