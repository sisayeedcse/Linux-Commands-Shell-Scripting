echo "Enter your number: "
read num

if [[ $num -ge 80 && $num -lt 101 ]]; then
    echo "You Got A+"
elif [[ $num -ge 70 && $num -lt 80 ]]; then
    echo "You Got A"
elif [[ $num -ge 60 && $num -lt 70 ]]; then
    echo "You Got B"
elif [[ $num -ge 50 && $num -lt 60 ]]; then
    echo "You Got C"
elif [[ $num -ge 33 && $num -lt 50 ]]; then
    echo "You Got D"
elif [[ $num -lt 33 && $num -ge 0 ]]; then
    echo "Sorry You failed, better luck next time"
else
    echo "Please Enter a valid number to see result"
fi
