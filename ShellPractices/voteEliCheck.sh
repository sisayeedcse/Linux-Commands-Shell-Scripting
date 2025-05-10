echo "Please Enter your age: "
read age

if [[ $age -lt 18 ]];then
	echo"You are not eligible for voting"
else
	echo "You are eligible for voting"
fi
