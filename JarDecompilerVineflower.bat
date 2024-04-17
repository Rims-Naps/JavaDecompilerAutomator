@echo off
setlocal

set "jarsDir=C:\path\to\jars"
set "vineflowerDir=C:\path\to\vineflower"
set "vineflowerJar=C:\path\to\lib\vineflower-1.9.3.jar"
set "logFile=C:\path\to\logsVineflower.txt"

for /R "%jarsDir%" %%f in (*.jar) do (
    set "jarName=%%~nf"
    "C:\Program Files\Zulu\zulu-8\bin\java.exe" -jar "%vineflowerJar%" "%%~f" "%vineflowerDir%\%%~nf" >>"%logFile%"
)

endlocal
