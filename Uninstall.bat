@ECHO OFF
cd %userprofile%
cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\"
if exist "alwaysontop.ahk" (
	del alwaysontop.ahk
) else (
	echo The AutoHotKey script does not exist and therefore cannot be uninstalled.
)
cd %userprofile%
cd .\Downloads\
echo .
echo .
echo .
if exist "ahk-install.exe" (
	del ahk-install.exe
) else (
	echo The AutoHotKey installer does not exist and therefore cannot be uninstalled.
)
echo .
echo .
echo .
cd %ProgramFiles%\AutoHotKey\
if exist "installer.ahk" (
	start installer.ahk
) else (
	echo The AutoHotKey uninstaller does not exist and therefore cannot be started.
)
echo .
echo .
echo .
echo done ;)
pause >nul.
