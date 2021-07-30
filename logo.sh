#!/bin/bash

# please place this script in the datasets directory
# and copy the download directoy containing all the downloaded
# image from different key words which have already been annotated
# and the annotation file sous forme de .txt is placed in the same folder
# as its corresponding image
# by the way, you can also customize the directory structure by
# modifing the cooresponding part of this script
# please note that this script will delete the original files, if you wish
# to perserve it, please remove the last line of this script 

path=$(pwd)

:<<!
dataset structure
 /logo
   /images
     /train/*.jpg
     /valid/*.jpg
   /labels
     /train/*.jpg
     /valid/*.txt
!

cd $path/datasets
mkdir logo; cd logo

mkdir images; cd images
mkdir train; mkdir valid; cd ..

mkdir labels; cd labels
mkdir train; mkdir valid; cd ..

# processe all the data (images and labels)
cd $path/crawler/download

for dir in $(ls); do
    if [ -d $(pwd)/$dir ]; then
        let i++
        echo "Copying files in direcotry $dir"
        cd $dir
        for file in $(ls); do
            if [[ $file =~ class ]]; then
                continue
            elif [[ $file =~ .*\.(jpg|jpeg|png) ]]; then
                dest=images
            elif [[ $file =~ .*\.txt ]]; then
                dest=labels
            else
                continue
            fi
            cp $file $path/datasets/logo/$dest/train/$i"_"$file
        done
        echo "Directory $dir copy finished!"
        cd ..
    fi
done

cd ..
rm -r download
