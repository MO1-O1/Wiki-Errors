@echo off
echo ==========================================
echo Fix Windows Update Error 0x80072EFE
echo Connection Error
echo ==========================================
echo.
echo Flushing DNS cache...
ipconfig /flushdns
echo.
echo Resetting network stack...
netsh winsock reset
netsh int ip reset
echo.
echo Restarting network services...
net stop dhcp
net start dhcp
net stop dnscache
net start dnscache
echo.
echo ==========================================
echo Done! Restart your PC and try again.
echo ==========================================
pause
