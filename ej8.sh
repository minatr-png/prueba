num=0
lista="Las ips que existen son:"

for i in `seq 1 254`; do

	p=`ping -c 1 10.0.2.$i | grep -c "1 received"` #Sería mejor `ping -c 1 10.0.2.$i | grep received | awk '{print $4}'` Haciendolo de esta forma haría falta que el if fuera [ $p -gt 0 ]

	if [ $p -eq 1 ]; then

		num=$(($num+1))
		lista="$lista 10.0.2.$i"

	fi

done

echo $lista
