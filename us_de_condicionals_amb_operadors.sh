#!/bin/bash

#Realitza un script que rebi un nombre enter per teclat i digui si és positiu o negatiu (c>
#Realitza un script que rebi un nombre enter per teclat i digui si és negatiu.
#Realitza un script que rebi un nombre enter per teclat i digui si és zero.

# Comprobar si el número es positivo, negativo o cero
if [ "$1" -gt 0 ]; then
    echo "$1 es positivo."
elif [ "$1" -lt 0 ]; then
    echo "$1 es negativo."
else
    echo "$1 es cero."
fi


