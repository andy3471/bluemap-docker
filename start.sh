#!/bin/sh
echo "Downloading bluemap latest"


if [ -f "/bluemap/bluemap.jar" ]
    echo "File already exists, skipping step..."
then
    mkdir -p /bluemap

    LOCATION=$(curl -s https://api.github.com/repos/BlueMap-Minecraft/BlueMap/releases/latest \
    | grep "tag_name" \
    | awk '{print "https://github.com/BlueMap-Minecraft/BlueMap/releases/download/" substr($2, 2, length($2)-3) "/BlueMap-" substr($2, 3, length($2)-4) "-cli.jar"}') \
    ; curl -L -o bluemap.jar $LOCATION

    cp /app/bluemap.jar /bluemap/bluemap.jar
    cp /app/core.conf /bluemap/core.conf
fi

cd /bluemap
java -jar ./bluemap.jar
java -jar ./bluemap.jar -ruw