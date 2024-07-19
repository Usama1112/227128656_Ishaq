@echo off

:: Sort text files on Drive C: by date and move older files to Drive Z:
forfiles /p C:\ /m *.txt /d -30 /c "cmd /c move @file Z:\archive"

:: Sort the archived files by size
dir Z:\archive\*.txt /S /O-S

:: Prompt the user for permission to delete the old, large files
set /p deleteconfirm=Do you want to delete the old, large files? (y/n): 
if /i "%deleteconfirm%"=="y" (
    del Z:\archive\*.txt
    echo Files deleted.
) else (
    echo Files not deleted.
)

pause
