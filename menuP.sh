#!/bin/bash
opcion=$1

_backToMenu(){
	echo
	read -p "Presione 1 para volver al menu anterior o 2 para finalizar la ejecucion: " des
	
	case "$des" in
		1)
		   _menuChiquis
		;;
		2)
		   exit 0
		;;
	esac

}

_agregarInfo(){
    echo
    read -p "Que quieres agregar?: " texto

    case "$metod" in
        scrum)
            echo $texto >> scrum.inf
            _backToMenu
        ;;
        xp)
            echo $texto >> xp.inf
            _backToMenu
        ;;
        kanban)
            echo $texto >> kanban.inf
            _backToMenu
        ;;
        crystal)
            echo $texto >> crystal.inf
            _backToMenu
        ;;
        cascada)
            echo $texto >> cascada.inf
            _backToMenu
        ;;
        espiral)
            echo $texto >> espiral.inf
            _backToMenu
        ;;
        modelov)
            echo $texto >> modelov.inf
            _backToMenu
        ;;
        *)
            echo "opcion no valida"
            _backToMenu
        ;;
    esac
    echo
}

_buscar(){
    echo
    read -p "Que estás buscando? " coso
    case "$metod" in
        scrum)
            grep $coso scrum.inf
            _backToMenu
        ;;
        xp)
            grep $coso xp.inf
            _backToMenu
        ;;
        kanban)
            grep $coso kanban.inf
            _backToMenu
        ;;
        crystal)
            grep $coso crystal.inf
            _backToMenu
        ;;
        cascada)
            grep $coso cascada.inf
            _backToMenu
        ;;
        espiral)
            grep $coso espiral.inf
            _backToMenu
        ;;
        modelov)
            grep $coso modelov.inf
            _backToMenu
        ;;
        *)
            echo "opcion no valida"
            _backToMenu
        ;;
    esac
    echo
}

_eliminarInfo(){
    echo
    read -p "Que eliminamos jefe? pero escriba bien, respete mayúsculas y acentos pls: " texto
    case "$metod" in
        scrum)
            sed -i /$texto/d ./scrum.inf
            _backToMenu
        ;;
        xp)
            sed -i /$texto/d ./xp.inf
            _backToMenu
        ;;
        kanban)
            sed -i /$texto/d ./kanban.inf
            _backToMenu
        ;;
        crystal)
            sed -i /$texto/d ./crystal.inf
            _backToMenu
        ;;
        cascada)
            sed -i /$texto/d ./cascada.inf
            _backToMenu
        ;;
        espiral)
            sed -i /$texto/d ./espiral.inf
            _backToMenu
        ;;
        modelov)
            sed -i /$texto/d ./modelov.inf
            _backToMenu
        ;;
        *)
            echo "opcion no valida"
            _backToMenu
        ;;
    esac
    echo
}

_leerBase(){
    case "$metod" in
        scrum)
            cat scrum.inf
            _backToMenu
        ;;
        xp)
            cat xp.inf
            _backToMenu
        ;;
        kanban)
            cat kanban.inf
            _backToMenu
        ;;
        crystal)
            cat crystal.inf
            _backToMenu
        ;;
        cascada)
            cat cascada.inf
            _backToMenu
        ;;
        espiral)
            cat espiral.inf
            _backToMenu
        ;;
        modelov)
            cat modelov.inf
            _backToMenu
        ;;
        *)
            echo "opcion no valida"
            _backToMenu
        ;;
    esac
    echo
}

_menuChiquis(){
    echo
    echo "Usted esta en la sección ${metod}, seleccione la opción que desea utilizar."
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
            _backToMenu
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
    echo "  5. Ir a metodologias tradicionales"
    echo
    read -p "escribe la opcion (con letritas, a menos que sea la opcion 5): " metod

    if [ "$metod" == '5' ]; then
    	_tradicionales
    else
    	_menuChiquis
    fi
}

_tradicionales(){
    echo "Bienvenido a la guía rápida de metodologías tradicionales"
    echo "Para continuar seleccione un tema"
    echo
    echo "  1. Cascada"
    echo "  2. Espiral"
    echo "  3. Modelo V"
    echo "  4. Ir a metodologias agiles"
    echo
    
    read -p "escribe la opcion (con letritas, a menos que sea la opcion 4): " metod
    
    if [ "$metod" == '4' ]; then
    	_agile
    else
    	_menuChiquis
    fi
}

if [ $# != 1 ]; then
	echo "Error: debes agregar un solo parametro"
	exit 1
elif [ $opcion == "-a" ]; then
	_agile
elif [ $opcion == "-t" ]; then
    _tradicionales
else
    echo "Error: parametro no valido"
fi
