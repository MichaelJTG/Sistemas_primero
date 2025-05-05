#!/bin/bash
echo "Michael telleria guadalajara 1ro de DAM actividad 4"
echo "busqueda.."

read -p "Nombre del fichero..." $fich1

read -p "Nombre del archivo.txt ..." $txt

read -p "Palabra que deseas buscar.." $op1

grep -in "$op1" "$txt" > SALIDA.txt

echo "ESO ES TODO AMIGOOO!!
