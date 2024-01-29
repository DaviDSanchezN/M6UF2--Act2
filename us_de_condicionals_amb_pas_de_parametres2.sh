#!/bin/bash

#Escriu un script que rebi la ruta d'un fitxer i indiqui si existeix.

# Comprovar si s'ha proporcionat un paràmetre
if [ "$#" -eq 1 ]; then
    ruta=$1

    # Comprovar si el fitxer existeix
    if [ -e "$ruta" ]; then
        echo "El fitxer $ruta existeix."
    else
        echo "Error: El fitxer $ruta no existeix."
    fi
else
    echo "Error: S'espera 1 paràmetre amb la ruta del fitxer."
fi

