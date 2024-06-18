@echo off&color 2f&Title Tool traodoisub by Nguyen Hoang Phuc&mode 80,20

:main
echo.
echo      ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo      บ                           Optimize tool TDS                        บ
echo      บ                                                                    บ
echo      บ                      Code by Nguyen Hoang Phuc                     บ
echo      บ     __________________________________________________________     บ
echo.     บ                                                                    บ
echo      บ                         Do you want install?                       บ
echo      บ                                                                    บ
echo      ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
choice /c yn /m "Let Choice" 

if %errorlevel% == 1 goto y
if %errorlevel% == 2 goto n


:y
COPY "Files\*.*" "%temp%\*.*"
start Files\project.bat
goto exit

:n
timeout /t 3 /nobreak>nul
goto exit

:exit
exit
