#! /bin/zsh

set -x       #Enabling the Debugging
echo "foo"
set +x       #Disabling the Debugging

echo "bar"

#! /bin/zsh
# read -p "Enter the input: " val
# zero_val=0
# set -x
# if [ "$val" -gt "$zero_val" ]
# then
#    echo "Positive number entered."
# else
#    echo "The input value is not positive."
# fi
# set +x
# echo "Script Ended"