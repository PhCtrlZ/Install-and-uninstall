@echo off&color 2f&Title Tool traodoisub by Nguyen Hoang Phuc&mode 80,20

:main
echo.
echo      ��������������������������������������������������������������������ͻ
echo      �                           Optimize tool TDS                        �
echo      �                                                                    �
echo      �                      Code by Nguyen Hoang Phuc                     �
echo      �     __________________________________________________________     �
echo.     �                                                                    �
echo      �                         Do you want install?                       �
echo      �                                                                    �
echo      ��������������������������������������������������������������������ͼ
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
