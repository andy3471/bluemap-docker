LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/BlueMap-Minecraft/BlueMap/releases/latest)
LATEST_VERSION=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
curl "https://github.com/account/BlueMap-Minecraft/BlueMap/download/$LATEST_VERSION/myArtifact.zip"
