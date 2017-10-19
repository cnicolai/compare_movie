#!/bin/bash

n=$((RANDOM%2+1))

if test $n = 1
then
	# mplayer -ss 0 -endpos 30 -really-quiet -nosound -geometry 1280x1417+0+0 -vf crop=1280:1417:0:0 $1
	# mplayer -ss 0 -endpos 30 -really-quiet -nosound -geometry 1280x1417+1417+0 -vf crop=1280:1417:0:0 $2
	mpv --end=30 --no-audio $1 --title=oben  --geometry=2560x720+0+0 &
	mpv --end=30 --no-audio $2 --title=unten --geometry=2560x720+0+720 &
	sleep 31
	echo "Oben: $1, Unten: $2"
else
	# mplayer -ss 0 -endpos 30 -really-quiet -nosound -geometry 1280x1417+0+0 -vf crop=1280:1417:0:0 $2
	# mplayer -ss 0 -endpos 30 -really-quiet -nosound -geometry 1280x1417+1417+0 -vf crop=1280:1417:0:0 $1
	mpv --end=30 --no-audio $2 --title=oben  --geometry=2560x720+0+0 &
	mpv --end=30 --no-audio $1 --title=unten --geometry=2560x720+0+720 &
	sleep 31
	echo "Oben: $2, Unten: $1"
fi
