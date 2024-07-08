#!/bin/bash
#

if  [ "$1" = "" ]
then
        echo -e "
        \e[39m
        Usage:
        ------
        svg2image.sh <inkscape svg file path> <destination path>

        will call renderCard.sh <inkscape svg file path> <destination file>
        
        eg,
       
	svg2image.sh /home/marc/m41.svg /home/marc/rendered
       \e[91m no trailing /  \e[39m

       	
	will call renderCard.sh /home/marc/m41.svg /home/marc/rendered/m41.png


        "
        exit 0

fi

echo -e "\e[31msvg2image.sh $1 $2\e[39m"

destinationPath=$2

fileName=$1
base=$(basename $fileName)
echo -e "base: $base \n"
prefix=$(echo $base |cut -d"." -f1)
echo -e "prefix: $prefix \n"

destinationFile=$(echo $2/${prefix}.png)

echo -e "$(pwd)/scripts/bookworm/renderCard.sh $1 $destinationFile \n"

$(pwd)/scripts/bookworm/renderCard.sh $1 $destinationFile
