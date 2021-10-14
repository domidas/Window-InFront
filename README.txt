The PowerShell script you just downloaded does the following:

> Downloads and installs AutoHotKey, an open source scripting language for Windows, to the user's downloads folder

> Creates a script in the native startup directory called alwaysinfront.ahk that is the script AutoHotKey
interprets

> Runs alwaysinfront.ahk

>>>IMPORTANT<<<

> This script is UNSIGNED and will not run automatically on most Windows machines. To check if it will 
automatically, open a Powershell prompt and type 'Get-ExecutionPolicy'. If the output is ANYTHING but 
'Unrestricted", this script will not run in its current state.

> The simplest way to run the script is to right-click on it and select "Run with Powershell"

> If this doesn't work, 
To change your execution policy for just the script, open a Powershell prompt (as an administrator) and cd into
the directory where the script is located, and then type 
'powershell -ExecutionPolicy ByPass -file WindowInFront.ps1' This will automatically run the script.

> To delete all associated files, NOT INCLUDING the script itself, run the uninstall batch file.

>>>USAGE<<<

1. To install and use the Window InFront program, run the script with the methods detailed above.

2. When prompted for AutoHotKey making changes to your computer, select "yes".

3. Type "y" and [enter] if you are ready to restart immediately, and "n" if you would like changes to be made on 
   the PC's next startup.

4. Once the installation process is complete and the computer has had a chance to restart, the program is ready
   to use.

5. To use Window InFront, click inside the window you would like to keep in front of all your other ones, and 
   press CTRL + Spacebar.

6. When you would like to turn off Window InFront for a window, click in the window and press CTRL + Spacebar
   again.

7. As mentioned above, if you choose you no longer need Window InFront, navigate to the folder where you keep
   your originally-downloaded script and click the uninstall.ps1 file. When the window opens, select "Uninstall"
   Once the script says "done :)", AHK is completely uninstalled.
