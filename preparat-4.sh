#!/bin/bash

#Fes un script que compti quants cops s’han establert connexions d’un determinat protocol >
# Per que funcioni fem primer: sudo apt-get install wireshark y apt install tshark

# Comprobar si se ha proporcionado un parámetro
if [ "$#" -eq 1 ]; then
    archivo=$1

    # Comprobar si el archivo existe
    if [ -f "$archivo" ]; then
        # Contar conexiones del protocolo TCP
        num_connexions_tcp=$(grep -c "TCP" "$archivo")

        # Contar conexiones del protocolo UDP
        num_connexions_udp=$(grep -c "UDP" "$archivo")

        echo "Connexions TCP: $num_connexions_tcp"
        echo "Connexions UDP: $num_connexions_udp"
    else
        echo "Error: El archivo $archivo no existe."
    fi
else
    echo "Error: Se espera 1 parámetro con la ruta del archivo de capturas."
fi


