#!/usr/bin/bash

lista_tdevs() {
    cat tdevs 
}

formato='{\"{#TDEV}\": \"%s\"}'
gera_tdev_descoberto() {
    printf "$formato" $1
}

descobre() {
#    sep="tdevs.discovery [s|["
    sep="["
    lista_tdevs |\
    while read tdev; do
        jtdev=$(gera_tdev_descoberto $tdev)
        echo -n $sep$jtdev
        sep=","
    done
    echo -n "]"
}

descobre
