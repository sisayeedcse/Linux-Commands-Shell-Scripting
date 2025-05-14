#!/bin/bash

<<comment
THIS CODE WILL ASK FOR DIRECTORY NAME
AND REMOVE THAT DIRECTORY THEN SHOW THE LIST OF FILES
IT WILL ALSO HANDLE ERRORS
comment


echo "Please enter directory name to remove: "
read dname

remove_directory(){
	rm -r $dname
}

if ! remove_directory;then
	echo "There is no directory named $dname"
 	exit 1
fi

echo "Directory $dname removed"

show_list(){
	ls
}
show_list

