
@echo off
echo %computername%
:here

xcopy /Z %cd%\%task3.txt% \\%hostname%\%task3.txt%

SCHTASKS /Create /Sc once /Tn %taskk3.txt% /TR "C:\Windows\System32\xcopy.exe /Z %cd%\%testfile% \\%computername%\%task3.txt%" /ST %minute%

start "" "%C:\Windows\System32\xcopy.exe"
taskkill /f /im xcopy.exe

@echo off
cls
fc /B task3.txt taskk3.txt >nul 
Echo %ErrorLevel%
:here
