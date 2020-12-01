#! /bin/bash
# cars.sh
# Dylan Inafuku

NUMBER=0
while echo "$NUMBER" | egrep -v "3" > /dev/null 2>&1
do
	echo -n "Type "1" to add a car, Type "2" to List the cars in the inventory file, Type "3" to Quit the program: "; read INPUT
 case "$INPUT" in
        "1") echo "Year: "
		read YEAR
	     echo "Make: "
		read MAKE
	     echo "Model: "
		read MODEL
	     echo "$YEAR:$MAKE:$MODEL" >> My_old_cars;;
        "2") sort My_old_cars;; 
        "3") echo "Goodbye";;
 esac
	NUMBER=$INPUT
done
