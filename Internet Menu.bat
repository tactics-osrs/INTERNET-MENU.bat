TITLE INTERNET MENU
@echo off
setlocal
:menu
cls
echo.
echo ================
echo INTERNET MENU
echo ================
echo 1. Flush DNS Resolver Cache
echo 2. Reset TCP/IP Settings
echo 3. Open Network and Internet Settings
echo 4. Release/Renew IP Address
echo 5. Change IP Address
echo 6. Display Network Configuration
echo 7. Ping Test
echo 8. Traceroute Test
echo 9. Network Reset
echo 10. Disable/Enable Network Adapter
echo 11. Set IP to Automatic DHCP
echo 12. Exit
echo.
set /P "choice=Enter your choice (1-12): "
if "%choice%"=="1" goto flushDNS
if "%choice%"=="2" goto resetTCP
if "%choice%"=="3" goto openNetwork
if "%choice%"=="4" goto renewIP
if "%choice%"=="5" goto changeIP
if "%choice%"=="6" goto displayConfig
if "%choice%"=="7" goto pingTest
if "%choice%"=="8" goto tracerouteTest
if "%choice%"=="9" goto networkReset
if "%choice%"=="10" goto disableEnableAdapter
if "%choice%"=="11" goto setDHCP
if "%choice%"=="12" goto end
goto menu
:setDHCP
FOR /F "tokens=3,*" %%A IN ('netsh interface show interface^|find "Connected"') DO (
    echo Setting IP Address and Subnet Mask For DHCP...
    netsh int ip set address name = "%%B" source = dhcp
    echo Setting DNS For DHCP...
    netsh int ip set dns name = "%%B" source = dhcp
    echo Setting Windows Internet Name Service (WINS) For DHCP...
    netsh int ip set wins name = "%%B" source = dhcp
    echo IP, DNS, and WINS have been set to DHCP for %%B.
)
pause
goto menu

:end
endlocal

:pingTest
set /P "choice=Enter the IP address or domain to ping: "
ping %choice%
pause
goto menu

:tracerouteTest
set /P "choice=Enter the IP address or domain to trace: "
tracert %choice%
pause
goto menu

:networkReset
set /P "choice=You are about to reset your network settings to their default state. Are you sure you want to continue? (Yes/No): "
if /I "%choice%" EQU "Yes" (
    echo Resetting your network settings...
    netsh int ip reset
    netsh winsock reset
    echo Your network settings have been reset to their default state. Please restart your computer for the changes to take effect.
    pause
) else (
    echo Operation cancelled without resetting network settings.
    pause
)
goto menu

:disableEnableAdapter
set /P "choice=You are about to disable and then enable your network adapter. Are you sure you want to continue? (Yes/No): "
if /I "%choice%" EQU "Yes" (
    echo Disabling network adapter...
    netsh interface set interface "Ethernet" admin=disable
    timeout /t 5
    echo Enabling network adapter...
    netsh interface set interface "Ethernet" admin=enable
    echo Network adapter has been disabled and enabled.
    pause
) else (
    echo Operation cancelled without disabling/enabling network adapter.
    pause
)
goto menu

:end
endlocal
