#Window InFront Uninstaller

#Author: domidas

#github.com/domidas

cd $env:USERPROFILE
cd '.\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'

$ahkscript = '.\alwaysontop.ahk' 
$a = Test-Path $ahkscript
If ($a -eq $true) {
    Remove-Item alwaysontop.ahk
    Write-Host 'Script successfully deleted.'
                    }
If(-not $a) 
 {
    Write-Host This script does not exist.
 }

cd $env:USERPROFILE
cd '.\Downloads'
echo .
echo .
echo .
$installer = '.\ahk-install.exe'
$b = Test-Path $installer
If ($b -eq $true) {
    Remove-Item ahk-install.exe
    Write-Host 'Installer successfully deleted.'
                    }
If (-not $b)
{
    Write-Host 'The installer does not exist.'
}

echo .
echo .
echo .
cd $env:ProgramFiles
cd '.\AutoHotkey\'
$uninstall = '.\Installer.ahk'
$c = Test-Path $uninstall
If ($c -eq $true) {
    Start-Process Installer.ahk
    Write-Host 'AutoHotKey successfully uninstalled.'
                    }
If (-not $c)
{
    Write-Host 'The Uninstaller could not be found.'
}
echo .
echo .
echo .
Write-Host 'exiting...'
Start-Sleep -seconds 3
