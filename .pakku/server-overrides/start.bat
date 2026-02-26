@echo off
java -Xms4096M -Xmx4096M --add-modules=jdk.incubator.vector -jar server.jar --nogui
pause