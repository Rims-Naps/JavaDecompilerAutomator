@echo off
set LOGFILE=cfr.log
call :LOG > %LOGFILE%
exit /B

:LOG
for %%f in (.\*.jar) do java -jar ".\lib\cfr-0.152.jar" ".\%%f" --outputdir .\CFR > .\logsCFR.txt
