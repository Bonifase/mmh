#!/bin/bash

# A simple menu:
# time= 
while true; do
    echo " "
    echo "Reply with a number" 
    echo " 1. Say hello"
    echo " 2. Ask for my name"
    echo " 3. Ask for my time"
    echo " 4. Say good-bye"
    echo " "
    read -p "Your Response: " response 
    echo 
    case $response in
        1) echo 'Hello there!' ;;
        2) echo 'My name is Somebody' ;;
        3) echo "The time is $time" ;;
        4) echo 'See you later!'; break ;;
        *) echo 'What was that?' ;;
    esac
done