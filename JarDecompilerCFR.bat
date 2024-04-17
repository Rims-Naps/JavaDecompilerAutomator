/**
 * Logs the decompilation of all .jar files in the ./jars directory to cfr.log. 
 * Calls the LOG subroutine to perform the decompilation using CFR and log output.
 */
@echo off
set LOGFILE=cfr.log
call :LOG > %LOGFILE%
exit /B

:LOG
for %%f in (.\jars\*.jar) do "C:\Program Files\Zulu\zulu-8\bin\java" -jar ".\lib\cfr-0.152.jar" "%%f" --outputdir ".\output\%%~nfCfr" > .\logsCFR.txt
