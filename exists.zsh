FILE=/tmp/downloads
if [ -f "$File" ];
then
    echo "$File exists."
else
	echo "$File does not exist."
fi