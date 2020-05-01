#Falta un contador de pares e impares que se sumaría en cada vuelta del for según fuera par o impar

pares=""
impares=""

for i in $(cat numeros.txt); do

	divi=$(($i%2))

	if [ $divi -eq 0 ]; then

	pares="$pares $i"
	
	else

	impares="$impares $i"
	
	fi

done

echo "Pares:$pares"
echo "Impares:$impares"
