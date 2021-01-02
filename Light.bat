		@echo off
		::We found on the internet 
		::https://stackoverflow.com/questions/56149636/how-do-i-find-the-screen-brightness-with-cmd-on-windows
		::Thanks Stackoverflow
		::Thanks MoonBatchTeam
		::Thanks Mr1ay

			if "%1"=="" 		goto :help
			if "%1"=="/?" 		goto :help
			if "%1"=="//" 		goto :help
			if "%1"=="/h" 		goto :help
			if "%1"=="/help" 	goto :help
			if "%1"=="help" 	goto :help
			if "%1"=="-h"		goto :help
			if "%1"=="--h"		goto :help
			if "%1"=="-help"  	goto :help
			if "%1"=="--help"  	goto :help
			if not "%1"=="" 	goto :u
			goto :end


		:u
				powershell -Command "(Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,%1)"
				goto :Eof


		:help
				echo.
				echo.
				echo.   ::Thanks Stackoverflow
				echo.   ::Thanks MoonBatchTeam
				echo.   ::Thanks Mr1ay
				echo.
				echo.   :Light_v1.0
				echo.
				echo.   You can change screen light with cmd
				echo. 
				echo.   Usage :      Light.bat %%number%%
				echo.                L.bat %%number%%
				echo. 
				echo.   For example: Light.bat 100
				echo.                L.bat 100
				echo. 
				echo. 

				:end
				goto :Eof
