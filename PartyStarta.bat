:: //////////////////// ::
:: PartyStarta Version 3.0.28 ::
@echo off
break off
title Sapi-Dot-Joke Command Line
PUSHD "%CD%"
CD /D "%~dp0"
set back=%cd%
cls
goto search


:: FOLDER DETECTOR ::
:search
cd Sapi-Dot-Joke > nul
if %errorlevel%==0 (
echo Loading...
goto intro > nul
) ELSE (
cls
color c
echo.
echo 	ERROR
echo.
echo Sapi-Dot-Joke folder not found.
echo.
echo.
echo In order for this to work, you must have the "PartyStarta.bat" 
echo.
echo file outside of the Sapi-Dot-Joke folder, and in the same directory.
echo.
echo ----------------------------------------------------------------O
echo.
echo.
pause
exit
)

:: INTRO PROMPT ::
:intro
color 0a
echo.
echo PartyStarta check program:
echo.
echo Sapi-Dot-Joke folder: FOUND
setlocal enabledelayedexpansion
echo Delayed expansion enabled
echo Initiaiting Sapi-Dot-Joke run check...
tasklist | findstr /ic:wscript.exe
if %errorlevel%==0 (
goto InProcess
) ELSE (
echo Sapi-Dot-Joke not running.
)
cd %back%
cd Sapi-Dot-Joke 
cd Cache
echo Clearing PartyStarta temp...
del select.temp > nul
echo Estart check...
type express.cfg 
if %errorlevel%==0 (
echo Estart ready to be activated
set estatus=Activate Express Start
) ELSE (
echo Estart has not yet been configured
ren Estart.bat PartyStarta.bat > nul
set estatus=Set up Express Start
echo Running Nuke check...
goto nuketest
)
for /f "usebackq delims=" %%g in ("express.cfg") do ( set button=%%g )
if %button%==Y goto expressgo
if %button%==N ren Estart.bat PartyStarta.bat
:nuketest
cd %back%
cd Sapi-Dot-Joke
cd Engine
cd StartupScripts
type DeactivatedNuke.txt
if %errorlevel%==1 (
echo Check^: Nuke activated
echo.
echo PartyStarta check program terminated.
echo.
echo Booting main console...
goto main
) ELSE (
cls
color 7
echo.
echo -----------------------------------O
echo.
echo Nuke script deactivated, would you like to reactivate it? 
echo.
echo If enabled, this folder along with the contents will delete after finish. (RECOMMENDED^) )
echo.
echo -----------------------------------O
echo.
echo Type [Y] or N
echo.
set /p mchoice=Select: 
if %mchoice%==N GOTO main
if %mchoice%==Y GOTO introyes
if %mchoice%==n GOTO main
if %mchoice%==y GOTO introyes
if %mchoice%==exit exit
GOTO intronothingselected
echo ----------------------O
:introyes
ren "DeactivatedNuke.txt" "NUKE.BAT" > nul
ren  HideFolder(Disabled).txt" "HideFolder.ps1" > nul
echo.
GOTO main
)

:: MAIN MENU ::
:main
set /A amountnum=0
set one=0
set two=0
set three=0
set four=0
set five=0
set six=0
title Sapi-Dot-Joke Command Line
cd %back%
cd Sapi-Dot-Joke
cd Engine
cls
color 7
echo 					o[:]o-=-/\-=-^( 0 ^)-=-/\-=-o[:]o
echo 				       - 0 SapiDotJoke  Command Line 0 -
echo 					o[:]o-=-\/-=-^( 0 ^)-=-\/-=-o[:]o
echo.
echo -===========-
echo : MAIN MENU :
echo -===========-
echo.
echo -----------------------O
echo.
echo ^(1.^) %estatus%
echo.
echo ^(2.^) Scripts
echo.
echo ^(3.^) PANIC-BUTTON.bat *Stops all scripts.*
echo.
echo ^(4.^) Settings
echo.
echo ^(5.^) Command Prompt
echo.
echo ^(6.^) Nuke (CAUTION)
echo.
echo ^(7.^) Exit
echo.
echo -----------------------O
echo.
cd ..
type Version.txt
echo.
echo.
set /p mchoice=Select Number: 
if %mchoice%==1 GOTO express1
if %mchoice%==2 GOTO Scripts
if %mchoice%==3 echo. & echo. & echo PartyStarta will close after this action & echo. & echo. & echo Killing script processes... & echo. & taskkill /im "wscript.exe" & taskkill /im "powershell.exe" -f & taskkill /im "cmd.exe" -f & echo DONE! & timeout 3
if %mchoice%==4 GOTO settings
if %mchoice%==5 cls & cd .. & echo Welcome to the Command Prompt. & echo When done, type "goto main" to return to the main menu, or simply type exit to close. & echo. & dir /a & echo. & echo Enter Command: & echo. & GOTO cmd
if %mchoice%==6 goto nuke
if %mchoice%==7 exit
if %mchoice%==666 cls & color 4 & echo. & echo SATAN... BE GONE FROM ME!!! & timeout 2 > nul & exit
if %mchoice%==exit exit
if %mchoice%==cls GOTO main
if %mchoice%==test GOTO test
if %mchoice%==version echo. & cd .. & echo -----------------------O & echo. & echo - PartyStarta Version 3.0.29 - & echo. & echo. & pause & goto main
if %mchoice%==nuke GOTO nuke
if %mchoice%==cmd cls & cd .. & echo Welcome to the Command Prompt. & echo When done, type "goto main" to return to the main menu, or simply type exit to close. & echo. & dir /a & echo. & echo Enter Command: & echo. & GOTO cmd
GOTO nothingselected
\\\\\\\\\\\\\\\\\\\\


////////////////////

:: EXPRESS START ::
:express1
cls
cd %back%
cd Sapi-Dot-Joke
setlocal
IF EXIST Cache (
cd Cache
) ELSE (
set estatus2=Configure
goto despues
)
IF EXIST express.cfg (
set estatus2=Activate
) ELSE (
set estatus2=Configure
cd %back%
cd Sapi-Dot-Joke
rmdir Cache
)
:despues
color 7
echo.
echo -===============-
echo : EXPRESS START :
echo -===============-
echo.
echo -----------------------O
echo.
echo ^(1.^) %estatus2%
echo.
echo ^(2.^) Help
echo.
echo ^(3.^) Return to main menu
echo.
echo -----------------------O
echo.
set /p mchoice=Select Number: 
if %mchoice%==1 goto eactcheck
if %mchoice%==2 ECHO. & echo Essentially the quickest way to execute the fake trojan without having to set it up on the victum's machine. Simply configure Estart by choosing what scripts you wish to be activated, upon arriving to the target computer you will be able to start the scripts instantly. Beware, enabling Express Start will change the format of PartyStarta!.bat where it will only be an initiation button to start the scripts, hence the new name Estart.bat & echo. & pause & goto express1
if %mchoice%==3 GOTO main
goto nothingselected

:eactcheck
if %estatus2%==Configure (
set mchoice=None 
mkdir Cache 
cd Cache 
cls 
GOTO setvalidate
) ELSE (
goto eactivate
)

:setvalidate
cd %back%
cd Sapi-Dot-Joke
cd Cache
IF EXIST settings.cfg (
echo.
) ELSE (
goto skip
)
echo.
echo Setting.cfg file already exists, do you wish to overwrite it?
echo.
echo ------------------------------------O
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N goto econfigure2
if %mchoice%==Y del settings.cfg & goto skip
if %mchoice%==n goto econfigure2
if %mchoice%==y del settings.cfg & goto skip
goto nothingselected

:econfigure1
cls
cd %back%
cd Sapi-Dot-Joke
cd Cache
color 7
echo %mchoice% >> settings.cfg
goto skip
:selerror
cls
cd %back%
cd Sapi-Dot-Joke
cd Cache
color 7
set mchoice=Number Already selected.
:skip
if %amountnum%==7 set amountnum=6
if %amountnum%==6 set maxamountmsg=- Max settings amount reached. -

echo.
echo o=o=o=o=o=o=o
echo  CONFIGURE I 
echo o=o=o=o=o=o=o
echo.
echo ----------------------------------------------O
echo.
echo - Choose which settings you wish to be enabled, you can select multiple numbers, type "Okay" when done. -
echo.
echo.
echo ^(1.^) DeactivatedNuke.bat (Prevents the Sapi-Dot-Joke from self-deleting after finish, disables auto-hiding.)
echo.
echo ^(2.^) NoLoudNoises.bat (Disables forced volume increasers and lowers loud sounds.)
echo.
echo ^(3.^) DisableStartupScript.bat (Disables the startup scripts that trigger when the user logs back in.)
echo.
echo ^(4.^) DisableChangeWallpaper.bat (Disables the wallpaper change script.)
echo.
echo ^(5.^) DisableDiskTrayLoop.bat (Disables the script that repeatedly opens and closes computer disk tray.)
echo.
echo ^(6.^) DisableShutdown.bat (Disables the script that shuts down the computer.)
echo.
echo ^(7.^) Return to main menu (Returns to main menu.)
echo.
echo ----------------------------------------------O
echo.
echo Number selected: %mchoice%
echo.
echo Amount selected: %amountnum% 
echo.
echo. %maxamountmsg%
echo.
set /p mchoice=Select Number: 

IF EXIST select.temp (
echo.
) ELSE (
goto nextop
)
FOR /F "usebackq delims=" %%g in ("select.temp") do ( set temp=%%g )
if %mchoice%==%temp% goto selerror

:nextop
if %mchoice%==7 del select.temp & GOTO main
if %mchoice%==Okay goto subeconfig1
if %mchoice%==OKAY goto subeconfig1
if %mchoice%==okay goto subeconfig1
:: if %amountnum%==6 goto econfigure1
if %mchoice%==1 goto check1
if %mchoice%==2 goto check2
if %mchoice%==3 goto check3
if %mchoice%==4 goto check4
if %mchoice%==5 goto check5
if %mchoice%==6 goto check6
goto enothingselected

:check1
if %one%==1 goto selerror
set/a amountnum=%amountnum% +1
set one=1
echo %mchoice% > select.temp
goto econfigure1
:check2
if %two%==1 goto selerror
set/a amountnum=%amountnum% +1
set two=1
echo %mchoice% > select.temp
goto econfigure1
:check3
if %three%==1 goto selerror
set/a amountnum=%amountnum% +1
set three=1
echo %mchoice% > select.temp
goto econfigure1
:check4
if %four%==1 goto selerror
set/a amountnum=%amountnum% +1
set four=1
echo %mchoice% > select.temp
goto econfigure1
:check5
if %five%==1 goto selerror
set/a amountnum=%amountnum% +1
set five=1
echo %mchoice% > select.temp
goto econfigure1
:check6
if %six%==1 goto selerror
set/a amountnum=%amountnum% +1
set six=1
echo %mchoice% > select.temp
goto econfigure1

:subeconfig1
cls
echo.
echo o=o=o=o=o=o=o
echo  CONFIGURE Ia 
echo o=o=o=o=o=o=o
echo.
echo ----------------------------------------------O
echo.
echo - Dictate which payload you wish to be enabled (Optional) -
echo.
echo.
echo ^(1.^) Enable PHASE-2.vbs Only (Notepad opens up and types by itself.)
echo.
echo ^(2.^) Enable PHASE-2ii (Sapi Rap).vbs Only (Sapi raps along with a hip hop beat.)
echo.
echo ^(3.^) Enable PHASE-2iii (Advertisement).vbs Only (Sapi attempts to sell anti-virus to user.)
echo.
echo ^(4.^) Random -Default- (Randomly selects phases.)
echo.
echo ^(5.^) Return to main menu
echo.
echo ----------------------------------------------O
echo.
set /p mchoice=Select Number: 
if %mchoice%==1 echo %mchoice% > Phase-2-Choice.cfg & goto scrvalidate
if %mchoice%==2 echo %mchoice% > Phase-2-Choice.cfg & goto scrvalidate
if %mchoice%==3 echo %mchoice% > Phase-2-Choice.cfg & goto scrvalidate
if %mchoice%==4 del Phase-2-Choice.cfg > nul & goto scrvalidate
if %mchoice%==5 goto main
goto s1nothingselected 

:scrvalidate
cd %back%
cd Sapi-Dot-Joke
cd Cache
IF EXIST script.cfg (
echo.
) ELSE (
goto econfigure2
)
echo.
echo Script.cfg file already exists, do you wish to overwrite it?
echo.
echo ------------------------------------O
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N goto econfigure3
if %mchoice%==Y del script.cfg & goto econfigure2
if %mchoice%==n goto econfigure3
if %mchoice%==y del script.cfg & goto econfigure2
goto nothingselected

:econfigure2
cls
cd %back%
cd Sapi-Dot-Joke
cd Cache
set mchoice= 
del select.temp
color 7
echo.
echo o=o=o=o=o=o=o
echo  CONFIGURE II 
echo o=o=o=o=o=o=o
echo.
echo ----------------------------O
echo.
echo - Choose which script you wish to be activated, you can only select one. -
echo.
echo.
echo ^(1.^) ADVENTURE.vbs
echo.
echo ^(2.^) ADVENTURE Timed.vbs
echo.
echo ^(3.^) ADVENTURE (In the Hall of Mountain King Edition).vbs
echo.
echo ^(4.^) Return to main menu
echo.
echo ----------------------------O
echo.
set /p mchoice=Select Number: 
if %mchoice%==1 echo %mchoice% > script.cfg & goto econfigure3 
if %mchoice%==2 echo %mchoice% > script.cfg & goto timed1
if %mchoice%==3 echo %mchoice% > script.cfg & goto econfigure3 
if %mchoice%==4 goto main
goto e2nothingselected 

:timed1
echo.
echo -----------O
echo.
echo Enter initial delay time in minutes
echo.
echo Ex: 5
echo.
echo.
set /p mchoice=Type Minutes^(s^): 
cd %back%
cd Sapi-Dot-Joke
cd Cache
set x=6
set /a time=%mchoice%0000*x
echo %time% > Time.cfg
echo.
echo %mchoice% minutes will be implemented
timeout 2 > nul

:econfigure3
cls
cd %back%
cd Sapi-Dot-Joke
cd Cache
set mchoice= 
color 7
echo.
echo o=o=o=o=o=o=o=o
echo  CONFIGURE III 
echo o=o=o=o=o=o=o=o
echo.
echo -----------------------------------O
echo.
echo Configurations okay?
echo.
echo.
echo - Settings Number^(s^):
type settings.cfg
echo.
echo - Script Number:
type script.cfg
echo.
echo - Time Delay ^(For timed script.^):
for /f "usebackq delims=" %%x in ( Time.cfg ) do ( 
	set c=%%x
	set d=60000
	set /a math=c/d
	echo !math! minutes
	)
if %errorlevel%==1 echo Time undefined.
echo.
echo -----------------------------------O
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N del settings.cfg & del script.cfg & del select.temp & set %maxamountmsg%= & GOTO express1
if %mchoice%==Y GOTO eactivate
if %mchoice%==n del settings.cfg & del script.cfg & del select.temp & set %maxamountmsg%= & GOTO express1
if %mchoice%==y GOTO eactivate
if %mchoice%==exit exit
GOTO e3nothingselected

:eactivate
echo.
echo.
echo --------------O
echo.
echo Activate Express Start?
echo.
echo This will turn the PartyStarta.bat into an instant initiation button to start the Sapi-Dot-Joke along with the configurations made, to undo it, simply go to the Cache folder and delete express.cfg to deactivate it.
echo.
echo --------------O
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N echo N >> express.cfg & GOTO intro
if %mchoice%==Y GOTO emake
if %mchoice%==n echo N >> express.cfg & GOTO intro
if %mchoice%==y GOTO emake
if %mchoice%==exit exit
GOTO e4nothingselected

:emake
cd %back%
cd Sapi-Dot-Joke
cd Cache
echo.
echo --------------O
echo.
echo Creating express.cfg file
echo.
echo Y >> express.cfg
cd ..
cd ..
ren PartyStarta.bat Estart.bat
echo.
echo PartyStarta.bat successfully converted.
echo.
echo --------------O
echo.
echo Press any key to exit...
pause > nul
exit

:expressgo
setlocal
cls
cd %back%
cd Sapi-Dot-Joke
cd Engine 
set back1=%cd%
cd ..
cd Cache
move Time.cfg %back1% > nul
move PHASE-2-Choice.cfg %back1% > nul
set key=express
for /F "usebackq delims=" %%a in ("settings.cfg") do ( 
cd ..
cd Settings
CALL :%%a
)
cd ..
cd Cache
FOR /F "usebackq delims=" %%g in ("script.cfg") do ( set script=%%g ) 
cd ..
cd Engine
if %script%==1 goto launch1
if %script%==2 goto launch2
if %script%==3 goto launch3
exit

:: SCRIPTS ::
:scripts
cls
cd %back%
cd Sapi-Dot-Joke
cd Engine
color 7
echo.
echo -===========-
echo :  SCRIPTS  :
echo -===========-
echo.
echo -----------------------O
echo.
echo - Start the Sapi-Dot-Joke -
echo.
echo.
echo ^(1.^) ADVENTURE.vbs
echo.
echo ^(2.^) ADVENTURE Timed.vbs
echo.
echo ^(3.^) ADVENTURE (In the Hall of Mountain King Edition).vbs
echo.
echo ^(4.^) Return to main menu
echo.
echo -----------------------O
echo.
set /p mchoice=Select Number: 
if %mchoice%==1 GOTO one
if %mchoice%==2 GOTO two
if %mchoice%==3 GOTO three
if %mchoice%==4 GOTO main
goto scriptnoselect

:one
echo.
echo ----------------------O
echo.
echo Are you sure you want to start ADVENTURE.vbs?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N echo. & echo Cancled. & timeout 1 > nul & GOTO main
if %mchoice%==Y GOTO launch1
if %mchoice%==n echo. & echo Cancled. & timeout 1 > nul & GOTO main
if %mchoice%==y GOTO launch1
GOTO nothingselected
::===================
:launch1
echo.
echo ADVENTURE.vbs is starting...
timeout 1 > nul
Start ADVENTURE.vbs
echo.
echo STARTED!
timeout 1
goto hide
\\\\\\\\\\\\\\\\\\\\\


/////////////////////
:two
echo.
echo ----------------------O
echo.
echo Are you sure you want to start ADVENTURE Timed.vbs?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N echo. & echo Cancled. & timeout 1 > nul & GOTO main
if %mchoice%==Y GOTO timed
if %mchoice%==n echo. & echo Cancled. & timeout 1 > nul & GOTO main
if %mchoice%==y GOTO timed
GOTO nothingselected
:timed
echo.
echo -----------O
echo.
echo Enter initial delay time in minutes
echo.
echo Ex: 5
echo.
echo.
set /p mchoice=Type Minutes^(s^): 
cd %back%
cd Sapi-Dot-Joke
cd Engine
set x=6
set /a time=%mchoice%0000*x
echo %time% > Time.cfg
echo.
echo %time% minutes will be implemented.
timeout 1 > nul
::====================
:launch2
echo.
echo ADVENTURE Timed.vbs is starting.
timeout 1 > nul
start "" "ADVENTURE Timed.vbs"
echo STARTED!
timeout 1
goto hide
\\\\\\\\\\\\\\\\\\\\\


/////////////////////
:three
echo.
echo ----------------------O
echo.
echo Are you sure you want to start ADVENTURE (In the hall of mountain king edition).vbs?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N echo. & echo Cancled. & timeout 1 > nul & GOTO main
if %mchoice%==Y GOTO launch4
if %mchoice%==n echo. & echo Cancled. & timeout 1 > nul & GOTO main
if %mchoice%==y GOTO launch4
GOTO nothingselected
::======================
:launch3
echo.
echo ADVENTURE (In the hall of mountain king edition).vbs is starting.
echo.
echo Have the music ready!
timeout 1 > nul
start "" "ADVENTURE (In the hall of mountain king edition).vbs"
echo.
echo STARTED!
timeout 1
goto hide
\\\\\\\\\\\\\\\\\\\\\

:test
echo.
echo ----------------------
cd..
echo %mchoice% was selected.
echo createobject("wscript.shell"^).popup "it worked!!!", -1,"title" > TestFile.vbs
timeout 2 > nul
Start TestFile.vbs
echo.
echo STARTED!
timeout 3
GOTO main

:: NUKE ::
:nuke
cls
color c
echo.
echo === WARNING! ===
echo.
echo Are you sure you want to nuke this virus? 
echo.
echo The entire folder and it's contents will be deleted.
echo.
echo ---------------O
echo.
echo Type Y or N
echo.
color e
color c
color e
color c
color e
color c
set /p mchoice=Select: 
if %mchoice%==n echo. & color 7 & echo Cancled. (Whew... THAT WAS CLOSE!!!) & timeout 1 > nul & GOTO main
if %mchoice%==y GOTO delete
GOTO nothingselected
:delete
echo. 
echo Genie does as you wish.
echo.
echo Powering on the nuke launching system...
cd %back%
cd Sapi-Dot-Joke
cd Engine
cd StartupScripts
start /min AutoRemoveStartupShortcut.bat 
cd "Manual Nuke"
start /min ManualTRIGGER.bat 
echo.
echo countdown till initiation:
timeout 5 
echo.
echo Executing console...
start "" "LAUNCH BUTTON.vbs"
cd %back%
timeout 1 > nul
del PartyStarta.bat /f /q
del Estart.bat /f /q
exit

:hide
cls
echo.
echo Scripts started.
echo.
echo If the Nuke was activated, PartyStarta.bat will be hidden and will be soon self deleted.
echo.
cd %back%
cd Sapi-Dot-Joke
cd Engine
cd StartupScripts
IF EXIST Nuke.bat (
cd ..
cd ..
cd ..
attrib +h PartyStarta.bat > nul
attrib +h Estart.bat > nul
timeout 1 > nul
exit
) ELSE (
timeout 1 > nul
exit
)

:: SETTINGS ::
:settings
title Sapi-Dot-Joke Command Line
cd %back%
cd Sapi-Dot-Joke
cd Settings
cls
color 7
echo.
echo -==========-
echo : SETTINGS :  - Page: 1 -
echo -==========-
echo.
echo ----------------------------------------------------------------------------------0
echo.
echo ^(1.^) DeactivatedNuke.bat (Prevents the Sapi-Dot-Joke from self-deleting after finish, disables auto-hiding.)
echo.
echo ^(2.^) NoLoudNoises.bat (Disables forced volume increasers and lowers loud sounds.)
echo.
echo ^(3.^) DisableStartupScript.bat (Disables the startup scripts that trigger when the user logs back in.)
echo.
echo ^(4.^) DisableChangeWallpaper.bat (Disables the wallpaper change script.)
echo.
echo ^(5.^) DisableDiskTrayLoop.bat (Disables the script that repeatedly opens and closes computer disk tray.)
echo.
echo ^(6.^) DisableShutdown.bat (Disables the script that shuts down the computer.)
echo.
echo ^(7.^) Select all settings (Activates all settings at once.)
echo.
echo ^(8.^) RestoreDefaults.bat (Restores all settings back to default.)
echo.
echo ^(9.^) Check.bat (Checks whether settings are enabled or disabled.)
echo.
echo ^(10.^) Next Page
echo.
echo ^(11.^) Return to main menu (Returns to main menu.)
echo.
echo ----------------------------------------------------------------------------------0
echo.
set /p mchoice=Select Number: 
if %mchoice%==1 goto disablenuke
if %mchoice%==2 goto noloud
if %mchoice%==3 goto nostartup
if %mchoice%==4 goto nowallpaper
if %mchoice%==5 goto nodiskloop
if %mchoice%==6 goto noshutdown
if %mchoice%==7 goto activeall
if %mchoice%==8 goto restore
if %mchoice%==9 goto check
if %mchoice%==10 goto Pdictator
if %mchoice%==11 goto main
if %mchoice%==cd.. goto main
if %mchoice%==back goto main
goto settingsnothingselected

:Pdictator
cls
cd %back%
cd Sapi-Dot-Joke
cd Settings
color 7
echo.
echo -==========-
echo : SETTINGS :  - Page: 2 -
echo -==========-
echo.
echo ----------------------------------------------------------------------------------0
echo.
echo - Dictate which payload you wish to be enabled. (Optional) -
echo.
echo ^(1.^) Enable PHASE-2.vbs Only (Notepad opens up and types by itself.)
echo.
echo ^(2.^) Enable PHASE-2ii-Sapi-Rap.vbs Only (Sapi raps along with a hip hop beat.)
echo.
echo ^(3.^) Enable PHASE-2iii-Advertisement.vbs Only (Sapi attempts to sell anti-virus to user.)
echo.
echo ^(4.^) Random *Default* (Randomly selects phases.)
echo.
echo ^(5.^) Back
echo.
echo ^(6.^) Return to main menu
echo.
echo ----------------------------------------------------------------------------------0
echo.
set /p mchoice=Select Number: 
if %mchoice%==1 cd .. & cd Engine & echo %mchoice% > Phase-2-Choice.cfg & echo. & echo %mchoice% was Selected. & timeout 2 > nul & goto pdictator
if %mchoice%==2 cd .. & cd Engine & echo %mchoice% > Phase-2-Choice.cfg & echo. & echo %mchoice% was Selected. & timeout 2 > nul & goto pdictator
if %mchoice%==3 cd .. & cd Engine & echo %mchoice% > Phase-2-Choice.cfg & echo. & echo %mchoice% was Selected. & timeout 2 > nul & goto pdictator
if %mchoice%==4 cd .. & cd Engine & del Phase-2-Choice.cfg > nul & cd .. cd Cache & del Phase-2-Choice.cfg > nul & echo %mchoice% was Selected. & timeout 2 > nul & goto pdictator
if %mchoice%==5 goto settings
if %mchoice%==6 goto main
goto settingsnothingselected

:disablenuke
echo.
echo ---------------O
echo.
echo Are you sure you want to deactivate the nuke?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N goto settings
if %mchoice%==Y goto activatenuke
if %mchoice%==n goto settings
if %mchoice%==y goto activatenuke
goto nothingselected
:deactivatenuke
echo.
echo Deactivating nuke...
echo.
start /min DeactivateNuke.bat
echo.
timeout 2 > nul
type Activated.txt
timeout 3 > nul
goto settings
:1
start /min DeactivateNuke.bat
goto :eof

:noloud
echo.
echo ---------------O
echo.
echo Are you sure you want to disable loud noises?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N goto settings
if %mchoice%==Y goto disablenoise
if %mchoice%==n goto settings
if %mchoice%==y goto disablenoise
goto nothingselected
:disablenoise
echo.
echo Saving changes...
echo.
start /min NoLoudNoises.bat
echo.
timeout 1 > nul
echo Done.
timeout 2 > nul
goto settings
:2
start /min NoLoudNoises.bat
goto :eof

:nostartup
echo.
echo ---------------O
echo.
echo Are you sure you want to disable the startup scripts?
echo.
echo Type Y or N
echo.
set /p mchoice=Select:
if %mchoice%==N goto settings
if %mchoice%==Y goto disablestart 
if %mchoice%==n goto settings
if %mchoice%==y goto disablestart
goto nothingselected
:disablestart
echo.
echo Saving changes...
echo.
start /min DisableStartupScript.bat
echo.
timeout 1 > nul
echo Done.
timeout 2 > nul
goto settings
:3
start /min DisableStartupScript.bat
goto :eof

:nowallpaper
echo.
echo ---------------O
echo.
echo Are you sure you want to disable changewallpaper.ps1?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N goto settings
if %mchoice%==Y goto disablewallpaper
if %mchoice%==n goto settings
if %mchoice%==y goto disablewallpaper
goto nothingselected
:disablewallpaper
echo.
echo Saving changes...
echo.
start /min DisableChangeWallpaper.bat
timeout 1 > nul
echo Done.
timeout 2 > nul
goto settings
:4
start /min DisableChangeWallpaper.bat
goto :eof

:nodiskloop
echo.
echo ---------------O
echo.
echo Are you sure you want to disable DiskTrayLoop.vbs?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N goto settings
if %mchoice%==Y goto disablediskloop
if %mchoice%==n goto settings
if %mchoice%==y goto disablediskloop
goto nothingselected
:disablediskloop
echo.
echo Saving changes...
echo.
start /min DisableDiskTrayLoop.bat
echo.
timeout 1 > nul
echo Done.
timeout 2 > nul
goto settings
:5
start /min DisableDiskTrayLoop.bat
goto :eof

:noshutdown
echo.
echo ---------------O
echo.
echo Are you sure you want to disable the shutdown trigger?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N goto settings
if %mchoice%==Y goto disableshutdown
if %mchoice%==n goto settings
if %mchoice%==y goto disableshutdown
goto nothingselected
:disableshutdown
echo.
echo Saving changes...
echo.
start /min DisableShutdown.bat
echo.
timeout 1 > nul
echo Done.
timeout 2 > nul
goto settings
:6
start /min DisableShutdown.bat
goto :eof

:activeall
echo.
echo ---------------O
echo.
echo Are you sure you want to activate all settings?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N goto activeallconfirmed
if %mchoice%==Y goto disableshutdown
if %mchoice%==n goto activeallconfirmed
if %mchoice%==y goto disableshutdown
goto nothingselected
:activeallconfirmed
cd %back%
cd Sapi-Dot-Joke
cd Settings
echo.
echo Saving changes...
echo.
start /min DeactivateNuke.bat
start /min NoLoudNoises.bat
start /min DisableStartupScript.bat
start /min DisableChangeWallpaper.bat
start /min DisableDiskTrayLoop.bat
start /min DisableShutdown.bat
echo.
timeout 1 > nul
echo Done.
timeout 2 > nul
goto settings

:check
cd %back%
cd Sapi-Dot-Joke
cd Settings
cmd /q /c break off & call CHECK.bat
echo.
goto settings > nul

:restore
echo.
echo ---------------O
echo.
echo Are you sure you want to restore settings back to default?
echo.
echo Type Y or N
echo.
set /p mchoice=Select: 
if %mchoice%==N goto settings
if %mchoice%==Y goto reset
if %mchoice%==n goto settings
if %mchoice%==y goto reset
goto nothingselected
:reset
echo.
echo Saving changes...
echo.
start /min RestoreDefaults.bat
echo.
timeout 1 > nul
echo Default settings will restore in a few moments...
timeout 2 > nul
goto settings

:: COMMAND PROMPT ::
:cmd
set /p cmd="%cd%>"
%cmd%
echo.
GOTO cmd

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 

:: ERRORS ::
:inprocess
cls
cd %back%
cd Sapi-Dot-Joke
color 7
echo.
echo.
echo Sapi-Dot-Joke is already running...
echo.
echo.
echo -------------------------------------------------O
echo.
echo ^(1.^) Go to Command Line
echo.
echo ^(2.^) PANIC-BUTTON.bat *STOPS ALL SCRIPTS.*
echo.
echo ^(3.^) Exit PartyStarta
echo.
echo -------------------------------------------------O
echo.
echo.%choice1%
echo.
set /p mchoice=Select Number: 
if %mchoice%==1 goto main
if %mchoice%==2 echo. & call PANIC-BUTTON.bat
if %mchoice%==3 exit
set choice1=Error: Wrong selection
goto inprocess

:nothingselected
cls
color c
echo.
echo			     Error
echo.
echo 		Wrong selection!
echo.
echo -------------------------------------------------O
timeout 3 > nul
cls
color 7
GOTO main

:enothingselected
cls
set mchoice= 
set/a amountnum=0
set maxamountmsg= 
color c
echo.
echo			     Error
echo.
echo 		Wrong selection!
echo.
echo -------------------------------------------------O
timeout 3 > nul
cls
color 7
GOTO skip

:e2nothingselected
cls
color c
echo.
echo			     Error
echo.
echo 		Wrong selection!
echo.
echo -------------------------------------------------O
timeout 3 > nul
cls
color 7
GOTO econfigure2

:e3nothingselected
cls
color c
echo.
echo			     Error
echo.
echo 		Wrong selection!
echo.
echo -------------------------------------------------O
timeout 3 > nul
cls
color 7
GOTO econfigure3

:e4nothingselected
cls
color c
echo.
echo			     Error
echo.
echo 		Wrong selection!
echo.
echo -------------------------------------------------O
timeout 3 > nul
cls
color 7
GOTO eactivate

:intronothingselected
cls
color c
echo.
echo			     Error
echo.
echo 		Wrong selection!
echo.
echo -------------------------------------------------O
timeout 3 > nul
cls
color 7
GOTO intro

:settingsnothingselected
cls
color c
echo.
echo			     Error
echo.
echo 		Wrong selection!
echo.
echo -------------------------------------------------O
timeout 3 > nul
cls
color 7
GOTO settings

:scriptnoselect
cls
color c
echo.
echo			     Error
echo.
echo 		Wrong selection!
echo.
echo -------------------------------------------------O
timeout 3 > nul
cls
color 7
GOTO Scripts

:s1nothingselected 
cls
color c
echo.
echo			     Error
echo.
echo 		Wrong selection!
echo.
echo -------------------------------------------------O
timeout 3 > nul
cls
color 7
goto subeconfig1

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 

:: UNUSED CONCEPT ::
:selfdestruct
cd %back%
copy /y %back%\PartyStarta!.bat %back%\Sapi-Dot-Joke\
del /f /q PartyStarta!.bat
exit

:ricordanza
cls
color 0a
endlocal
title Super Secret Message
echo.
echo Fake trojan easter egg?^!
:: Not really and easter egg now that you're going through the code... thanks for spoiling it jerk.
echo.
echo -------------------------------------------------O
echo.
echo Sapi-Dot-Joke 2019-2022, 3 Years^! My first and BIGGEST coding project yet, a virus prank project that went out of control. 
echo No, it didn't actually take me 2 years, I just got lazy here and there.
echo This is pretty much an exagorated parody of bad malware, though this is still an awesome prank.
echo The song: "Sapi - Virus Detected" was written and produced by DukeZilla ^<---(Me)
echo Had so much fun making this, original dates are written as this is a monumant of cherished high school memories.
echo About 596 hours of classical music was listened to while making this.
echo Thanks for reading, be sure to check out github.com/dukezilla in case I felt like making something new.
echo.
echo Made with love ^<3
echo.
echo ^~ DukeZilla
echo.
echo.
pause
cls
title Sapi-Dot-Joke Command Line
setlocal
goto intro

:: Original Creation Date: 2/11/2020 2:33 PM ::
:: Made with love by DukeZilla

:: Jesus is Lord!
:: Accept him before it's too late, rapture is near...
:: Repent.

:: \\\\\\\\\\\\\\\\\\\\ ::