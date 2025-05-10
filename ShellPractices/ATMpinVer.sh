
#!/bin/bash

echo "Please enter your valid ATM Pin: "
read pin

for i in {1..3}
do
    if [[ $pin == 1234 ]]; then
        echo "You've entered the correct Pin"
        exit 0
    else
        echo "Incorrect Pin. Please try again."
        if [ $i -lt 3 ]; then
            echo "You have $(expr 3 - $i) attempts remaining."
            read pin
        fi
    fi
done

echo "Too many incorrect attempts. Access denied."
