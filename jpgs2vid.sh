#!/bin/bash
 
FRAMERATE=8

cat *.JPG | ffmpeg -f image2pipe -r $FRAMERATE -vcodec mjpeg -i - -vcodec libxvid out_$FRAMERATE.avi
