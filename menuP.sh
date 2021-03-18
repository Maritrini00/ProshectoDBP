#!/bin/bash
opcion=$1

_agregarInfo(){
    echo
    read -p "Que quieres agregar?: " texto

    case "$opcion" in
        scrum)
            echo $texto >> scrum.inf
        ;;
        xp)
            echo $texto >> xp.inf
        ;;
        kanban)
            echo $texto >> kanban.inf
        ;;
        crystal)
            echo $texto >> crystal.inf
        ;;
        cascada)
            echo $texto >> cascada.inf
        ;;
        espiral)
            echo $texto >> espiral.inf
        ;;
        modelov)
            echo $texto >> modelov.inf
        ;;
        *)
            echo "opcion no valida"
        ;;
    esac
    echo
}

_buscar(){
    echo
    read -p "Que estás buscando? " coso
    case "$opcion" in
        scrum)
            grep $coso scrum.inf
        ;;
        xp)
            grep $coso xp.inf
        ;;
        kanban)
            grep $coso kanban.inf
        ;;
        crystal)
            grep $coso crystal.inf
        ;;
        cascada)
            grep $coso cascada.inf
        ;;
        espiral)
            grep $coso espiral.inf
        ;;
        modelov)
            grep $coso modelov.inf
        ;;
        *)
            echo "opcion no valida"
        ;;
    esac
    echo
}

_eliminarInfo(){
    echo
    read -p "Que eliminamos jefe? pero escriba bien, respete mayúsculas y acentos pls: " texto
    case "$opcion" in
        scrum)
            sed -i/$texto/d./scrum.inf
        ;;
        xp)
            sed -i /$texto/d ./xp.inf
        ;;
        kanban)
            sed -i /$texto/d ./kanban.inf
        ;;
        crystal)
            sed -i /$texto/d ./crystal.inf
        ;;
        cascada)
            sed -i /$texto/d ./cascada.inf
        ;;
        espiral)
            sed -i /$texto/d ./espiral.inf
        ;;
        modelov)
            sed -i /$texto/d ./modelov.inf
        ;;
        *)
            echo "opcion no valida"
        ;;
    esac
    echo
}

_leerBase(){
    case "$opcion" in
        scrum)
            cat scrum.inf
        ;;
        xp)
            cat xp.inf
        ;;
        kanban)
            cat kanban.inf
        ;;
        crystal)
            cat crystal.inf
        ;;
        cascada)
            cat cascada.inf
        ;;
        espiral)
            cat espiral.inf
        ;;
        modelov)
            cat modelov.inf
        ;;
        *)
            echo "opcion no valida"
        ;;
    esac
    echo
}

_menuChiquis(){
    echo
    echo "Usted esta en la sección ${opcion}, seleccione la opción que desea utilizar."
    echo
    echo "  1. Agregar información"
    echo "  2. Buscar"
    echo "  3. Eliminar Información"
    echo "  4. Leer base de información"
    echo
    read -p "selecciona un numero: " opc2

    case "$opc2" in
        1)
            _agregarInfo
        ;;
        2)
            _buscar
        ;;
        3)
            _eliminarInfo
        ;;
        4)
            _leerBase
        ;;
        *)
            echo "opcion no valida"
        ;;
    esac
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
    read -p "escribe la opcion (con letritas): " opcion

    _menuChiquis
}

_tradicionales(){
    echo "Bienvenido a la guía rápida de metodologías tradicionales"
    echo "Para continuar seleccione un tema"
    echo
    echo "  1. Cascada"
    echo "  2. Espiral"
    echo "  3. Modelo V"
    echo
    read -p "escribe la opcion (con letritas): " opcion

    _menuChiquis
}

if [ $# != 1 ]; then
    echo
	echo "Error: faltan parametros"
	exit 1
fi

if [ $opcion == "-a" ]; then
	_agile

elif [ $opcion == "-t" ]; then
    _tradicionales
fi
