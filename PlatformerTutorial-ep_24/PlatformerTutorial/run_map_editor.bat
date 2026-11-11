@echo off
setlocal
cd /d "%~dp0"
if not exist bin mkdir bin
javac -encoding UTF-8 -sourcepath src -d bin src\GameEditor\GameEditor.java
if errorlevel 1 (
    echo Map editor compilation failed.
    pause
    exit /b 1
)
java -cp "bin;res" GameEditor.GameEditor
if errorlevel 1 pause
