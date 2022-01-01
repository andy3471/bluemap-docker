if [ -f "/bluemap/bluemap.jar" ]
    echo "File already exists, skipping step..."
then
    mkdir -p /app/bluemap
    cp /app/bluemap/build/release/bluemap.jar /bluemap/bluemap.jar
fi

cd /bluemap
java --jar ./bluemap.jar -ruw