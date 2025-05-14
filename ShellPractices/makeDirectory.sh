#!/bin/bash


<<comment
This code will make a directory and Show the files list
Also handles error
comment

echo "Enter Directory name: "
read dname

create_directory(){
	mkdir $dname
}
if ! create_directory;then
	echo"This directory is already created! Please rename"
fi

echo "Directory created named: $dname"

show_list(){
	ls
}
show_list
