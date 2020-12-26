
 wmic os get Caption > Output/caption.txt
 wmic os get Version > Output/version.txt
 wmic os get FreePhysicalMemory > Output/freememory.txt
 wmic os get TotalVisibleMemorySize > Output/loadedmemory.txt
 wmic logicaldisk list brief >> Output/diskInf.txt


md C:\TEST
copy C:\LAB6\*.* C:\TEST\*.*


@echo off
(for /f delims^= %%a in ('dir /b /s /a-d') do (
set "file=%%a"
call echo %%file:%cd%=%%
)) > list.txt


cd /C/LAB6/TEST %TEST%  
for  %%f in (*.txt) do (
   echo Delete %%f 
   del /f /s /q %%f
)

copy *.bat all.txt

