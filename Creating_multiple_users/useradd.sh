#! /bin/bash
## How to creating multiple users

if [ "$# = 0"] ; then
	echo "Usage: sh /$PWD/useradd.sh filename"
else if [ -f "$1" ]; then
	for i in `cat $1`; do
		useradd -s /bin/false $i;
	done
elso echo "File $1 Not Found"
fi
fi

