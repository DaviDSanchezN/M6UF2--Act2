#!/bin/bash

# Escriu un script que rebi la ruta d'un fitxer i indiqui els permisos que té (escrip>

# Comprovar si s'ha proporcionat un paràmetre
if [ "$#" -eq 1 ]; then
    ruta=$1

    # Comprovar si el fitxer existeix
    if [ -e "$ruta" ]; then
        # Obtenir els permisos del fitxer
        permisos=$(stat -c "%A" "$ruta")

        # Imprimir els permisos
        echo "Els permisos del fitxer $ruta són: $permisos"
    else
        echo "Error: El fitxer $ruta no existeix."
    fi
else
    echo "Error: S'espera 1 paràmetre amb la ruta del fitxer."
fi

