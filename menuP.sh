#!/bin/bash
opcion=$1
#opcionSub=""
#opcion3=""
#echo "Menú Metdologías"

_agregarInfo(){}
_buscar(){}
_leerBase(){}
_eliminarInfo(){}


_menuChiquis(){
    echo "Usted esta en la sección ${opcion}, seleccione la opción que desea utilizar."
    echo "1. Agregar información"
    echo "2. Buscar"
    echo "3. Eliminar Información"
    echo "4. Leer base de información"
    read -p "selecciona una opcion: " opc2
}

_agile(){
    echo "Bienvenido a la guía rápida de Agile"
    echo "Para continuar seleccione un tema"
    echo
    echo "  1. SCRUM"
    echo "  2. XP"
    echo "  3. Kanban"
    echo "  4. Crystal"
    echo
    read -p "selecciona una opcion: " opcion

    case "$opcion" in
        scrum)
            echo "SCRUM"
            _menuChiquis
        ;;
        xp)
            echo "X.P"
            _menuChiquis
        ;;
        kanban)
            echo "Kanban"
            _menuChiquis
        ;;
        crystal)
            echo "Crystal"
            _menuChiquis
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
        cascada)
            echo "Cascada"
            _menuChiquis
        ;;
        espiral)
            echo "Espiral"
            _menuChiquis
        ;;
        modelov)
            echo "Modelo V"
            _menuChiquis
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

if [ $opcion == "-a" ]; then
	_agile

elif [ $opcion == "-t" ]; then
    _tradicionales
fi
