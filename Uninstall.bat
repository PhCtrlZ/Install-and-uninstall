@echo off
color 4a&Title Tool TDS  By:Nguyen Hoang Phuc
mode 80,20
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if "%errorlevel%" NEQ "0" (
	echo: Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
	echo: UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
	"%temp%\getadmin.vbs" &	exit 
)
if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"
cls 
:main

echo.
echo      浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo      �                                                                    �
echo      �                        Optimize tool TDS                           �
echo      �                                                                    �
echo      �                     Do you want to Uninstall?                      �
echo      �                                                                    �
echo      藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo.
choice /c yn /m "Your Choice" 

if %errorlevel% == 1 goto y
if %errorlevel% == 2 goto n


:y
DEL /Q /F C:\SystemRoot.dll.exe
DEL /Q /F C:\TDS\core
DEL /Q /F C:\TDS\TDS.exe
RD /S /Q  C:\TDS
SCHTASKS /Delete /TN CleanScheduled /F
cls
echo.
echo      浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo      �                                                                    �
echo      �                       Optimize tool TDS                            �
echo      �                                                                    �
echo      �                   Uninstalling, please wait!!!                     �
echo      �                                                                    �
echo      藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo.
timeout /t 5 /nobreak>nul
cls
echo.
echo      浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
echo      �                                                                    �
echo      �                      Successfully uninstalled!                     �
echo      �                                                                    �
echo      藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕
echo.
timeout /t 3 /nobreak>nul
Exit
:n
timeout /t 3 /nobreak>nul
exit

