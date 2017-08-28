#!/bin/bash
if [ -d part0 ]
then
    rmdir part0 -r
fi

mkdir part0
ffmpeg -i Go.gif part0/%03d.jpg

cd part0
for file in *.jpg
do
    convert $file -resize 1080x1920! $file
done

cd ..
zip -0 -r bootanimation.zip part0/ part1/ desc.txt
