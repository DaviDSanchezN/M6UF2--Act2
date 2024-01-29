#!/bin/bash

#Fes un script que compti quants cops s’han establert connexions d’un determinat protocol >
# Per que funcioni fem primer: sudo apt-get install wireshark y apt install tshark

# Comprovar si s'ha proporcionat un paràmetre
if [ "$#" -eq 1 ]; then
    arxiu=$1

    # Comprovar si l'arxiu existeix
    if [ -f "$arxiu" ]; then
        # Comptar connexions del protocol TCP
        num_connexions_tcp=$(tshark -r "$arxiu" -Y "tcp" | wc -l)

        # Comptar connexions del protocol UDP
        num_connexions_udp=$(tshark -r "$arxiu" -Y "udp" | wc -l)

        echo "Connexions TCP: $num_connexions_tcp"
        echo "Connexions UDP: $num_connexions_udp"
    else
        echo "Error: L'arxiu $arxiu no existeix."
    fi
else
    echo "Error: S'espera 1 paràmetre amb la ruta de l'arxiu de captures."
fi


