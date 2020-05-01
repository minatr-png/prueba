x=0
media=0

#Se puede hacer más fácil con awk dentro del for

#INICIO DE CORRECIÓN

suma=0
contador=0

for i in $(cat precipitaciones.txt | awk '{print $2}'); do
	
	suma=$((suma+i))
	contado=$((contador+1))

done

media=`echo "scale=2; $suma/$contador" | bc` #Se podí usar el método bc para conseguir las décimas

#for i in $(cat precipitaciones.txt); do
#	
#	x=$(($x+1))
#	div=$(($x%2))
#
#	if [ $div -eq 0 ]; then
#
#		media=$(($media+$i))
#
#	fi
#
#done
#
#x=$(($x/2))
#
#media=$(($media/x))

#FIN DE CORRECIÓN

echo "La media de precipitación es de $media"
