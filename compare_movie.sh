#!/bin/bash

n=$((RANDOM%2+1))

if test $n = 1
then
	# mplayer -ss 0 -endpos 30 -really-quiet -nosound -geometry 1280x1417+0+0 -vf crop=1280:1417:0:0 $1
	# mplayer -ss 0 -endpos 30 -really-quiet -nosound -geometry 1280x1417+1417+0 -vf crop=1280:1417:0:0 $2
	mpv --end=30 --no-audio $1 --title=links  --geometry=1280x1440+0+0 &
	mpv --end=30 --no-audio $2 --title=rechts --geometry=1280x1440+1280+0 &
	sleep 31
	echo "Left: $1, Right: $2"
else
	# mplayer -ss 0 -endpos 30 -really-quiet -nosound -geometry 1280x1417+0+0 -vf crop=1280:1417:0:0 $2
	# mplayer -ss 0 -endpos 30 -really-quiet -nosound -geometry 1280x1417+1417+0 -vf crop=1280:1417:0:0 $1
	mpv --end=30 --no-audio $2 --title=links  --geometry=1280x1440+0+0 &
	mpv --end=30 --no-audio $1 --title=rechts --geometry=1280x1440+1280+0 &
	sleep 31
	echo "Left: $2, Right: $1"
fi
