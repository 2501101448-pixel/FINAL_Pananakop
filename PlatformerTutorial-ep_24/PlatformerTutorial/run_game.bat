@echo off
setlocal
cd /d "%~dp0"
if not exist bin mkdir bin
javac -encoding UTF-8 -sourcepath src -d bin src\main\MainClass.java
if errorlevel 1 (
    echo Game compilation failed.
    pause
    exit /b 1
)
java -cp "bin;res" main.MainClass
if errorlevel 1 pause
