if [ $# != 1  ]
then
	echo "Usage: q3-sort.sh <file>"
elif [ ! -f "$1" ]
then
	echo "$1 does not exist"
else
	#get filename without extension
	name=$(basename ${1%.*})
	
	#do name based sort
	sort $1 -r > "alpha-${name}.txt"
	
	#do month based sort
	sort $1 -t ";" -M -k 3 -r > "date-${name}.txt"
fi
