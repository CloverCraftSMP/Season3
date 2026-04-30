@echo off
set SERVER_DIR=.\dev-server

echo Exporting pack...
java -jar pakku.jar export

echo Clearing old server mods...
rd /s /q "%SERVER_DIR%\mods"

echo Clearing old server config...
rd /s /q "%SERVER_DIR%\config"

echo Extracting serverpack...
for %%f in (build\serverpack\*.zip) do (
    tar -xf "%%f" -C "%SERVER_DIR%"
)

echo Starting server...
cd "%SERVER_DIR%"
java -Xmx4G -jar server.jar nogui