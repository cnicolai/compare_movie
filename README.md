# compare_movie
Shell script to compare quality of two movie files (playback using mplayer).
A 30 second excerpt of the movie files will be played side by side, the position of the files (left or right) will be random and revealed after playback.
The input movie files are assumed to be of at least fifteen minute length.

# Usage
On Mac OS X:

1. Make executable by ```chmod a+x compare_movie.sh```
2. Use ```./compare_movie.sh file1 file2``` to compare file1 and file2

Note: You might have to adjust the screen resolution to fit your setup. Automatic detection of resolution could be a reasonable improvement.
