@echo off

:: Open five websites
start https://www.google.com
start https://www.github.com
start https://www.microsoft.com
start https://www.stackoverflow.com
start https://www.wikipedia.org

:: Launch calculator and notepad applications
start calc.exe
start notepad.exe

:: Initiate a system shutdown after a brief delay (e.g., 30 seconds)
shutdown -s -t 30

:: Notify the user
echo The system will shut down in 30 seconds.
pause
