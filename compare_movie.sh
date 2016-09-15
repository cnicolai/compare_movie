#!/bin/bash

n=$((RANDOM%2+1))

if test $n = 1
then
	mplayer -really-quiet -nosound -geometry 1280x1417+0+0 -vf crop=1280:1417:0:0 $1 &
	mplayer -really-quiet -nosound -geometry 1280x1417+1417+0 -vf crop=1280:1417:0:0 $2 &
	sleep 32
	echo "Left: $1, Right: $2"
else
	mplayer -really-quiet -nosound -geometry 1280x1417+0+0 -vf crop=1280:1417:0:0 $2 &
	mplayer -really-quiet -nosound -geometry 1280x1417+1417+0 -vf crop=1280:1417:0:0 $1 &
	sleep 32
	echo "Left: $2, Right: $1"
fi

