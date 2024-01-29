#!/bin/bash

# Crea un script que rebi la ruta d'un fitxer i indiqui si és un directori o fitxer i, en >

# Comprovar si s'ha proporcionat un paràmetre
if [ "$#" -eq 1 ]; then
    ruta=$1

    # Comprovar si l'objecte existeix
    if [ -e "$ruta" ]; then
        # Comprovar si és un directori
        if [ -d "$ruta" ]; then
            echo "$ruta és un directori."
        elif [ -f "$ruta" ]; then
            # Si és un fitxer, obtenir l'extensió
            extensio="${ruta##*.}"
            echo "$ruta és un fitxer i la seva extensió és .$extensio"
        else
            echo "$ruta no és ni un fitxer ni un directori."
        fi
    else
        echo "Error: L'objecte $ruta no existeix."
    fi
else
    echo "Error: S'espera 1 paràmetre amb la ruta del fitxer o directori."
fi


