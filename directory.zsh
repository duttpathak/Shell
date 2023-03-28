#!/bin/bash

DIR=/tmp/downloads
if [ -d "$DIR" ];
then
    echo "$DIR directory exists."
else
	echo "$DIR directory does not exist."
fi