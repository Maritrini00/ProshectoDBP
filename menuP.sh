#!/bin/bash
opcion=""
opcionSub=""
opcion3=""
echo "Menú Metdologías"
if[ $opcion = -a ];then
    echo "Bienvenido a la guía de Agile"
    echo "Para continuar seleccione un tema"
    echo "1. SCRUM"
    echo "2. X.P"
    echo "3. Kanban"
    echo "4. Crystal"
    read opcionSub
    case $opcionSub in
        SCRUM )
        echo "Usted esta en la sección ${opcionSub}, seleccione la opción que desea utilizar."
        echo "1. Agregar información"
        echo ""
