
a=$1
b=$3

if [ $2 == '+' ]; then
	resultat=$(($a+$b))
	echo $resultat
elif [ $2 == 'x' ]; then
	resultat=$(($a*$b))
	echo $resultat
elif [ $2 == '-' ]; then
	resultat=$(($a-$b))
	echo $resultat
elif [ $2 == '÷' ] || [ $2 == '/' ]; then
	resultat=$(($a/$b))
	echo $resultat
fi
