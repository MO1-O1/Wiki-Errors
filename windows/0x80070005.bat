@echo off
echo ==========================================
echo Fix Windows Update Error 0x80070005
echo Access Denied
echo ==========================================
echo.
echo Taking ownership of Windows Update folders...
takeown /f C:\Windows\SoftwareDistribution /r /d y
takeown /f C:\Windows\System32\catroot2 /r /d y
echo.
echo Resetting permissions...
icacls C:\Windows\SoftwareDistribution /grant administrators:F /t
icacls C:\Windows\System32\catroot2 /grant administrators:F /t
echo.
echo Restarting Windows Update services...
net stop wuauserv
net start wuauserv
echo.
echo ==========================================
echo Done! Try Windows Update again.
echo ==========================================
pause
