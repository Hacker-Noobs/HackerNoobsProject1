echo "Welcome fellow Linux user!"

#Checking whether wget is intalled"

if [[ ! $(ls ${PATH//:/ } | grep -w wget ) ]];then
	echo "Please install wget and relaunch the script"
	exit
fi

echo "enter a selection"
echo

#base url of Files

url="https://raw.githubusercontent.com/Hacker-Noobs/HackerNoobsProject1/master/Files/"

syllabus=$'#Syllabus

1  -  Regulations
2  -  Curriculum
3  -  Basics of Civil and Mechanical
4  -  Basics of Elecrical and electrical
5  -  Civil and Mechworkshop
6  -  C Programming
7  -  Electrical and Electronics Workshop
8  -  Engineering Graphics
9  -  Engineering Mechanics
10 -  Engineering Chemistry
11 -  Engineering Physics A
12 -  Engineering Physics B
13 -  Engineering Physics Lab
14 -  Linear Algebra
15 -  Vector Calculus
16 -  Life Skills
17 -  Professional Communication
'

echo "1 - Syllabus"
echo "2 - Subject"
echo 
echo -n "> "

read selection
if [[ $selection == 1 ]];then
	echo "$syllabus"
	echo "enter a selection"
	echo -n "> "
	read selection
	thing=$(echo "$syllabus" | grep -w $selection | cut -d '-' -f 2 | cut -d ' ' -f 3-)".pdf"
	url=$url"Syllabus/"$thing
	wget -q -N --show-progress "$url"
fi


