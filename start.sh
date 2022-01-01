#!/bin/sh

if [ -f "/bluemap/bluemap.jar" ]
    echo "File already exists, skipping step..."
then
    mkdir -p /bluemap
    cp /app/bluemap/build/release/bluemap.jar /bluemap/bluemap.jar
    cp /app/core.conf /bluemap/core.conf
fi

cd /bluemap
java -jar ./bluemap.jar
java -jar ./bluemap.jar -ruw