#!/bin/bash
PRE_IFS=$IFS
IFS=$'\n'
rm result.txt
touch result.txt
cat test.txt | while read line
do
	echo "$line" >> result.txt
	echo "$line" | java -jar Alterego.jar | sed -n '1p' >> result.txt
#echo "$line" | java -jar Archer.jar   | sed -n '1p' >> result.txt
	echo "$line" | java -jar Archer.jar   | awk 'NR==1{print}' >> result.txt
#echo "" >> result.txt
#echo "$line" | java -jar Assassin.jar | sed -n '1p' >> result.txt
	echo "$line" | java -jar Assassin.jar | awk 'NR==1{print}' >> result.txt
#	echo "" >> result.txt
	echo "$line" | java -jar Berserker.jar | sed -n '1p' >> result.txt
	echo "$line" | java -jar Caster.jar | sed -n '1p' >> result.txt
	echo "$line" | java -jar Lancer.jar | sed -n '1p' >> result.txt
	echo "$line" | java -jar Saber.jar | sed -n '1p' >> result.txt
done
cat result.txt | while read lineIn
do
	read line1
	read line2
	read line3
	read line4
	read line5
	read line6
	read line7
	echo "$lineIn"
	echo "Alterego:"
	python diff.py $lineIn $line1
	echo "Archer:"
	python diff.py $lineIn $line2
	echo "Assassin:"
	python diff.py $lineIn $line3
	echo "Berserker:"
	python diff.py $lineIn $line4
	echo "Caster:"
	python diff.py $lineIn $line5
	echo "Lancer:"
	python diff.py $lineIn $line6
	echo "Saver:"
	python diff.py $lineIn $line7
done
IFS=$PRE_IFS
