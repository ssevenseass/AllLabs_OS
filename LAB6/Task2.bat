rem Task 1
@echo off
echo %computername%
:here

rem Task 2
xcopy /Z %cd%\%task3.txt% \\%hostname%\%task3.txt%

rem Task 3
SCHTASKS /Create /Sc once /Tn %taskk3.txt% /TR "C:\Windows\System32\xcopy.exe /Z %cd%\%testfile% \\%computername%\%task3.txt%" /ST %minute%

rem Task 4
start "" "%C:\Windows\System32\xcopy.exe"
taskkill /f /im xcopy.exe

rem Task 5
@echo off
cls
fc /B task3.txt taskk3.txt >nul 
Echo %ErrorLevel%
:here