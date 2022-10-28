@echo off
title BULLDOZER AUTOINSTALLER v1.0
color 0a 
cls
echo.
echo BULLDOZER AUTOINSTALLER
echo remove old install if present 
rmdir /s /q c:\BULLDOZER\
echo Done
echo.
echo Making Install Directory "C:/BULLDOZER"
md C:\BULLDOZER
echo Making Install Directory "C:/BULLDOZER" : Done 
echo.
timeout /t 1 >nul
cls
echo BULLDOZER AUTOINSTALLER
echo.
echo Starting File Transfer 
cls
echo BULLDOZER AUTOINSTALLER
bitsadmin.exe /transfer "Downloading Super GO 2 Bot " https://github.com/Warner231936/SuperBULLDOZER/raw/main/PublicCLI.zip C:\BULLDOZER\BULLDOZER.zip
echo.
echo File Transfer Complete
timeout /t 5 >nul
cls
echo.
echo BULLDOZER AUTOINSTALLER
echo. 
cd c:/BULLDOZER
powershell.exe expand-archive -force BULLDOZER.zip
cls
echo BULLDOZER AUTOINSTALLER
echo.
echo.
echo                 Install Complete
echo.
echo             Install DIR = C:/BULLDOZER
echo    This console will close automaticly
timeout /t 3 >nul
cd c:\BULLDOZER\BULLDOZER\PublicCli
start c:\BULLDOZER\BULLDOZER\PublicCLI
timeout /t 1 >nul
assoc .yml="C:\Windows\System32\notepad.exe"
start config.yml notepad.exe
timeout /t 1 >nul
del nul
exit 
