#!/bin/bash

while true; do

echo "enter some text"
read text

if [[ -n $text ]]; then
        echo "you entered: $text"
        exit 0
else
        echo "you didn't enter anything!"
fi

done

