@echo off
chcp 65001 > nul
title DNS changer
    set "_cRed="40;91m""
set "_cYel="0E""



echo.
echo.
echo        ██████  ███████ ██████   █████  ██   ██ ██   ██  ██████ ██   ██  █████  ███   ██ ██████  ███████ ██   ██    ██████  ███████ ██    ██
echo        ██   ██ ██      ██   ██ ██   ██ ██  ██  ██   ██ ██      ██   ██ ██   ██ ████  ██ ██   ██ ██      ██   ██    ██   ██ ██      ██    ██
echo        ██   ██ █████   ██████  ███████ █████   ███████  █████  ███████ ███████ ██ ██ ██ ██   ██ █████   ███████    ██   ██ █████    ██  ██
echo        ██   ██ ██      ██   ██ ██   ██ ██  ██  ██   ██      ██ ██   ██ ██   ██ ██  ████ ██   ██ ██      ██   ██    ██   ██ ██        ████
echo        ██████  ███████ ██   ██ ██   ██ ██   ██ ██   ██ ██████  ██   ██ ██   ██ ██   ███ ██████  ███████ ██   ██ ██ ██████  ███████    ██
echo.
echo.
echo        ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo        ██████████████████████████████████████████████████████████[36mDERAKHSHANDEH.DEV[0m█████████████████████████████████████████████████████████
echo        ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo.
echo        [33mWARNING : Be Sure To Use Administrator Access To Use This Program[0m
echo.
echo        [34mNote : You Can Modify Custom DNS By Editing The File[0m
echo.
echo           [[32m1[0m] Set Automaticly DNS
echo           [[32m2[0m] Set Custom DNS
echo.
echo           ____________________________________________________________
echo.

choice /c 12 /n /m ">      Enter Number: " 
set number=%errorlevel%

if %number% == 1 (
    netsh interface ip set dns "Ethernet" dhcp
    start "" "%~f0"
    exit
)

if %number% == 2 (
    REM you can set custom dns in address constants
    netsh interface ipv4 add dnsservers "Ethernet" address=178.22.122.100 index=1 validate=no
    netsh interface ipv4 add dnsservers "Ethernet" address=185.51.200.2 index=2 validate=no
    start "" "%~f0"
    exit
)

pause
endlocal