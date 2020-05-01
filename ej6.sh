num=`ls $1/*.txt | wc -l`

echo "Se han borrado $num archivos"

rm $1/*.txt

#La forma correcta de hacerlo sería la siguiente

rutaAnt=`pwd`
rutaBue=$rutaAnt/$1
cd $1
rutaAct=`pwd`

contador=0

if [ rutaBue = $rutaAct ]; then
	for i in `ls -l | grep .txt`; do
		rm $i
		contador=`expr $contador + 1`
	done
	echo "Se han borrado $contador ficheros"
else
		echo "El directorio no existe"
fi