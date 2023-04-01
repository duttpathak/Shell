#! /bin/zsh

set -x       #Enabling the Debugging
echo "foo"
set +x       #Disabling the Debugging

echo "bar"

# _DEBUG="on"
# function DEBUG()
# {
#  [ "$_DEBUG" == "on" ] &&  $@
# }

# DEBUG echo 'Reading files'
# for i in *
# do
#   grep 'something' $i > /dev/null
#   [ $? -eq 0 ] && echo "Found in $i file"
# done
# DEBUG set -x
# a=2
# b=3
# c=$(( $a + $b ))
# DEBUG set +x
# echo "$a + $b = $c"