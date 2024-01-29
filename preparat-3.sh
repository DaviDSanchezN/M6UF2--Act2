#!/bin/bash

# Realitza un script que rebi la ruta d'un directori a comprimir i el nom de l’arxiu tarba>

# Comprovar si s'han proporcionat els paràmetres correctes
if [ "$#" -eq 2 ]; then
    directori=$1
    tarball=$2

    # Comprovar si el directori existeix
    if [ -d "$directori" ]; then
        # Crear l'arxiu tarball
        tar -czf "$tarball" -C "$(dirname "$directori")" "$(basename "$directori")"
        echo "Arxiu tarball creat amb èxit: $tarball"
    else
        echo "Error: El directori $directori no existeix."
    fi
else
    echo "Error: S'esperen 2 paràmetres - la ruta del directori i el nom de l'arxiu tarbal>
fi

