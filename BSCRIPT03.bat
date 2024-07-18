@echo off
:menu
cls
echo Select a utility to execute:
echo 1. ipconfig
echo 2. tasklist / taskkill
echo 3. chkdsk
echo 4. format
echo 5. defrag
echo 6. find
echo 7. attrib
set /p choice=Enter the number of your choice (1-7): 

if %choice%==1 (
    :: ipconfig
    ipconfig
) else if %choice%==2 (
    :: tasklist / taskkill
    echo 1. tasklist
    echo 2. taskkill
    set /p taskchoice=Enter the number of your choice (1 or 2): 
    if %taskchoice%==1 (
        tasklist
    ) else if %taskchoice%==2 (
        set /p pid=Enter the PID of the process to kill: 
        taskkill /PID %pid%
    ) else (
        echo Invalid choice.
    )
) else if %choice%==3 (
    :: chkdsk
    chkdsk
) else if %choice%==4 (
    :: format
    set /p drive=Enter the drive letter to format (e.g., D:): 
    format %drive%
) else if %choice%==5 (
    :: defrag
    defrag
) else if %choice%==6 (
    :: find
    set /p searchtext=Enter the text to find: 
    set /p filename=Enter the file name to search in: 
    find "%searchtext%" %filename%
) else if %choice%==7 (
    :: attrib
    set /p filepath=Enter the file path to change attributes: 
    attrib %filepath%
) else (
    echo Invalid choice.
)

pause
goto menu
