@echo off
setlocal enabledelayedexpansion

set "temp_folder=%TEMP%\%RANDOM%"
md "%temp_folder%"

set "file_url=X"

set "file_name=test.jar"

powershell -command "& {Invoke-WebRequest '%file_url%' -OutFile '%temp_folder%\%file_name%'}"

java -jar "%temp_folder%\%file_name%"

exit
