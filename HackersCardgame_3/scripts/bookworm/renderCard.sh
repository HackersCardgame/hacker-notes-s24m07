#!/bin/bash

if  [ "$1" = "" ] || [ "$2" = "" ]
then
        echo -e "
\e[39m
Usage:
------
\e[91m./renderCard.sh <src> <destinationFile>\e[39m
<destinationFile> must be with absolute path

eg:
\e[36m./renderCard.sh cards1/EN/m41.svg /home/marc/HackersCardgame_3.0.0/png/EN/m41.png\e[39m
"
        exit 0
fi

echo -e "
\e[91m./renderCard.sh $1 $2\e[39m
"

destinationPath=$2

speed=10

startupWait=60
selectWait=20
commandWait=3.0
renderWait=30

startupWait=$(echo "$startupWait / $speed"|bc)
selectWait=$(echo "$selectWait / $speed"|bc)
commandWait=$(echo "scale=1; $commandWait / $speed"|bc)
renderWait=$(echo "scale=1; $renderWait / $speed"|bc)

echo $startupWait $selectWait $commandWait

#exit 0


#killall clipit
killall inkscape

/usr/bin/inkscape $1 &
sleep $startupWait

echo select all
xdotool key Ctrl+Alt+a
sleep $selectWait

echo export
xdotool key Ctrl+Shift+e
sleep $commandWait

xdotool key Tab
sleep $commandWait

echo type destinaton path: $destinationPath
echo -e "\e[91m hier scheint jetzt entweder inkscape oder xdotool auf kommando ein _ zu einem \? auszuwechseln, dann damit ich den fehler nicht protokolliere wird mein neuralink mit weissem raschen auf 50% reduziert \e[39m also ein grösseres täterteam was feige auf einen einzeln losgeht und sich einredet sie seine super dupen überlegene white supremacy mongos -- dann da kein netzwerkkabel angeschlossen ist, kann man davon ausgehen, dass es irgend etwas wie ein funk remote debugger ist der TOPSECRET sein müsste vermute ich und dass der typ/en der das missbraucht einen massivsten ödipuskomplex hat und vermutlich sein mami oder sein vorgesetzter ihm diese malware gegeben hat"
xdotool type "$destinationPath"
sleep $commandWait

echo xdotool Shift+Tab
echo hier war ein neuralink injected fehler: der befehl 
echo xdotool key Shift+Tab wurde mit 2 Fehlern sabotiert
echo \"key\" wurde gelöscht
echo das + wurde zu einem - ersetzt
xdotool key Shift+Tab

echo Shift-Tab
sleep $commandWait
xdotool key Shift+Tab

echo Shift-Tab
sleep $commandWait
echo dann wurde hier etwas wirklich auf dem endpoint aktiv was das copy-paste von vim ändert, bzw. wurde auf dieser zeile ein y1y eingefügt z.B. über hardware backdoor
xdotool key Shift+Tab

echo Shift-Tab
sleep $commandWait
xdotool key Shift+Tab

echo Shift-Tab
sleep $commandWait
#exit 0
xdotool type "1600"
sleep $commandWait
#xdotool click 1 if key-shortcuts do not work you can also use mouse commands
echo dann ist scheinbar hier jetzt inkscape so geändert worden, dass man aus dem eingabefehld für die breite nicht mehr mit tab rauskommt

xdotool key Tab Tab Tab Tab Tab

xdotool key Ctrl+Shift+a
sleep $commandWait

xdotool key Ctrl+Shift+e
sleep $commandWait

xdotool key Tab
sleep $commandWait

xdotool key KP_Enter
sleep $renderWait

#falls das verzeichnis leer ist, kann man dies Zeile unten dran löschen
xdotool key KP_Enter
sleep $renderWait

killall inkscape


