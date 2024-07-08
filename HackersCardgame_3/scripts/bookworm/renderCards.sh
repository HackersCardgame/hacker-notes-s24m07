#!/bin/bash
#

if  [ "$1" = "" ]
then
        echo -e "
        \e[39m
        Usage:
        ------
        To render the cards in English: \e[36mrenderCards.sh EN\e[39m
        To render the cards in German   \e[36mrenderCards.sh DE\e[39m

	the DE or EN selects if in the cards1/EN or cards1/DE directory
	will be selected. Other Languages would work too

	the cards1 or cards2 ... directorys are taken from /\e[91mdirs.txt\e[39m
	at the moment it's set to:
	\e[91m
	$(cat ./dirs.txt)
	\e[39m

        "
        exit 0
fi


echo -e "A7 SVG cards will be taken from the directories \e[91m"

for i in $(cat dirs.txt)
do
	echo "$i/$1"
done

echo -e "\e[39m"


pwd=$(pwd)

rootDir=$(echo $(dirname $pwd))
echo $rootDir

destDir=$rootDir/HackersCardgame_3.$(cat minor.txt)/png/$1

echo -e "
output will be in the directory
\e[91m $destDir \e[39m
"


echo -e "
close all other applications except this terminal
\e[91myour computer will be blocked until finished\e[39m
(you could do it also in a Virtual Machine)

press [ENTER] to continue
"

read



#echo dann wurde jetzt scheinbar eine neuralink malware aktiviert synchron zu jemandem oder einer lautsprecher anlage in der wohnung oben dran, die sobald ich mich zu konzentrieren versuche 50% meiner Denkleistung im Gehirn mit weissem Rasuschen sabotiert, der polter-mongo-geist wird nur als objektfixierung eingebledent, eigentlich wäre das neuralink malware und der polzer geist falls der echt ist ist nur ein mogo-statist vom ETH ADA Waffensystem für psychologische Kriegsführng angestiftet zur objektifixerung, wäre mal spannend wenn der typ oder lautsprecher das nicht macht, ob das dann trotdem aktviert wird

mkdir -p $destDir

echo RUN ......

for dir in $(cat dirs.txt)
do
	find $dir/$1 -type f -name "*.svg" -exec ./scripts/bookworm/svg2image.sh '{}' $destDir \;
done
