#Window InFront, a program by domidas
#Copyright 2021 domidas
#www.github.com/domidas

cd $home\Downloads

Start-BitsTransfer -Source 'https://www.autohotkey.com/download/ahk-install.exe' -Destination '.\Downloads\'

$process = Start-Process ahk-install.exe -PassThru

cd C:\

New-Item $env:APPDATA\Microsoft\Windows\Start` Menu\Programs\Startup\alwaysontop.ahk -ItemType file -Value "^SPACE::  Winset, Alwaysontop, , A"

cd $env:APPDATA\Microsoft\Windows\Start` Menu\Programs\Startup\

Start-Sleep -s 5

$process.WaitForExit()

echo "You must restart for changes to take effect."

$confirmation = Read-Host "Reboot Machine Now? [y/n]"
if ($confirmation -eq 'y') {
    Restart-Computer
}
if ($confirmation -eq 'n') {
    exit
}
