echo "Welcome fellow Linux user!"

#Checking whether wget is intalled"

if [[ ! $(ls ${PATH//:/ } | grep -w wget ) ]];then
	echo "Please install wget and relaunch the script"
	exit
fi

echo "enter a selection"
echo

syllabus="../Files/Syllabus/syllabus.txt"

echo "1 - Syllabus"
echo "2 - Subject"
echo 
echo -n "> "

read selection
if [[ $selection == 1 ]];then
	cat $syllabus
	echo "enter a selection"
	echo -n "> "
	read selection
	thing=$(grep -w $selection $syllabus| cut -d '-' -f 2 | cut -d ' ' -f 3-)".pdf"
	echo $thing
fi

