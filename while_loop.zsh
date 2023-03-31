#!/bin/bash


counter=1 #initialise the variable counter with it's starting value.
while [ $counter -le 10 ] #counter is less than or equal to 10
do
    echo $counter #Here echo is being used as it's an easy way to illustrate what is going on.
    ((counter++)) #Using the double brackets we can increase the value of counter by 1.
done #We're at the bottom of the loop so go back to line 5 and perform the test again.

echo ALL done 