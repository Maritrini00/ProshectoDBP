#!/bin/bash
opcion=$1
# opcionSub=""
# opcion3=""
# echo "Menú Metdologías"

_agile(){
    echo "Bienvenido a la guía rápida de Agile"
    echo "Para continuar seleccione un tema"
    echo
    echo "  1. SCRUM"
    echo "  2. X.P"
    echo "  3. Kanban"
    echo "  4. Crystal"
    echo
    read -p "selecciona una opcion: " opcion

    case "$opcion" in
        1)
            echo "SCRUM"
        ;;
        2)
            echo "X.P"
        ;;
        3)
            echo "Kanban"
        ;;
        4)
            echo "Crystal"
        ;;
        *)
            echo "default"
        ;;
    esac
    
}

_tradicionales(){
    echo "Bienvenido a la guía rápida de metodologías tradicionales"
    echo "Para continuar seleccione un tema"
    echo
    echo "  1. Cascada"
    echo "  2. Espiral"
    echo "  3. Modelo V"
    echo
    read -p "selecciona una opcion: " opcion

    case "$opcion" in
        1)
            echo "Cascada"
        ;;
        2)
            echo "Espiral"
        ;;
        3)
            echo "Modelo V"
        ;;
        *)
            echo "default"
        ;;
    esac
    
}

if [ $# != 1 ]; then
    echo "Error: faltan parametros"
    exit 1
fi

if [ $opcion = "-a" ]; then
    _agile
elif [ $opcion = "-t" ]; then
    _tradicionales
    # case $opcionSub in
    #     SCRUM )
    #     echo "Usted esta en la sección ${opcionSub}, seleccione la opción que desea utilizar."
    #     echo "1. Agregar información"
    #     echo ""
fi