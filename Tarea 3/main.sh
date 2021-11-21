#!/bin/bash
#
echo $(date)

opc=0
opcion(){
	echo
	echo -----------------------------------
	echo "          Menú principal           "
	echo -----------------------------------
	echo '1)Detectar equipos activos en la red'
	echo '2)Escaner de puertos'
	echo '3)Información del sistema'
	echo '4)Salir'
	echo ¿Qué opción quieres ejecutar?
	read opc
}
opcion
until [ $opc == 4 ]
do
	case $opc in
	1)
		bash netdiscover.sh
		opcion
		;;
	2)
		echo Ip a consultar:
		read ip
		bash portscan1.sh $ip
		opcion
		;;
	3)
		bash info_user.sh
		opcion
		;;
	4)
		exit
		;;
	*)
		echo Variable no reconocida, seleccione una del menú por favor.
		opcion
		;;
	esac
done

