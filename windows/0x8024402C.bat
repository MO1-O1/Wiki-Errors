@echo off
echo ==========================================
echo Fix Windows Update Error 0x8024402C
echo Proxy Error
echo ==========================================
echo.
echo Clearing WinHTTP proxy...
netsh winhttp reset proxy
echo.
echo Resetting Windows Update proxy settings...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /f
echo.
echo Restarting Windows Update service...
net stop wuauserv
net start wuauserv
echo.
echo ==========================================
echo Done! Proxy settings cleared.
echo ==========================================
pause
