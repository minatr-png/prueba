#Faltaría comprobar si pasa un parámetro o si el parámetro no es adecuado, en caso contrario damos un error

#INICIO DE CORRECIÓN

if [ $# -ne 1 ];
then
	echo "Error. Se requiere un valor "
	exit
fi

if [ $# -lt 1 ];
then
	echo "Error. El parametro debe se mayor o igual a 1"
	exit
fi

#FIN DE CORRECIÓN

for i in $(cat nombres.txt); do
	n=0	

	mkdir "$i"
	
	while [ $n -lt $1 ]; do

		n=$(($n+1))
		touch $i/"personal$n.txt"
		
	done

done
