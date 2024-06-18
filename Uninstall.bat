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
echo      ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo      บ                                                                    บ
echo      บ                        Optimize tool TDS                           บ
echo      บ                                                                    บ
echo      บ                     Do you want to Uninstall?                      บ
echo      บ                                                                    บ
echo      ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
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
echo      ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo      บ                                                                    บ
echo      บ                       Optimize tool TDS                            บ
echo      บ                                                                    บ
echo      บ                   Uninstalling, please wait!!!                     บ
echo      บ                                                                    บ
echo      ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
timeout /t 5 /nobreak>nul
cls
echo.
echo      ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo      บ                                                                    บ
echo      บ                      Successfully uninstalled!                     บ
echo      บ                                                                    บ
echo      ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
timeout /t 3 /nobreak>nul
Exit
:n
timeout /t 3 /nobreak>nul
exit

