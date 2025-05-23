@echo off

:: Set target folder and icon path
:: Replace the values below with your own folder and .ico file
set folder=FULL_PATH_TO_TARGET_FOLDER
set icon=FULL_PATH_TO_ICON_FILE.ico

:: Remove existing desktop.ini if present
attrib -s -r -h "%folder%\desktop.ini" >nul 2>&1
del "%folder%\desktop.ini" >nul 2>&1

:: Write new desktop.ini with correct icon reference
(
    echo [.ShellClassInfo]
    echo IconResource=%icon%,0
) > "%folder%\desktop.ini"

:: Set folder attributes so Explorer uses the desktop.ini
attrib +s +r "%folder%"
attrib +h +s "%folder%\desktop.ini"

:: Restart Explorer to force icon refresh
taskkill /f /im explorer.exe
start explorer.exe

:: Open the desktop.ini file in Notepad as Administrator for manual verification
powershell -Command "Start-Process notepad '%folder%\desktop.ini' -Verb RunAs"

