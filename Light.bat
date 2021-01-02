


::We found on the internet 
::https://stackoverflow.com/questions/56149636/how-do-i-find-the-screen-brightness-with-cmd-on-windows
::Thanks Stackoverflow
::Thanks MoonBatchTeam
::Thanks Mr1ay

@echo off
 powershell -Command "(Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,%1)"
goto :Eof