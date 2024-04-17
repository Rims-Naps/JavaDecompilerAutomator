@echo off
setlocal

set "jarsDir=C:\path\to\jars"
set "fernflowerDir=C:\path\to\fernflower"
set "fernflowerJar=C:\path\to\lib\fernflower-2.5.0.Final.jar"
set "logFile=C:\path\to\logsFernflower.txt"

for /R "%jarsDir%" %%f in (*.jar) do (
    set "jarName=%%~nf"
    "C:\Program Files\Zulu\zulu-8\bin\java.exe" -jar "%fernflowerJar%" "%%~f" -dgs=1 -hdc=0 -rbr=0 -asc=1 -udv=0 "%fernflowerDir%\%%~nf" >>"%logFile%"
)

endlocal