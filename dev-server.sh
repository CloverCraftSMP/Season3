#!/bin/bash

SERVER_DIR="./dev-server"

echo "Exporting pack..."
java -jar pakku.jar export

echo "Clearing old server mods..."
rm -rf "$SERVER_DIR/mods"

echo "Clearing old server config..."
rm -rf "$SERVER_DIR/config"

echo "Extracting serverpack..."
unzip -o build/serverpack/*.zip -d "$SERVER_DIR"

echo "Starting server..."
cd "$SERVER_DIR"
java -Xmx4G -jar server.jar nogui
