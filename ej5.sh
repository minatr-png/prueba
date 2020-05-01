windows=0
linux=0
pwin=0
plin=0
x=0

#Se haría mucho más fácil con awk

#INICIO DE CORRECIÓN

maximo=`cat listado.txt | wc`

while [ $contado - le $maximo ]; do

	linea=`cat listado.txt | head -${contador} | tail -l`
	sistema=`cat listado.txt | awk '{print $2}'`
	valor=`cat listado.txt | awk '{print $3}'`
	
	if [ $sistema = "Linux" ]; then
		linux=$((linux+1))
		plin=$((plin+valor))
	elif
		windows=$((windows+1))
		pwin=$((pwin+valor))
	fi

done

#for i in $(cat listado.txt); do
#	
#	x=$(($x+1))
#	div=$(($x%3))
#
#	if [ $div -eq 0 ]; then
#
#		if [ $sistema == "Linux" ]; then
#
#			linux=$(($linux+1))
#			plin=$(($plin+$i))
#		
#		else
#	
#			windows=$(($windows+1))
#			pwin=$(($pwin+$i))
#
#		fi
#
#	else
#
#		sistema=$i
#
#	fi
#
#done

#FIN DE CORRECIÓN

echo "Linux-> $linux $plin"
echo "Windows-> $windows $pwin"
