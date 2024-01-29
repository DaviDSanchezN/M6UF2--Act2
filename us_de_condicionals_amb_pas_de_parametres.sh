#!/bin/bash

# Escriu un script que comprovi si el nombre de paràmetres introduït és igual a 3. En el c>

# Comprovar si el nombre de paràmetres és igual a 3
if [ "$#" -eq 3 ]; then
    echo "Nombre de paràmetres correcte."
else
    echo "Error: S'esperen 3 paràmetres. Exemple: $0 param1 param2 param3"
fi
