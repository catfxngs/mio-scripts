@echo off&mode 71,30&title PokeBatch&color 07&pushd "%~dp0"&setlocal Enabledelayedexpansion
::I will update the game often at http://pastebin.com/qhgTGvUF5
::NEW, BETTER, 2D VERSION AT https://pastebin.com/Rmf9t2Js
:Compressed-lines
set ln=ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
set cl=##################################################
set "p=&pause>nul"
set g=Go to 
set n= [NORTH]
set e= [EAST]
set s= [SOUTH]
set w= [WEST]
set l=Look for wild pkmn
set r=Route 
:Memory-options
cls
echo !ln!
echo Memory options
echo !ln!
echo.
echo [1] New game
echo [2] Continue
echo [3] Instructions
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Start-1
if !errorlevel! equ 2 goto Load-menu
if !errorlevel! equ 3 goto Instructions
:Instructions
cls
echo !ln!
echo PokeBatch - The pkmn experience in Batch - Version 10-10-2017
echo !ln!
echo.
echo NEW, BETTER, 2D VERSION AT https://pastebin.com/Rmf9t2Js
echo.
echo If the game asks you a question, answer it, with a word or a number
echo.
echo You can save in pkmn centers
echo.
echo Be aware that if you dont type anything and hit enter, the game will
echo use your last entry
echo.
echo Good luck ;)%p%
goto Memory-options
:Load-menu
cls
echo !ln!
echo Load menu
echo !ln!
echo.
echo What was your name in the saved game?
set /p oldname=
if '!oldname!'=='' goto Load-menu
echo.
echo Loading !oldname!.txt...
(
set /p music=
set /p name=
set /p starter=
set /p rival=
set /p rivalstarter=
set /p money=
set /p potions=
set /p fishingrod=
set /p HM-surf=
set /p HM-fly=
set /p HM-cut=
set /p location=
set /p sublocation=
set /p exp=
set /p exptill=
set /p badges=
set /p bikevoucher=
set /p bike=
set /p pkmnstorage=
set /p pokeballs=
set /p rivalencounters=
set /p ss-anne=
set /p color=
set /p snorlaks1=
set /p snorlaks2=
set /p pkmn1=
set /p pkmn1lvl=
set /p pkmn2=
set /p pkmn2lvl=
set /p pkmn3=
set /p pkmn3lvl=
set /p pkmn4=
set /p pkmn4lvl=
set /p pkmn5=
set /p pkmn5lvl=
set /p pkmn6=
set /p pkmn6lvl=
set /p pkmn7=
set /p pkmn7lvl=
set /p pkmn8=
set /p pkmn8lvl=
set /p pkmn9=
set /p pkmn9lvl=
set /p pkmn10=1
set /p pkmn10lvl=
set /p pkmn11=
set /p pkmn11lvl=
set /p pkmn12=
set /p pkmn12lvl=
set /p pkmn13=
set /p pkmn13lvl=
set /p pkmn14=
set /p pkmn14lvl=
set /p pkmn15=
set /p pkmn15lvl=
set /p pkmn16=
set /p pkmn16lvl=
set /p pkmn17=
set /p pkmn17lvl=
set /p pkmn18=
set /p pkmn18lvl=
set /p pkmn19=
set /p pkmn19lvl=
set /p pkmn20=
set /p pkmn20lvl=
set /p invpkmn1=
set /p invpkmn1lvl=
set /p invpkmn1hp=
set /p invpkmn2=
set /p invpkmn2lvl=
set /p invpkmn2hp=
set /p invpkmn3=
set /p invpkmn3lvl=
set /p invpkmn3hp=
set /p invpkmn4=
set /p invpkmn4lvl=
set /p invpkmn4hp=
set /p invpkmn5=
set /p invpkmn5lvl=
set /p invpkmn5hp=
set /p invpkmn6=
set /p invpkmn6lvl=
set /p invpkmn6hp=
set /p trainer-SS-anne-floor-1-1=
set /p trainer-SS-anne-floor-1-2=
set /p trainer-SS-anne-floor-1-6=
set /p trainer-SS-anne-floor-2-3=
set /p trainer-SS-anne-floor-2-4=
set /p profoakparcel=
set /p Trainer-route-3=
set /p Trainer-route-24=
set /p Trainer-mt-moon=
set /p inventory=
set /p guardwater=
set /p Silphscope=
set /p coins=
set /p Trainer-Rocket-Hideout-floor-4=
set /p lift-key=
set /p Trainer-Rocket-Hideout-Giovanni=
set /p pkmn1nick=
set /p pkmn2nick=
set /p pkmn3nick=
set /p pkmn4nick=
set /p pkmn5nick=
set /p pkmn6nick=
set /p pkmn7nick=
set /p pkmn8nick=
set /p pkmn9nick=
set /p pkmn10nick=
set /p pkmn11nick=
set /p pkmn12nick=
set /p pkmn13nick=
set /p pkmn14nick=
set /p pkmn15nick=
set /p pkmn16nick=
set /p pkmn17nick=
set /p pkmn18nick=
set /p pkmn19nick=
set /p pkmn20nick=
set /p invpkmn1nick=
set /p invpkmn2nick=
set /p invpkmn3nick=
set /p invpkmn4nick=
set /p invpkmn5nick=
set /p invpkmn6nick=
)<!oldname!.txt
set SoundURL=Jigglypuff-s-song.mp3
if /I not !name! equ !oldname! (cls
echo !ln!
echo Loading error
echo !ln!
echo.
echo The saved game with that name does not exist%p%&goto Memory-options)
timeout 1 >nul
echo.
echo Loading done&timeout 1 >nul
if !color! equ 1 color 07
if !color! equ 0 (
if !starter! equ BULBASAUR color 27
if !starter! equ SQUIRTLE color 97
if !starter! equ CHARMANDER color 47
if !starter! equ PIKACHU color 67
if !starter! equ EEVEE color 57)
if !music! equ 1 taskkill /FI "windowtitle eq terminator">nul&start sound.vbs !SoundURL!&start /min terminator.bat
goto !location!
:Save-menu
cls
echo !ln!
echo Save menu
echo !ln!
echo.
echo Saving !name!.txt...
(
echo !music!
echo !name!
echo !starter!
echo !rival!
echo !rivalstarter!
echo !money!
echo !potions!
echo !fishingrod!
echo !HM-surf!
echo !HM-fly!
echo !HM-cut!
echo !location!
echo !sublocation!
echo !exp!
echo !exptill!
echo !badges!
echo !bikevoucher!
echo !bike!
echo !pkmnstorage!
echo !pokeballs!
echo !rivalencounters!
echo !ss-anne!
echo !color!
echo !snorlaks1!
echo !snorlaks2!
echo !pkmn1!
echo !pkmn1lvl!
echo !pkmn2!
echo !pkmn2lvl!
echo !pkmn3!
echo !pkmn3lvl!
echo !pkmn4!
echo !pkmn4lvl!
echo !pkmn5!
echo !pkmn5lvl!
echo !pkmn6!
echo !pkmn6lvl!
echo !pkmn7!
echo !pkmn7lvl!
echo !pkmn8!
echo !pkmn8lvl!
echo !pkmn9!
echo !pkmn9lvl!
echo !pkmn10!
echo !pkmn10lvl!
echo !pkmn11!
echo !pkmn11lvl!
echo !pkmn12!
echo !pkmn12lvl!
echo !pkmn13!
echo !pkmn13lvl!
echo !pkmn14!
echo !pkmn14lvl!
echo !pkmn15!
echo !pkmn15lvl!
echo !pkmn16!
echo !pkmn16lvl!
echo !pkmn17!
echo !pkmn17lvl!
echo !pkmn18!
echo !pkmn18lvl!
echo !pkmn19!
echo !pkmn19lvl!
echo !pkmn20!
echo !pkmn20lvl!
echo !invpkmn1!
echo !invpkmn1lvl!
echo !invpkmn1hp!
echo !invpkmn2!
echo !invpkmn2lvl!
echo !invpkmn2hp!
echo !invpkmn3!
echo !invpkmn3lvl!
echo !invpkmn3hp!
echo !invpkmn4!
echo !invpkmn4lvl!
echo !invpkmn4hp!
echo !invpkmn5!
echo !invpkmn5lvl!
echo !invpkmn5hp!
echo !invpkmn6!
echo !invpkmn6lvl!
echo !invpkmn6hp!
echo !trainer-SS-anne-floor-1-1!
echo !trainer-SS-anne-floor-1-2!
echo !trainer-SS-anne-floor-1-6!
echo !trainer-SS-anne-floor-2-3!
echo !trainer-SS-anne-floor-2-4!
echo !profoakparcel!
echo !Trainer-route-3!
echo !Trainer-route-24!
echo !Trainer-mt-moon!
echo !inventory!
echo !guardwater!
echo !Silphscope!
echo !coins!
echo !Trainer-Rocket-Hideout-floor-4!
echo !lift-key!
echo !Trainer-Rocket-Hideout-Giovanni!
echo !pkmn1nick!
echo !pkmn2nick!
echo !pkmn3nick!
echo !pkmn4nick!
echo !pkmn5nick!
echo !pkmn6nick!
echo !pkmn7nick!
echo !pkmn8nick!
echo !pkmn9nick!
echo !pkmn10nick!
echo !pkmn11nick!
echo !pkmn12nick!
echo !pkmn13nick!
echo !pkmn14nick!
echo !pkmn15nick!
echo !pkmn16nick!
echo !pkmn17nick!
echo !pkmn18nick!
echo !pkmn19nick!
echo !pkmn20nick!
echo !invpkmn1nick!
echo !invpkmn2nick!
echo !invpkmn3nick!
echo !invpkmn4nick!
echo !invpkmn5nick!
echo !invpkmn6nick!
)>!name!.txt
timeout 1 >nul
echo.
echo Saving done
timeout 1 >nul
if '!sublocation!'=='pkmn-Center-4a' goto !sublocation!
if '!pkmnbattle!' equ 1 goto wild-pkmn-battle-switch-check
if '!pkmnbattle!' equ 2 goto Gym-battle-switch-check
if '!pkmnbattle!' equ 3 goto Trainer-pkmn-switch-check
if '!pkmnbattle!' equ 4 goto rival-battle-switch-check
goto !sublocation!
:Start-1
cls
echo !ln!
echo Music options
echo !ln!&
echo.
echo [1] Disable music
echo [2] Enable music
echo [3] Go back
choice /c 123 /n>nul
if !errorlevel! equ 1 set music=0&goto Start-2
if !errorlevel! equ 2 goto Start-1-1
if !errorlevel! equ 3 goto Memory-options
:Start-1-1
if not exist heal.mp3 (set music=0
cls&echo You do not have all the audio files installed, music will be disabled%p%&goto start-2)
set music=1
:Createsoundvbs
if exist sound.vbs goto Createterminatorbat
echo Set args=WScript.Arguments>sound.vbs
echo arg1=args.Item(0)>>sound.vbs
echo main>>sound.vbs
echo sub main>>sound.vbs
echo do>>sound.vbs
echo Set Sound=CreateObject("WMPlayer.OCX.7")>>sound.vbs
echo Sound.URL=""^&arg1^&"">>sound.vbs
echo Sound.Controls.play>>sound.vbs
echo do while Sound.currentmedia.duration=0 >>sound.vbs
echo wscript.sleep 100>>sound.vbs
echo loop>>sound.vbs
echo wscript.sleep (int(Sound.currentmedia.duration)+1)*1000>>sound.vbs
echo loop>>sound.vbs
echo end sub>>sound.vbs
:Createterminatorbat
if exist terminator.bat goto Start-2
echo @echo off >terminator.bat
echo title terminator2 >>terminator.bat
echo @mode 23,2 >>terminator.bat
echo FOR /F "tokens=2 delims= " !!!!A IN (^'TASKLIST /FI ^"WINDOWTITLE eq PokeBatch^" /NH^') DO SET tid=!!!!A >>terminator.bat
echo :loop >>terminator.bat
echo cls >>terminator.bat
echo ^time^out ^1 ^>nul >>terminator.bat
echo FOR /F "tokens=2 delims= " !!!!B IN (^'TASKLIST /FI ^"WINDOWTITLE eq PokeBatch^" /NH^') DO SET dit=!!!!B >>terminator.bat
echo ^if ^not !!tid!! ^equ !!dit!! ^taskkill /f /im wscript.exe ^& exit >>terminator.bat
echo ^goto ^loop >>terminator.bat
:Start-2
set fishingrod=0
set HM-surf=0
set HM-fly=0
set HM-cut=0
set money=2000
set potions=1
set badges=0
set bikevoucher=0
set bike=0
set pkmnstorage=0
set sublocation=NAN
set pokeballs=0
set exp=0
set exptill=25
set rivalstarterlvl=5
set /a rivalstarterhp=!rivalstarterlvl!*4
set rivalencounters=0
set ss-anne=0
set color=0
set snorlaks1=0
set snorlaks2=0
set pkmn1=NAN
set pkmn1lvl=NAN
set pkmn2=NAN
set pkmn2lvl=NAN
set pkmn3=NAN
set pkmn3lvl=NAN
set pkmn4=NAN
set pkmn4lvl=NAN
set pkmn5=NAN
set pkmn5lvl=NAN
set pkmn6=NAN
set pkmn6lvl=NAN
set pkmn7=NAN
set pkmn7lvl=NAN
set pkmn8=NAN
set pkmn8lvl=NAN
set pkmn9=NAN
set pkmn9lvl=NAN
set pkmn10=NAN
set pkmn10lvl=NAN
set pkmn11=NAN
set pkmn11lvl=NAN
set pkmn12=NAN
set pkmn12lvl=NAN
set pkmn13=NAN
set pkmn13lvl=NAN
set pkmn14=NAN
set pkmn14lvl=NAN
set pkmn15=NAN
set pkmn15lvl=NAN
set pkmn16=NAN
set pkmn16lvl=NAN
set pkmn17=NAN
set pkmn17lvl=NAN
set pkmn18=NAN
set pkmn18lvl=NAN
set pkmn19=NAN
set pkmn19lvl=NAN
set pkmn20=NAN
set pkmn20lvl=NAN
set invpkmn1=!starter!
set invpkmn1lvl=5
set /a invpkmn1hp=!invpkmn1lvl!*4
set invpkmn2=NAN
set invpkmn2lvl=NAN
set /a invpkmn2hp=!invpkmn2lvl!*4
set invpkmn3=NAN
set invpkmn3lvl=NAN
set /a invpkmn3hp=!invpkmn3lvl!*4
set invpkmn4=NAN
set invpkmn4lvl=NAN
set /a invpkmn4hp=!invpkmn4lvl!*4
set invpkmn5=NAN
set invpkmn5lvl=NAN
set /a invpkmn5hp=!invpkmn5lvl!*4
set invpkmn6=NAN
set invpkmn6lvl=NAN
set /a invpkmn6hp=!invpkmn6lvl!*4
set trainer-SS-anne-floor-1-1=0
set trainer-SS-anne-floor-1-2=0
set trainer-SS-anne-floor-1-6=0
set trainer-SS-anne-floor-2-3=0
set trainer-SS-anne-floor-2-4=0
set profoakparcel=0
set Trainer-route-3=0
set Trainer-route-24=0
set Trainer-mt-moon=0
set startercycle=0
set input=0
set SoundURL=Intro.mp3
set inventory=1
set guardwater=0
set Silphscope=0
set sublocation=Pallet-Town-1
set coins=280
set Trainer-Rocket-Hideout-floor-4=0
set lift-key=0
set Trainer-Rocket-Hideout-Giovanni=0
set pkmn1nick=NAN
set pkmn2nick=NAN
set pkmn3nick=NAN
set pkmn4nick=NAN
set pkmn5nick=NAN
set pkmn6nick=NAN
set pkmn7nick=NAN
set pkmn8nick=NAN
set pkmn9nick=NAN
set pkmn10nick=NAN
set pkmn11nick=NAN
set pkmn12nick=NAN
set pkmn13nick=NAN
set pkmn14nick=NAN
set pkmn15nick=NAN
set pkmn16nick=NAN
set pkmn17nick=NAN
set pkmn18nick=NAN
set pkmn19nick=NAN
set pkmn20nick=NAN
set invpkmn1nick=NAN
set invpkmn2nick=NAN
set invpkmn3nick=NAN
set invpkmn4nick=NAN
set invpkmn5nick=NAN
set invpkmn6nick=NAN
:My-name-is-Prof-Oak
if !music! equ 1 start /min terminator.bat&start sound.vbs !SoundURL!
cls&echo Prof. Oak: Hi. My name is Prof. Oak%p%
cls&echo Prof. Oak: Welcome to the wonderful world of pkmn%p%
:Name
cls&echo Prof. Oak: It seems I dont remember your name. What is it?
set /p name=
if '!name!'=='' goto Name
cls&echo Hi !name!! Its nice seeing you again%p%
:Rival-name
cls&echo Prof. Oak: I think Im getting old, could you tell me your rivals name?
set /p rival=
if '!rival!'=='' goto Rival-name
cls&echo Ah ofcourse his name was !rival!! I hope I wont forget again%p%
cls&echo !rival!: You can pick first !name!, I insist
cls&echo Prof. Oak: So !name! what are you waiting for, choose your pkmn%p%
:Starter-cycle
if !startercycle! equ 0 color 27&set invpkmn1=BULBASAUR&set starter=BULBASAUR&set rivalstarter=CHARMANDER
if !startercycle! equ 1 color 97&set invpkmn1=SQUIRTLE&set starter=SQUIRTLE&set rivalstarter=BULBASAUR
if !startercycle! equ 2 color 47&set invpkmn1=CHARMANDER&set starter=CHARMANDER&set rivalstarter=SQUIRTLE
if !startercycle! equ 3 color 67&set invpkmn1=PIKACHU&set starter=PIKACHU&set rivalstarter=EEVEE
if !startercycle! equ 4 color 57&set invpkmn1=EEVEE&set starter=EEVEE&set rivalstarter=PIKACHU
if !startercycle! GTR 4 set startercycle=0&goto starter-cycle
:Starters
cls
echo !ln!
echo                            !starter! LVL 5
echo !ln!
echo.
echo Prof. Oak: Do you want to pick !starter!?
echo.
echo [1] Choose !starter!
echo [2] Choose a different pkmn
choice /c 12 /n>nul
if !errorlevel! equ 1 cls&echo !rival!: Then I will take !rivalstarter!%p%&goto Starter-choice
set /a startercycle+=1
if !errorlevel! equ 2 goto Starter-cycle
:Starter-choice
cls&echo Prof. Oak: Would you like to give your !starter! a nickname? y/n
choice /c yn /n>nul
if !errorlevel! equ 1 set /p "invpkmn1nick=nickname="
if !errorlevel! equ 2 set invpkmn1nick=!invpkmn1!
cls&echo Prof. Oak: Congratulations, youve just become a pkmn trainer%p%
cls&echo Prof. Oak: Make sure to have fun with !invpkmn1nick!%p%
cls&echo Prof. Oak: Collect Gym badges and compete in the pkmn League%p%
cls&echo Prof. Oak: Good luck%p%
:Prof-OAKs-assignment
cls&echo Prof. Oak: Hey !name!, could you pick up my PARCEL
echo from the Viridian-City Mart?%p%
cls&echo Prof. Oak: Thanks, it would take me ages with this sore back of mine%p%
goto Pallet-Town
:Rival-battle-start
set SoundURL=Rival-appears.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set /a rivalstarterhp=!rivalstarterlvl!*4
cls&echo !rival!: Here I come^!&timeout 5 >nul
set SoundURL=Trainer.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set pkmnbattle=4
:Rival-battle
cls
echo !ln!
echo !rivalstarter! LVL: !rivalstarterlvl! HP: !rivalstarterhp!
echo !ln!
echo.
echo.
echo.
echo.
echo !ln!
echo !invpkmn1! LVL: !invpkmn1lvl! HP: !invpkmn1hp!
echo !ln!
echo.
echo [1] Strong attack
echo [2] Accurate attack
echo [3] Use a potion, you have !potions! potion(s)
echo [4] Switch pkmn
if !invpkmn1hp! LSS 1 echo !invpkmn1! fainted%p%&goto rival-battle-switch
choice /c 1234 /n>nul
if !errorlevel! equ 1 (echo.
echo !ln!
echo !name!: !invpkmn1! use Strong-attack
echo !ln!
set stronghit=!random:~-1!
if !stronghit! GTR 2 set /a rivalstarterhp-=5
if !stronghit! LSS 3 echo !invpkmn1! missed%p%
goto Rival-starter-attack-kind-calc)
if !errorlevel! equ 2 (echo.
echo !ln!
echo !name!: !invpkmn1! use Accurate-attack
echo !ln!%p%
set /a rivalstarterhp-=3
goto Rival-starter-attack-kind-calc)
if !errorlevel! equ 3 goto Rival-battle-potion
if !errorlevel! equ 4 goto Rival-battle-switch
:Rival-battle-potion
if !potions! LSS 1 echo You dont have any potions left%p%
if !potions! GTR 0 set /a potions-=1&set /a invpkmn1hp+=20
goto Rival-starter-attack-kind-calc
:Rival-starter-attack-kind-calc
if !rivalstarterhp! LSS 1 (set /a exp=!rivalstarterlvl!*5
echo.
echo !rivalstarter! fainted
echo.
echo !invpkmn1! gained some exp%p%&goto Rival-battle-victory)
set rivalstarterattackcalc=!random:~-1!
if !rivalstarterattackcalc! GTR 1 goto Rival-starter-attack-kind-calc
if !rivalstarterattackcalc! equ 0 set rivalstarterattackkind=Strong-attack&set /a invpkmn1hp-=4
if !rivalstarterattackcalc! equ 1 set rivalstarterattackkind=Accurate-attack&set /a invpkmn1hp-=3
goto Rival-turn
:Rival-turn
cls
echo !ln!
echo !rivalstarter! LVL: !rivalstarterlvl! HP: !rivalstarterhp!
echo !ln!
echo.
echo.
echo.
echo.
echo !ln!
echo !invpkmn1! LVL: !invpkmn1lvl! HP: !invpkmn1hp!
echo !ln!
echo.
echo.
echo !ln!
echo !rival!: !rivalstarter! use !rivalstarterattackkind!
echo !ln!%p%
goto Rival-battle
:Rival-battle-lost
cls&echo !rival!: Haha, you should have known !name!%p%
cls&echo !rival!: I will always be better at training pkmn than you will
echo ever be!%p%
set SoundURL=Pallet-Town.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls&echo Nurse Joy: Oh !name! your pkmn is hurt%p%
cls&echo Nurse Joy: Come with me and ill heal him with my love%p%
cls&echo Your !invpkmn1! is blushed red%p%
set /a rivalencounters+=1
set /a invpkmn1hp=!invpkmn1lvl!*4
set pkmnbattle=0
goto !location!
:Rival-battle-victory
set /a exptill=!exptill!-!exp!
if !exptill! LSS 1 (set /a invpkmn1lvl+=1
set /a exptill=!invpkmn1lvl!*5
cls&echo Your !invpkmn1! has LVLd up%p%)
cls&echo !rival!: You won this time, and only because of luck%p%
cls&echo You got $500 for winning%p%
cls&echo !rival!: Smell ya later!%p%
set /a money+=500
set pkmnbattle=0
if !location! equ SS-anne-floor-3 goto SS-anne-floor-3-1
set rivalencounter=!rivalencounter!+1
goto !sublocation!
:Rival-battle-switch
set temppkmn=NAN
set temppkmnlvl=NAN
set temppkmnhp=NAN
cls
echo !ln!
echo Inventory
echo !ln!
echo 1:!invpkmn1! LVL:!invpkmn1lvl! HP:!invpkmn1hp!
echo 2:!invpkmn2! LVL:!invpkmn2lvl! HP:!invpkmn2hp!
echo 3:!invpkmn3! LVL:!invpkmn3lvl! HP:!invpkmn3hp!
echo 4:!invpkmn4! LVL:!invpkmn4lvl! HP:!invpkmn4hp!
echo 5:!invpkmn5! LVL:!invpkmn5lvl! HP:!invpkmn5hp!
echo 6:!invpkmn6! LVL:!invpkmn6lvl! HP:!invpkmn6hp!
echo !ln!
echo.
echo [1] Act like you faint
echo [2] Switch your 1st pkmn with your 2nd pkmn
echo [3] Switch your 1st pkmn with your 3rd pkmn
echo [4] Switch your 1st pkmn with your 4th pkmn
echo [5] Switch your 1st pkmn with your 5th pkmn
echo [6] Switch your 1st pkmn with your 6th pkmn
choice /c 123456 /n>nul
if !errorlevel! equ 1 goto Rival-battle-lost
set temppkmn=!invpkmn1!&set temppkmnlvl=!invpkmn1lvl!&set temppkmnhp=!invpkmn1hp!&set pkmnbattle=2
if !errorlevel! equ 2 goto Rival-battle-switch-2
if !errorlevel! equ 3 goto Rival-battle-switch-3
if !errorlevel! equ 4 goto Rival-battle-switch-4
if !errorlevel! equ 5 goto Rival-battle-switch-5
if !errorlevel! equ 6 goto Rival-battle-switch-6
:Rival-battle-switch-2
set invpkmn1=!invpkmn2!&set invpkmn1lvl=!invpkmn2lvl!&set invpkmn1hp=!invpkmn2hp!
set invpkmn2=!temppkmn!&set invpkmn2lvl=!temppkmnlvl!&set invpkmn2hp=!temppkmnhp!
goto Rival-battle-switch-check
:Rival-battle-switch-3
set invpkmn1=!invpkmn3!&set invpkmn1lvl=!invpkmn3lvl!&set invpkmn1hp=!invpkmn3hp!
set invpkmn3=!temppkmn!&set invpkmn3lvl=!temppkmnlvl!&set invpkmn3hp=!temppkmnhp!
goto Rival-battle-switch-check
:Rival-battle-switch-4
set invpkmn1=!invpkmn4!&set invpkmn1lvl=!invpkmn4lvl!&set invpkmn1hp=!invpkmn4hp!
set invpkmn4=!temppkmn!&set invpkmn4lvl=!temppkmnlvl!&set invpkmn4hp=!temppkmnhp!
goto Rival-battle-switch-check
:Rival-battle-switch-5
set invpkmn1=!invpkmn5!&set invpkmn1lvl=!invpkmn5lvl!&set invpkmn1hp=!invpkmn5hp!
set invpkmn5=!temppkmn!&set invpkmn5lvl=!temppkmnlvl!&set invpkmn5hp=!temppkmnhp!
goto Rival-battle-switch-check
:Rival-battle-switch-6
set invpkmn1=!invpkmn6!&set invpkmn1lvl=!invpkmn6lvl!&set invpkmn1hp=!invpkmn6hp!
set invpkmn6=!temppkmn!&set invpkmn6lvl=!temppkmnlvl!&set invpkmn6hp=!temppkmnhp!
goto Rival-battle-switch-check
:Rival-battle-switch-check
if !invpkmn1hp! GTR 0 goto rival-starter-attack-kind-calc
goto Rival-battle-switch
:Wild-pkmnlvl-calc
cls&echo You are looking for a wild pkmn
echo.
echo There is one!%p%
goto Wild-pkmnlvl-calc-!sublocation!
:Wild-pkmnlvl-calc-route-1
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 6 goto Wild-pkmnlvl-calc-route-1
if !wldpkmnk! equ 0 set wildpkmn=POLIWAG
if !wldpkmnk! equ 1 set wildpkmn=SPARROW
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=SANDSHREW
if !wldpkmnk! equ 5 set wildpkmn=MANKEY
if !wldpkmnk! equ 6 set wildpkmn=DIGLETT
:Wild-pkmn-stats-route-1
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 2 goto Wild-pkmn-stats-route-1
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=2
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=3
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=4
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-2
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 4 goto Wild-pkmnlvl-calc-route-2
if !wldpkmnk! equ 0 set wildpkmn=CATERPIE
if !wldpkmnk! equ 1 set wildpkmn=NIDORAN-MALE
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=NIDORAN-FEMALE
:Wild-pkmn-stats-route-2
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 2 goto Wild-pkmn-stats-route-2
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=3
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=4
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=5
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-3
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 5 goto Wild-pkmnlvl-calc-route-3
if !wldpkmnk! equ 0 set wildpkmn=JIGGLYPUFF
if !wldpkmnk! equ 1 set wildpkmn=SPARROW
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=SANDSHREW
if !wldpkmnk! equ 5 set wildpkmn=MANKEY
:Wild-pkmn-stats-route-3
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 2 goto Wild-pkmn-stats-route-3
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=6
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=8
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=10
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-4
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 4 goto Wild-pkmnlvl-calc-route-4
if !wldpkmnk! equ 0 set wildpkmn=EKANS
if !wldpkmnk! equ 1 set wildpkmn=SPARROW
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=MANKEY
if !wldpkmnk! equ 4 set wildpkmn=SANDSHREW
:Wild-pkmn-stats-route-4
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 2 goto Wild-pkmn-stats-route-4
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=8
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=10
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=12
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-5
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 8 goto Wild-pkmnlvl-calc-route-5
if !wldpkmnk! equ 0 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 1 set wildpkmn=JIGGLYPUFF
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=ODDISH
if !wldpkmnk! equ 5 set wildpkmn=MANKEY
if !wldpkmnk! equ 6 set wildpkmn=MEOWTH
if !wldpkmnk! equ 7 set wildpkmn=ABRA
if !wldpkmnk! equ 8 set wildpkmn=BELLSPROUT
:Wild-pkmn-stats-route-5
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-route-5
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=7
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=10
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=11
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=12
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=14
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=17
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-6
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 8 goto Wild-pkmnlvl-calc-route-6
if !wldpkmnk! equ 0 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 1 set wildpkmn=JIGGLYPUFF
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=ODDISH
if !wldpkmnk! equ 5 set wildpkmn=MEOWTH
if !wldpkmnk! equ 6 set wildpkmn=MANKEY
if !wldpkmnk! equ 7 set wildpkmn=ABRA
if !wldpkmnk! equ 8 set wildpkmn=BELLSPROUT
:Wild-pkmn-stats-route-6
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 4 goto Wild-pkmn-stats-route-6
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=14
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=17
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-7
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 9 goto Wild-pkmnlvl-calc-route-7
if !wldpkmnk! equ 0 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 1 set wildpkmn=VULPIX
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=JIGGLYPUFF
if !wldpkmnk! equ 5 set wildpkmn=MANKEY
if !wldpkmnk! equ 6 set wildpkmn=MEOWTH
if !wldpkmnk! equ 7 set wildpkmn=GROWLITHE
if !wldpkmnk! equ 8 set wildpkmn=ABRA
if !wldpkmnk! equ 9 set wildpkmn=BELLSPROUT
:Wild-pkmn-stats-route-7
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 7 goto Wild-pkmn-stats-route-7
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=17
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=18
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=19
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=20
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=21
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=26
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-8
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 9 goto Wild-pkmnlvl-calc-route-8
if !wldpkmnk! equ 0 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 1 set wildpkmn=EKANS
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=VULPIX
if !wldpkmnk! equ 4 set wildpkmn=SANDSHREW
if !wldpkmnk! equ 5 set wildpkmn=MANKEY
if !wldpkmnk! equ 6 set wildpkmn=MEOWTH
if !wldpkmnk! equ 7 set wildpkmn=GROWLITHE
if !wldpkmnk! equ 8 set wildpkmn=ABRA
if !wldpkmnk! equ 9 set wildpkmn=KADABRA
:Wild-pkmn-stats-route-8
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-route-8
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=11
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=14
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=17
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=18
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=19
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=20
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-9
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 9 goto Wild-pkmnlvl-calc-route-9
if !wldpkmnk! equ 0 set wildpkmn=RATICATE
if !wldpkmnk! equ 1 set wildpkmn=SPARROW
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=FEAROW
if !wldpkmnk! equ 4 set wildpkmn=SANDSHREW
if !wldpkmnk! equ 5 set wildpkmn=EKANS
if !wldpkmnk! equ 6 set wildpkmn=NIDORAN-MALE
if !wldpkmnk! equ 7 set wildpkmn=NIDORAN-FEMALE
if !wldpkmnk! equ 8 set wildpkmn=NIDORINO
if !wldpkmnk! equ 9 set wildpkmn=NIDORINA
:Wild-pkmn-stats-route-9
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-route-9
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=11
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=14
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=17
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=18
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=19
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=20
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-10
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 9 goto Wild-pkmnlvl-calc-route-10
if !wldpkmnk! equ 0 set wildpkmn=RATICATE
if !wldpkmnk! equ 1 set wildpkmn=SPARROW
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=EKANS
if !wldpkmnk! equ 4 set wildpkmn=SANDSHREW
if !wldpkmnk! equ 5 set wildpkmn=NIDORAN-MALE
if !wldpkmnk! equ 6 set wildpkmn=NIDORAN-FEMALE
if !wldpkmnk! equ 7 set wildpkmn=MACHOP
if !wldpkmnk! equ 8 set wildpkmn=MAGNEMITE
if !wldpkmnk! equ 9 set wildpkmn=VOLTORB
:Wild-pkmn-stats-route-10
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-route-10
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=11
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=12
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=14
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=17
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=18
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=19
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=20
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-11
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 7 goto Wild-pkmnlvl-calc-route-11
if !wldpkmnk! equ 0 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 1 set wildpkmn=RATICATE
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=SPARROW
if !wldpkmnk! equ 5 set wildpkmn=EKANS
if !wldpkmnk! equ 6 set wildpkmn=SANDSHREW
if !wldpkmnk! equ 7 set wildpkmn=DROWZEE
:Wild-pkmn-stats-route-11
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-route-11
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=11
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=12
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=14
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=17
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=18
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=19
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=20
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-12
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 8 goto Wild-pkmnlvl-calc-route-12
if !wldpkmnk! equ 0 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 1 set wildpkmn=ODDISH
if !wldpkmnk! equ 2 set wildpkmn=GLOOM
if !wldpkmnk! equ 3 set wildpkmn=VENONAT
if !wldpkmnk! equ 4 set wildpkmn=BELLSPROUT
if !wldpkmnk! equ 5 set wildpkmn=WEEPINBELL
if !wldpkmnk! equ 6 set wildpkmn=FARFETCHD
if !wldpkmnk! equ 7 set wildpkmn=RATTATA
if !wldpkmnk! equ 8 set wildpkmn=PIDGEY
:Wild-pkmn-stats-route-12
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-route-12
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=26
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=27
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=29
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=31
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-13
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 8 goto Wild-pkmnlvl-calc-route-13
if !wldpkmnk! equ 0 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 1 set wildpkmn=ODDISH
if !wldpkmnk! equ 2 set wildpkmn=GLOOM
if !wldpkmnk! equ 3 set wildpkmn=VENONAT
if !wldpkmnk! equ 4 set wildpkmn=WEEPINBELL
if !wldpkmnk! equ 5 set wildpkmn=RATTATA
if !wldpkmnk! equ 6 set wildpkmn=PIDGEY
if !wldpkmnk! equ 7 set wildpkmn=DITTO
if !wldpkmnk! equ 8 set wildpkmn=BELLSPROUT
:Wild-pkmn-stats-route-13
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-route-13
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=26
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=27
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=29
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=31
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-14
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 9 goto Wild-pkmnlvl-calc-route-14
if !wldpkmnk! equ 0 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 1 set wildpkmn=ODDISH
if !wldpkmnk! equ 2 set wildpkmn=GLOOM
if !wldpkmnk! equ 3 set wildpkmn=VENONAT
if !wldpkmnk! equ 4 set wildpkmn=WEEPINBELL
if !wldpkmnk! equ 5 set wildpkmn=RATTATA
if !wldpkmnk! equ 6 set wildpkmn=PIDGEY
if !wldpkmnk! equ 7 set wildpkmn=DITTO
if !wldpkmnk! equ 8 set wildpkmn=BELLSPROUT
if !wldpkmnk! equ 9 set wildpkmn=VENOMOTH
:Wild-pkmn-stats-route-14
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-route-14
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=26
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=27
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=29
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=31
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-15
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 8 goto Wild-pkmnlvl-calc-route-15
if !wldpkmnk! equ 0 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 1 set wildpkmn=ODDISH
if !wldpkmnk! equ 2 set wildpkmn=GLOOM
if !wldpkmnk! equ 3 set wildpkmn=VENONAT
if !wldpkmnk! equ 4 set wildpkmn=WEEPINBELL
if !wldpkmnk! equ 5 set wildpkmn=RATTATA
if !wldpkmnk! equ 6 set wildpkmn=PIDGEY
if !wldpkmnk! equ 7 set wildpkmn=DITTO
if !wldpkmnk! equ 8 set wildpkmn=BELLSPROUT
:Wild-pkmn-stats-route-15
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-route-15
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=26
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=27
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=29
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=30
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-16
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 4 goto Wild-pkmnlvl-calc-route-16
if !wldpkmnk! equ 0 set wildpkmn=RATTATA
if !wldpkmnk! equ 1 set wildpkmn=RATICATE
if !wldpkmnk! equ 2 set wildpkmn=SPARROW
if !wldpkmnk! equ 3 set wildpkmn=FEAROW
if !wldpkmnk! equ 4 set wildpkmn=DODUO
:Wild-pkmn-stats-route-16
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 6 goto Wild-pkmn-stats-route-16
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=18
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=20
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=26
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-17
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 5 goto Wild-pkmnlvl-calc-route-17
if !wldpkmnk! equ 0 set wildpkmn=RATICATE
if !wldpkmnk! equ 1 set wildpkmn=SPARROW
if !wldpkmnk! equ 2 set wildpkmn=FEAROW
if !wldpkmnk! equ 3 set wildpkmn=PONYTA
if !wldpkmnk! equ 4 set wildpkmn=DODUO
if !wldpkmnk! equ 5 set wildpkmn=DODRIO
:Wild-pkmn-stats-route-17
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-route-17
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=20
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=26
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=27
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=29
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=32
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-18
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 7 goto Wild-pkmnlvl-calc-route-18
if !wldpkmnk! equ 0 set wildpkmn=RATTATA
if !wldpkmnk! equ 1 set wildpkmn=RATICATE
if !wldpkmnk! equ 2 set wildpkmn=SPARROW
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=FEAROW
if !wldpkmnk! equ 5 set wildpkmn=PONYTA
if !wldpkmnk! equ 6 set wildpkmn=DODUO
if !wldpkmnk! equ 7 set wildpkmn=DODRIO
:Wild-pkmn-stats-route-18
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-route-18
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=20
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=26
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=27
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=29
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-19
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 1 goto Wild-pkmnlvl-calc-route-19
if !wldpkmnk! equ 0 set wildpkmn=TENTACOOL
if !wldpkmnk! equ 1 set wildpkmn=TENTACRUEL
:Wild-pkmn-stats-route-19
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 7 goto Wild-pkmn-stats-route-19
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=5
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=10
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=20
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=35
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=40
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-20
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 1 goto Wild-pkmnlvl-calc-route-20
if !wldpkmnk! equ 0 set wildpkmn=TENTACOOL
if !wldpkmnk! equ 1 set wildpkmn=TENTACRUEL
:Wild-pkmn-stats-route-20
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 7 goto Wild-pkmn-stats-route-20
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=5
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=10
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=20
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=35
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=40
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-21
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 4 goto Wild-pkmnlvl-calc-route-21
if !wldpkmnk! equ 0 set wildpkmn=PIDGEY
if !wldpkmnk! equ 1 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=RATICATE
if !wldpkmnk! equ 4 set wildpkmn=TANGELA
:Wild-pkmn-stats-route-21
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-route-21
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=11
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=17
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=19
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=21
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=30
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-22
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 5 goto Wild-pkmnlvl-calc-route-22
if !wldpkmnk! equ 0 set wildpkmn=NIDORAN-MALE
if !wldpkmnk! equ 1 set wildpkmn=SPARROW
if !wldpkmnk! equ 2 set wildpkmn=RATTATA
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=NIDORAN-FEMALE
if !wldpkmnk! equ 5 set wildpkmn=MANKEY
:Wild-pkmn-stats-route-22
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 4 goto Wild-pkmn-stats-route-22
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=2
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=3
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=4
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=5
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=6
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-23
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 7 goto Wild-pkmnlvl-calc-route-23
if !wldpkmnk! equ 0 set wildpkmn=SANDSLASH
if !wldpkmnk! equ 1 set wildpkmn=SPARROW
if !wldpkmnk! equ 2 set wildpkmn=NIDORINA
if !wldpkmnk! equ 3 set wildpkmn=NIDORINO
if !wldpkmnk! equ 4 set wildpkmn=SANDSHREW
if !wldpkmnk! equ 5 set wildpkmn=MANKEY
if !wldpkmnk! equ 6 set wildpkmn=PRIMEAPE
if !wldpkmnk! equ 7 set wildpkmn=DITTO
:Wild-pkmn-stats-route-23
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 7 goto Wild-pkmn-stats-route-23
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=26
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=33
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=38
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=40
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=41
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=43
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=44
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=45
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-24
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 9 goto Wild-pkmnlvl-calc-route-24
if !wldpkmnk! equ 0 set wildpkmn=CATERPIE
if !wldpkmnk! equ 1 set wildpkmn=METAPOD
if !wldpkmnk! equ 2 set wildpkmn=WEEDLE
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=KAKUNA
if !wldpkmnk! equ 5 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 6 set wildpkmn=ODDISH
if !wldpkmnk! equ 7 set wildpkmn=VENONAT
if !wldpkmnk! equ 8 set wildpkmn=ABRA
if !wldpkmnk! equ 9 set wildpkmn=BELLSPROUT
:Wild-pkmn-stats-route-24
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-route-24
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=7
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=8
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=10
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=11
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=12
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=14
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=17
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-route-25
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 9 goto Wild-pkmnlvl-calc-route-25
if !wldpkmnk! equ 0 set wildpkmn=CATERPIE
if !wldpkmnk! equ 1 set wildpkmn=METAPOD
if !wldpkmnk! equ 2 set wildpkmn=WEEDLE
if !wldpkmnk! equ 3 set wildpkmn=PIDGEY
if !wldpkmnk! equ 4 set wildpkmn=KAKUNA
if !wldpkmnk! equ 5 set wildpkmn=PIDGEOTTO
if !wldpkmnk! equ 6 set wildpkmn=ODDISH
if !wldpkmnk! equ 7 set wildpkmn=VENONAT
if !wldpkmnk! equ 8 set wildpkmn=ABRA
if !wldpkmnk! equ 9 set wildpkmn=BELLSPROUT
:Wild-pkmn-stats-route-25
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-route-25
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=7
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=8
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=9
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=12
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=14
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=17
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-viridian-forest
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 5 goto Wild-pkmnlvl-calc-viridian-forest
if !wldpkmnk! equ 0 set wildpkmn=CATERPIE
if !wldpkmnk! equ 1 set wildpkmn=METAPOD
if !wldpkmnk! equ 2 set wildpkmn=WEEDLE
if !wldpkmnk! equ 3 set wildpkmn=KAKUNA
if !wldpkmnk! equ 4 set wildpkmn=PIDGEY
if !wldpkmnk! equ 5 set wildpkmn=PIKACHU
:Wild-pkmn-stats-viridian-forest
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 3 goto Wild-pkmn-stats-viridian-forest
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=3
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=4
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=5
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=6
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-digletts-cave
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 4 goto Wild-pkmnlvl-calc-digletts-cave
if !wldpkmnk! equ 0 set wildpkmn=DIGLETT
if !wldpkmnk! equ 1 set wildpkmn=DIGLETT
if !wldpkmnk! equ 2 set wildpkmn=DIGLETT
if !wldpkmnk! equ 3 set wildpkmn=DIGLETT
if !wldpkmnk! equ 4 set wildpkmn=DUGTRIO
:Wild-pkmn-stats-digletts-cave
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-digletts-cave
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=17
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=18
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=19
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=20
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=21
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=29
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=31
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-mt-moon
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 4 goto Wild-pkmnlvl-calc-mt-moon
if !wldpkmnk! equ 0 set wildpkmn=SANDSHREW
if !wldpkmnk! equ 1 set wildpkmn=CLEFAIRY
if !wldpkmnk! equ 2 set wildpkmn=ZUBAT
if !wldpkmnk! equ 3 set wildpkmn=PARAS
if !wldpkmnk! equ 4 set wildpkmn=GEODUDE
:Wild-pkmn-stats-mt-moon
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 7 goto Wild-pkmn-stats-mt-moon
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=6
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=7
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=8
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=9
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=10
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=11
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=12
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=13
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-rock-tunnel-floor-1
:Wild-pkmnlvl-calc-rock-tunnel-floor-1-1
:Wild-pkmnlvl-calc-rock-tunnel-floor-1-2
:Wild-pkmnlvl-calc-rock-tunnel-floor-2
:Wild-pkmnlvl-calc-rock-tunnel-floor-2-1
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 3 goto Wild-pkmnlvl-calc-rock-tunnel-floor-2-1
if !wldpkmnk! equ 0 set wildpkmn=ZUBAT
if !wldpkmnk! equ 1 set wildpkmn=GEODUDE
if !wldpkmnk! equ 2 set wildpkmn=MACHOP
if !wldpkmnk! equ 3 set wildpkmn=ONIX
:Wild-pkmn-stats-rock-tunnel
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-rock-tunnel
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=13
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=15
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=16
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=17
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=18
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=19
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=20
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=21
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=22
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-power-plant
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 8 goto Wild-pkmnlvl-calc-power-plant
if !wldpkmnk! equ 0 set wildpkmn=PIKACHU
if !wldpkmnk! equ 1 set wildpkmn=RAICHU
if !wldpkmnk! equ 2 set wildpkmn=MAGNEMITE
if !wldpkmnk! equ 3 set wildpkmn=MAGNETON
if !wldpkmnk! equ 4 set wildpkmn=GRIMER
if !wldpkmnk! equ 5 set wildpkmn=MUK
if !wldpkmnk! equ 6 set wildpkmn=VOLTORB
if !wldpkmnk! equ 7 set wildpkmn=ELACTABUZZ
if !wldpkmnk! equ 8 set wildpkmn=ELECTRODE
:Wild-pkmn-stats-power-plant
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-power-plant
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=21
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=32
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=33
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=35
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=37
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=40
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=43
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-pkmn-tower
if not !Silphscope! equ 1 set wildpkmn=GHOST
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 2 goto Wild-pkmnlvl-calc-pkmn-tower
if !wldpkmnk! equ 0 set wildpkmn=GASTLY
if !wldpkmnk! equ 1 set wildpkmn=HAUNTER
if !wldpkmnk! equ 2 set wildpkmn=CUBONE
:Wild-pkmn-stats-pkmn-tower
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-pkmn-tower
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=18
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=21
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=26
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=27
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=29
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=30
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-seafoam-island
set wldpkmnk=!random:~-2!
if !wldpkmnk! GTR 13 goto Wild-pkmnlvl-calc-seafoam-island
if !wldpkmnk! equ 0 set wildpkmn=ZUBAT
if !wldpkmnk! equ 1 set wildpkmn=GOLBAT
if !wldpkmnk! equ 2 set wildpkmn=PSYDUCK
if !wldpkmnk! equ 3 set wildpkmn=GOLDUCK
if !wldpkmnk! equ 4 set wildpkmn=SLOPOKE
if !wldpkmnk! equ 5 set wildpkmn=SLOWBRO
if !wldpkmnk! equ 6 set wildpkmn=SEEL
if !wldpkmnk! equ 7 set wildpkmn=DEWGONG
if !wldpkmnk! equ 8 set wildpkmn=SHELLDER
if !wldpkmnk! equ 9 set wildpkmn=KRABBY
if !wldpkmnk! equ 10 set wildpkmn=KINGLER
if !wldpkmnk! equ 11 set wildpkmn=HORSEA
if !wldpkmnk! equ 12 set wildpkmn=SEADRA
if !wldpkmnk! equ 13 set wildpkmn=STARYU
:Wild-pkmn-stats-seafoam-island
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-seafoam-island
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=27
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=29
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=31
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=32
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=33
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=34
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=35
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=36
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-cerulean-cave
set wldpkmnk=!random:~-2!
if !wldpkmnk! GTR 20 goto Wild-pkmnlvl-calc-cerulean-cave
if !wldpkmnk! equ 0 set wildpkmn=ARBOK
if !wldpkmnk! equ 1 set wildpkmn=RAICHU
if !wldpkmnk! equ 2 set wildpkmn=SANDSLASH
if !wldpkmnk! equ 3 set wildpkmn=GOLBAT
if !wldpkmnk! equ 4 set wildpkmn=GLOOM
if !wldpkmnk! equ 5 set wildpkmn=PARASECT
if !wldpkmnk! equ 6 set wildpkmn=VENOMOTH
if !wldpkmnk! equ 7 set wildpkmn=KADABRA
if !wldpkmnk! equ 8 set wildpkmn=WEEPINBELL
if !wldpkmnk! equ 9 set wildpkmn=HYPNO
if !wldpkmnk! equ 10 set wildpkmn=GRAVELER
if !wldpkmnk! equ 11 set wildpkmn=MAGNETON
if !wldpkmnk! equ 12 set wildpkmn=DODRIO
if !wldpkmnk! equ 13 set wildpkmn=DITTO
if !wldpkmnk! equ 14 set wildpkmn=WIGGLYTUFF
if !wldpkmnk! equ 15 set wildpkmn=ELECTRODE
if !wldpkmnk! equ 16 set wildpkmn=MAROWAK
if !wldpkmnk! equ 17 set wildpkmn=RYHORN
if !wldpkmnk! equ 18 set wildpkmn=RYDON
if !wldpkmnk! equ 19 set wildpkmn=CHANSEY
if !wldpkmnk! equ 20 set wildpkmn=LICKYTUNG
:Wild-pkmn-stats-cerulean-cave
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-cerulean-cave
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=45
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=49
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=51
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=55
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=57
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=59
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=61
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=63
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=65
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=67
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-victory-road
set wldpkmnk=!random:~-1!
if !wldpkmnk! GTR 8 goto Wild-pkmnlvl-calc-victory-road
if !wldpkmnk! equ 0 set wildpkmn=ZUBAT
if !wldpkmnk! equ 1 set wildpkmn=GOLBAT
if !wldpkmnk! equ 2 set wildpkmn=MACHOP
if !wldpkmnk! equ 3 set wildpkmn=MACHOKE
if !wldpkmnk! equ 4 set wildpkmn=GEODUDE
if !wldpkmnk! equ 5 set wildpkmn=GRAVELER
if !wldpkmnk! equ 6 set wildpkmn=ONIX
if !wldpkmnk! equ 7 set wildpkmn=MAROWAK
if !wldpkmnk! equ 8 set wildpkmn=VENOMOTH
:Wild-pkmn-stats-victory-road
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 9 goto Wild-pkmn-stats-victory-road
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=26
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=28
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=32
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=36
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=38
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=40
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=42
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=44
if !wldpkmnlvlcalc! equ 9 set wildpkmnlvl=47
goto Wild-pkmn-appeared
:Wild-pkmnlvl-calc-safari-zone
set wldpkmnk=!random:~-2!
if !wldpkmnk! GTR 19 goto Wild-pkmnlvl-calc-safari-zone
if !wldpkmnk! equ 0 set wildpkmn=NIDORAN-FEMALE
if !wldpkmnk! equ 1 set wildpkmn=NIDORAN-MALE
if !wldpkmnk! equ 2 set wildpkmn=NIDORINA
if !wldpkmnk! equ 3 set wildpkmn=NIDORINO
if !wldpkmnk! equ 4 set wildpkmn=PARAS
if !wldpkmnk! equ 5 set wildpkmn=PARASECT
if !wldpkmnk! equ 6 set wildpkmn=VENONAT
if !wldpkmnk! equ 7 set wildpkmn=EXEGGCUTE
if !wldpkmnk! equ 8 set wildpkmn=RHYHORN
if !wldpkmnk! equ 9 set wildpkmn=CHANSEY
if !wldpkmnk! equ 10 set wildpkmn=TANGELA
if !wldpkmnk! equ 11 set wildpkmn=SCYTHER
if !wldpkmnk! equ 12 set wildpkmn=PINSER
if !wldpkmnk! equ 13 set wildpkmn=DRATINI
if !wldpkmnk! equ 14 set wildpkmn=DRAGONAIR
if !wldpkmnk! equ 15 set wildpkmn=DODUO
if !wldpkmnk! equ 16 set wildpkmn=CUBONE
if !wldpkmnk! equ 17 set wildpkmn=MAROWAK
if !wldpkmnk! equ 18 set wildpkmn=TAUROS
if !wldpkmnk! equ 19 set wildpkmn=SLOWPOKE
:Wild-pkmn-stats-safari-zone
set wldpkmnlvlcalc=!random:~-1!
if !wldpkmnlvlcalc! GTR 8 goto Wild-pkmn-stats-safari-zone
if !wldpkmnlvlcalc! equ 0 set wildpkmnlvl=14
if !wldpkmnlvlcalc! equ 1 set wildpkmnlvl=17
if !wldpkmnlvlcalc! equ 2 set wildpkmnlvl=20
if !wldpkmnlvlcalc! equ 3 set wildpkmnlvl=22
if !wldpkmnlvlcalc! equ 4 set wildpkmnlvl=23
if !wldpkmnlvlcalc! equ 5 set wildpkmnlvl=24
if !wldpkmnlvlcalc! equ 6 set wildpkmnlvl=25
if !wldpkmnlvlcalc! equ 7 set wildpkmnlvl=30
if !wldpkmnlvlcalc! equ 8 set wildpkmnlvl=32
goto Wild-pkmn-appeared
:Wild-pkmn-appeared
set SoundURL=Wild-pkmn-Battle.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set pkmnbattle=1
set /a wildpkmnhp=!wildpkmnlvl!*4
cls
echo A wild !wildpkmn! has appeared
echo.
echo !wildpkmn!: !wildpkmn!!
echo.
echo !name!: Go !invpkmn1nick! I choose you!
echo.
echo !invpkmn1nick!: !invpkmn1!^!%p%
:Wild-pkmn-battle
cls
echo !ln!
echo !wildpkmn! LVL: !wildpkmnlvl! HP: !wildpkmnhp!
echo !ln!
echo.
echo.
echo.
echo.
echo !ln!
echo !invpkmn1nick! LVL: !invpkmn1lvl! HP: !invpkmn1hp!
echo !ln!
echo.
if !invpkmn1hp! LSS 1 echo !invpkmn1nick! fainted%p%&goto wild-pkmn-battle-switch
if !wildpkmn! equ GHOST echo The Pokedex says: RUN its a ghost!%p%&goto !location!
echo [1] Strong attack
echo [2] Accurate attack
echo [3] Use a potion, you have !potions! potion(s)
echo [4] [Run]
echo [5] Throw a pokeball, you have !pokeballs! pokeball(s)
echo [6] Switch pkmn
choice /c 123456 /n>nul
if !errorlevel! equ 1 (echo.
echo !ln!
echo !invpkmn1nick! uses Strong-attack
echo !ln!
set stronghit=!random:~-1!
if !stronghit! GTR 2 set /a wildpkmnhp-=5
if !stronghit! LSS 3 echo !invpkmn1! missed%p%
goto Wild-pkmn-attack-kind-calc)
if !errorlevel! equ 2 (echo.
echo !ln!
echo !invpkmn1nick! uses Accurate-attack
echo !ln!%p%
set /a wildpkmnhp-=3
goto Wild-pkmn-attack-kind-calc)
if !errorlevel! equ 3 goto Wild-pkmn-battle-potion
if !errorlevel! equ 4 (set rand=!random:~-1!
if !rand! GTR 2 cls&echo You run away as fast as you can%p%&set pkmnbattle=0&goto !sublocation!
if !rand! LSS 3 cls&echo The !wildpkmn! cut you off%p%&goto Wild-pkmn-attack-kind-calc)
if !errorlevel! equ 5 goto Pokeball-catch-chance
if !errorlevel! equ 6 goto Wild-pkmn-battle-switch
:Pokeball-catch-chance
if !pokeballs! equ 0 echo You dont have any pokeballs%p%&goto Wild-pkmn-battle
if !pkmnstorage! equ 20 echo storage is full, you cant catch any more pkmn%p%&goto Wild-pkmn-battle
:Caught-pkmn-sorting-system
set /a pokeballs-=1
set pokeballcatchratio=!random:~-1!
if !pokeballcatchratio! GTR 7 (echo You did it, !wildpkmn! was caught!%p%
if !pkmnstorage! equ 0 set pkmn1=!wildpkmn!&set pkmn1lvl=!wildpkmnlvl!
if !pkmnstorage! equ 1 set pkmn2=!wildpkmn!&set pkmn2lvl=!wildpkmnlvl!
if !pkmnstorage! equ 2 set pkmn3=!wildpkmn!&set pkmn3lvl=!wildpkmnlvl!
if !pkmnstorage! equ 3 set pkmn4=!wildpkmn!&set pkmn4lvl=!wildpkmnlvl!
if !pkmnstorage! equ 4 set pkmn5=!wildpkmn!&set pkmn5lvl=!wildpkmnlvl!
if !pkmnstorage! equ 5 set pkmn6=!wildpkmn!&set pkmn6lvl=!wildpkmnlvl!
if !pkmnstorage! equ 6 set pkmn7=!wildpkmn!&set pkmn7lvl=!wildpkmnlvl!
if !pkmnstorage! equ 7 set pkmn8=!wildpkmn!&set pkmn8lvl=!wildpkmnlvl!
if !pkmnstorage! equ 8 set pkmn9=!wildpkmn!&set pkmn9lvl=!wildpkmnlvl!
if !pkmnstorage! equ 9 set pkmn10=!wildpkmn!&set pkmn10lvl=!wildpkmnlvl!
if !pkmnstorage! equ 10 set pkmn11=!wildpkmn!&set pkmn11lvl=!wildpkmnlvl!
if !pkmnstorage! equ 11 set pkmn12=!wildpkmn!&set pkmn12lvl=!wildpkmnlvl!
if !pkmnstorage! equ 12 set pkmn13=!wildpkmn!&set pkmn13lvl=!wildpkmnlvl!
if !pkmnstorage! equ 13 set pkmn14=!wildpkmn!&set pkmn14lvl=!wildpkmnlvl!
if !pkmnstorage! equ 14 set pkmn15=!wildpkmn!&set pkmn15lvl=!wildpkmnlvl!
if !pkmnstorage! equ 15 set pkmn16=!wildpkmn!&set pkmn16lvl=!wildpkmnlvl!
if !pkmnstorage! equ 16 set pkmn17=!wildpkmn!&set pkmn17lvl=!wildpkmnlvl!
if !pkmnstorage! equ 17 set pkmn18=!wildpkmn!&set pkmn18lvl=!wildpkmnlvl!
if !pkmnstorage! equ 18 set pkmn19=!wildpkmn!&set pkmn19lvl=!wildpkmnlvl!
if !pkmnstorage! equ 19 set pkmn20=!wildpkmn!&set pkmn20lvl=!wildpkmnlvl!
set /a pkmnstorage+=1
set pkmnbattle=0
goto !sublocation!)
echo You missed the pokeball%p%&goto Wild-pkmn-attack-kind-calc
:Wild-pkmn-battle-potion
if !potions! LSS 1 cls&echo You dont have any potions left%p%
if !potions! GTR 0 set /a potions-=1&set /a invpkmn1hp+=20
goto Wild-pkmn-attack-kind-calc
:Wild-pkmn-battle-switch
set temppkmn=NAN
set temppkmnlvl=NAN
set temppkmnhp=NAN
cls
echo !ln!
echo Inventory
echo !ln!
echo 1:!invpkmn1nick! LVL:!invpkmn1lvl! HP:!invpkmn1hp!
echo 2:!invpkmn2nick! LVL:!invpkmn2lvl! HP:!invpkmn2hp!
echo 3:!invpkmn3nick! LVL:!invpkmn3lvl! HP:!invpkmn3hp!
echo 4:!invpkmn4nick! LVL:!invpkmn4lvl! HP:!invpkmn4hp!
echo 5:!invpkmn5nick! LVL:!invpkmn5lvl! HP:!invpkmn5hp!
echo 6:!invpkmn6nick! LVL:!invpkmn6lvl! HP:!invpkmn6hp!
echo !ln!
echo.
echo [1] Act like you faint
echo [2] Switch your 1st pkmn with your 2nd pkmn
echo [3] Switch your 1st pkmn with your 3rd pkmn
echo [4] Switch your 1st pkmn with your 4th pkmn
echo [5] Switch your 1st pkmn with your 5th pkmn
echo [6] Switch your 1st pkmn with your 6th pkmn
choice /c 123456 /n>nul
if !errorlevel! equ 1 goto Wild-pkmn-battle-lost
set temppkmn=!invpkmn1!&set temppkmnlvl=!invpkmn1lvl!&set temppkmnhp=!invpkmn1hp!&set pkmnbattle=1
if !errorlevel! equ 2 goto Wild-pkmn-battle-switch-2
if !errorlevel! equ 3 goto Wild-pkmn-battle-switch-3
if !errorlevel! equ 4 goto Wild-pkmn-battle-switch-4
if !errorlevel! equ 5 goto Wild-pkmn-battle-switch-5
if !errorlevel! equ 6 goto Wild-pkmn-battle-switch-6
:Wild-pkmn-battle-switch-2
set invpkmn1=!invpkmn2!&set invpkmn1lvl=!invpkmn2lvl!&set invpkmn1hp=!invpkmn2hp!
set invpkmn2=!temppkmn!&set invpkmn2lvl=!temppkmnlvl!&set invpkmn2hp=!temppkmnhp!
goto wild-pkmn-battle-switch-check
:Wild-pkmn-battle-switch-3
set invpkmn1=!invpkmn3!&set invpkmn1lvl=!invpkmn3lvl!&set invpkmn1hp=!invpkmn3hp!
set invpkmn3=!temppkmn!&set invpkmn3lvl=!temppkmnlvl!&set invpkmn3hp=!temppkmnhp!
goto wild-pkmn-battle-switch-check
:Wild-pkmn-battle-switch-4
set invpkmn1=!invpkmn4!&set invpkmn1lvl=!invpkmn4lvl!&set invpkmn1hp=!invpkmn4hp!
set invpkmn4=!temppkmn!&set invpkmn4lvl=!temppkmnlvl!&set invpkmn4hp=!temppkmnhp!
goto wild-pkmn-battle-switch-check
:Wild-pkmn-battle-switch-5
set invpkmn1=!invpkmn5!&set invpkmn1lvl=!invpkmn5lvl!&set invpkmn1hp=!invpkmn5hp!
set invpkmn5=!temppkmn!&set invpkmn5lvl=!temppkmnlvl!&set invpkmn5hp=!temppkmnhp!
goto wild-pkmn-battle-switch-check
:Wild-pkmn-battle-switch-6
set invpkmn1=!invpkmn6!&set invpkmn1lvl=!invpkmn6lvl!&set invpkmn1hp=!invpkmn6hp!
set invpkmn6=!temppkmn!&set invpkmn6lvl=!temppkmnlvl!&set invpkmn6hp=!temppkmnhp!
goto wild-pkmn-battle-switch-check
:Wild-pkmn-battle-switch-check
if !invpkmn1hp! GTR 0 goto Wild-pkmn-attack-kind-calc
goto Wild-pkmn-battle-switch
:Wild-pkmn-battle-win
set SoundURL=Victory.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set /a exptill=!exptill!-!exp!
if !exptill! LSS 1 (set /a invpkmn1lvl+=1
set /a exptill=!invpkmn1lvl!*5
echo.
echo Your !invpkmn1nick! has LVLd up%p%)
set pkmnbattle=0
goto !sublocation!
:Wild-pkmn-battle-lost
cls&echo You fainted when you realised you lost to a wild pkmn%p%
cls&echo Someone must have brought you to a pkmn center%p%
set /a invpkmn1hp=!invpkmn1lvl!*4
set pkmnbattle=0
goto pkmn-Center
:Wild-pkmn-attack-kind-calc
cls
if !wildpkmnhp! LSS 1 (set /a exp=!wildpkmnlvl!*5
echo.
echo !wildpkmn! fainted
echo.
echo !invpkmn1nick! gained some exp%p%&goto Wild-pkmn-battle-win)
set wildpkmnattackcalc=!random:~-1!
if !wildpkmnattackcalc! GTR 1 goto Wild-pkmn-attack-kind-calc
if !wildpkmnattackcalc! equ 0 (set wildpkmnattackkind=Strong-attack
set stronghit=!random:~-1!
if !stronghit! GTR 4 set /a invpkmn1hp-=4
goto Wild-pkmn-turn)
if !wildpkmnattackcalc! equ 1 (set wildpkmnattackkind=Accurate-attack
set /a invpkmn1hp-=2
goto Wild-pkmn-turn)
:Wild-pkmn-turn
cls
if !wildpkmnhp! LSS 1 goto Wild-pkmn-battle-win
echo !ln!
echo !wildpkmn! LVL: !wildpkmnlvl! HP: !wildpkmnhp!
echo !ln!
echo.
echo.
echo.
echo.
echo !ln!
echo !invpkmn1nick! LVL: !invpkmn1lvl! HP: !invpkmn1hp!
echo !ln!
echo.
echo.
echo !ln!
echo Wild !wildpkmn! uses !wildpkmnattackkind!
echo !ln!
if !stronghit! LSS 5 echo !wildpkmn! missed%p%
goto Wild-pkmn-battle
:Trainer-route-3
if !Trainer-route-3! equ 1 goto !sublocation!
set Trainer-route-3=1
set trainerpkmn=SANDSHREW
set trainerpkmnlvl=7
goto Trainer
:Trainer-mt-moon
if !Trainer-mt-moon! equ 1 goto !sublocation!
set Trainer-mt-moon=1
set trainerpkmn=GEODUDE
set trainerpkmnlvl=7
goto Trainer
:Trainer-route-24
if !Trainer-route-24! equ 1 goto !sublocation!
set Trainer-route-24=1
set trainerpkmn=ODDISH
set trainerpkmnlvl=8
goto Trainer
:Trainer-Rocket-Hideout-floor-4
if !Trainer-route-3! equ 1 goto !sublocation!
set Trainer-Rocket-Hideout-floor-4=1
set trainerpkmn=Zubat
set trainerpkmnlvl=16
goto Trainer
:Trainer-Rocket-Hideout-Giovanni
if !Trainer-route-3! equ 1 goto !sublocation!
set Trainer-Rocket-Hideout-Giovanni=1
set trainerpkmn=Ryhorn
set trainerpkmnlvl=28
goto Trainer
:Trainer
cls
set /a trainerpkmnhp=!trainerpkmnlvl!*4
set trainercalc=!random:~-1!
if !trainercalc! GTR 1 goto Trainer
if !trainercalc! equ 0 set trainermusic=Trainer1-appears
if !trainercalc! equ 1 set trainermusic=Trainer2-appears
set SoundURL=!trainermusic!.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
echo A trainer wants to fight%p%&timeout 5 >nul
set SoundURL=Trainer.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
:Trainer-battle
cls
echo !ln!
echo !trainerpkmn! LVL: !trainerpkmnlvl! HP: !trainerpkmnhp!
echo !ln!
echo.
echo.
echo.
echo.
echo !ln!
echo !invpkmn1nick! LVL: !invpkmn1lvl! HP: !invpkmn1hp!
echo !ln!
echo.
echo [1] Strong attack
echo [2] Accurate attack
echo [3] Use a potion, you have !potions! potion(s)
echo [4] Switch pkmn
if !invpkmn1hp! LSS 1 echo !invpkmn1nick! fainted%p%&goto Trainer-pkmn-switch
choice /c 1234 /n>nul
if !errorlevel! equ 1 (echo.
echo !ln!
echo !name!: !invpkmn1nick! use Strong-attack
echo !ln!
set stronghit=!random:~-1!
if !stronghit! GTR 2 set /a trainerpkmnhp-=5
if !stronghit! LSS 3 echo !invpkmn1nick! missed%p%
goto Trainer-pkmn-attack-kind-calc)
if !errorlevel! equ 2 (echo.
echo !ln!
echo !name!: !invpkmn1nick! use Accurate-attack
echo !ln!%p%
set /a trainerpkmnhp-=3
goto Trainer-pkmn-attack-kind-calc)
if !errorlevel! equ 3 goto Trainer-pkmn-battle-potion
if !errorlevel! equ 4 goto Trainer-pkmn-switch
:Trainer-pkmn-battle-potion
if !potions! LSS 1 echo You dont have any potions left%p%
if !potions! GTR 0 (set /a potions-=1
set /a invpkmn1hp+=20)
goto Trainer-pkmn-attack-kind-calc
:Trainer-pkmn-attack-kind-calc
if !trainerpkmnhp! LSS 1 (set /a exp=!trainerpkmnlvl!*5
echo.
echo !trainerpkmn! fainted
echo.
echo !invpkmn1nick! gained some exp%p%&goto Trainer-pkmn-battle-victory)
set trainerpkmnattackcalc=!random:~-1!
if !trainerpkmnattackcalc! GTR 1 goto Trainer-pkmn-attack-kind-calc
if !trainerpkmnattackcalc! equ 0 (set trainerpkmnattackkind=Strong-attack
set /a invpkmn1hp-=6
goto Trainer-pkmn-turn)
if !trainerpkmnattackcalc! equ 1 (set trainerpkmnattackkind=Accurate-attack
set /a invpkmn1hp-=3
goto Trainer-pkmn-turn)
:Trainer-pkmn-turn
cls
echo !ln!
echo !trainerpkmn! LVL: !trainerpkmnlvl! HP: !trainerpkmnhp!
echo !ln!
echo.
echo.
echo.
echo.
echo !ln!
echo !invpkmn1nick! LVL: !invpkmn1lvl! HP: !invpkmn1hp!
echo !ln!
echo.
echo.
echo !ln!
echo Trainer: !trainerpkmn! use !trainerpkmnattackkind!
echo !ln!%p%
goto Trainer-battle
:Trainer-pkmn-battle-lost
set SoundURL=Viridian-Pewter-Saffron-City.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls&echo Trainer: I just cant get enough of winning, hahaha%p%
cls&echo Nurse Joy: Damnit !name! you got your !invpkmn1nick! hurt once again%p%
cls&echo Nurse Joy: If you keep this up !invpkmn1nick! could be hospitalized%p%
set /a invpkmn1hp=!invpkmn1lvl!*4
set pkmnbattle=0
goto pkmn-Center
:Trainer-pkmn-battle-victory
set SoundURL=Victory.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
set /a exptill=!exptill!-!exp!
if !exptill! LSS 1 (set /a invpkmn1lvl+=1
set /a exptill=!invpkmn1lvl!*5
echo Your !invpkmn1nick! has LVLd up
set /a invpkmn1hp+=4)
echo You got $500 for winning%p%
set /a money+=500
set pkmnbattle=0
goto !sublocation!
:Trainer-pkmn-switch
set temppkmn=NAN
set temppkmnlvl=NAN
set temppkmnhp=NAN
cls
echo !ln!
echo Inventory
echo !ln!
echo 1:!invpkmn1nick! LVL:!invpkmn1lvl! HP:!invpkmn1hp!
echo 2:!invpkmn2nick! LVL:!invpkmn2lvl! HP:!invpkmn2hp!
echo 3:!invpkmn3nick! LVL:!invpkmn3lvl! HP:!invpkmn3hp!
echo 4:!invpkmn4nick! LVL:!invpkmn4lvl! HP:!invpkmn4hp!
echo 5:!invpkmn5nick! LVL:!invpkmn5lvl! HP:!invpkmn5hp!
echo 6:!invpkmn6nick! LVL:!invpkmn6lvl! HP:!invpkmn6hp!
echo !ln!
echo.
echo [1] Act like you faint
echo [2] Switch your 1st pkmn with your 2nd pkmn
echo [3] Switch your 1st pkmn with your 3rd pkmn
echo [4] Switch your 1st pkmn with your 4th pkmn
echo [5] Switch your 1st pkmn with your 5th pkmn
echo [6] Switch your 1st pkmn with your 6th pkmn
echo [7] Cancel
choice /c 1234567 /n>nul
if !errorlevel! equ 1 goto Trainer-pkmn-lost
set temppkmn=!invpkmn1!&set temppkmnlvl=!invpkmn1lvl!&set temppkmnhp=!invpkmn1hp!&set pkmnbattle=3
if !errorlevel! equ 2 goto Trainer-pkmn-switch-2
if !errorlevel! equ 3 goto Trainer-pkmn-switch-3
if !errorlevel! equ 4 goto Trainer-pkmn-switch-4
if !errorlevel! equ 5 goto Trainer-pkmn-switch-5
if !errorlevel! equ 6 goto Trainer-pkmn-switch-6
if !errorlevel! equ 7 (cls
if !invpkmn1hp! GTR 0 goto goto Trainer-pkmn-battle)
:Trainer-pkmn-switch-2
set invpkmn1=!invpkmn2!&set invpkmn1lvl=!invpkmn2lvl!&set invpkmn1hp=!invpkmn2hp!
set invpkmn2=!temppkmn!&set invpkmn2lvl=!temppkmnlvl!&set invpkmn2hp=!temppkmnhp!
goto Trainer-pkmn-switch-check
:Trainer-pkmn-switch-3
set invpkmn1=!invpkmn3!&set invpkmn1lvl=!invpkmn3lvl!&set invpkmn1hp=!invpkmn3hp!
set invpkmn3=!temppkmn!&set invpkmn3lvl=!temppkmnlvl!&set invpkmn3hp=!temppkmnhp!
goto Trainer-pkmn-switch-check
:Trainer-pkmn-switch-4
set invpkmn1=!invpkmn4!&set invpkmn1lvl=!invpkmn4lvl!&set invpkmn1hp=!invpkmn4hp!
set invpkmn4=!temppkmn!&set invpkmn4lvl=!temppkmnlvl!&set invpkmn4hp=!temppkmnhp!
goto Trainer-pkmn-switch-check
:Trainer-pkmn-switch-5
set invpkmn1=!invpkmn5!&set invpkmn1lvl=!invpkmn5lvl!&set invpkmn1hp=!invpkmn5hp!
set invpkmn5=!temppkmn!&set invpkmn5lvl=!temppkmnlvl!&set invpkmn5hp=!temppkmnhp!
goto Trainer-pkmn-switch-check
:Trainer-pkmn-switch-6
set invpkmn1=!invpkmn6!&set invpkmn1lvl=!invpkmn6lvl!&set invpkmn1hp=!invpkmn6hp!
set invpkmn6=!temppkmn!&set invpkmn6lvl=!temppkmnlvl!&set invpkmn6hp=!temppkmnhp!
goto Trainer-pkmn-switch-check
:Trainer-pkmn-switch-check
if !invpkmn1hp! GTR 0 goto Trainer-pkmn-attack-kind-calc
goto Trainer-pkmn-switch
:gym-battle
cls
echo !ln!
echo !gymleaderpkmn! LVL: !gymleaderpkmnlvl! HP: !gymleaderpkmnhp!
echo !ln!
echo.
echo.
echo.
echo.
echo !ln!
echo !invpkmn1nick! LVL: !invpkmn1lvl! HP: !invpkmn1hp!
echo !ln!
echo.
echo [1] Strong attack
echo [2] Accurate attack
echo [3] Use a potion, you have !potions! potion(s)
echo [4] Switch pkmn
if !invpkmn1hp! LSS 1 echo !invpkmn1nick! fainted%p%&goto Gym-battle-switch
choice /c 1234 /n>nul
if !errorlevel! equ 1 (echo.
echo !ln!
echo !name!: !invpkmn1nick! use Strong-attack
echo !ln!
set stronghit=!random:~-1!
if !stronghit! GTR 2 set /a gymleaderpkmnhp-=5
if !stronghit! LSS 3 echo !invpkmn1nick! missed%p%
goto gymleader-pkmn-attack-kind-calc)
if !errorlevel! equ 2 (echo.
echo !ln!
echo !name!: !invpkmn1nick! use Accurate-attack
echo !ln!%p%
set /a gymleaderpkmnhp-=3
goto gymleader-pkmn-attack-kind-calc)
if !errorlevel! equ 3 goto gym-battle-potion
if !errorlevel! equ 4 goto gym-battle-switch
:gym-battle-potion
if !potions! LSS 1 echo You dont have any potions left%p%
if !potions! GTR 0 set /a potions-=1&set /a invpkmn1hp+=20
if !errorlevel! equ 4 goto restart
goto gymleader-pkmn-attack-kind-calc
:gymleader-pkmn-attack-kind-calc
if !gymleaderpkmnhp! LSS 1 (set /a exp=!gymleaderpkmnlvl!*5
echo.
echo !gymleaderpkmn! fainted
echo.
echo !invpkmn1! gained some exp%p%&goto gym-battle-victory)
set gymleaderpkmnattackcalc=!random:~-1!
if !gymleaderpkmnattackcalc! GTR 1 goto gymleader-pkmn-attack-kind-calc
if !gymleaderpkmnattackcalc! equ 0 set gymleaderpkmnattackkind=Strong-attack&set /a invpkmn1hp-=6&goto gymleader-pkmn-turn
if !gymleaderpkmnattackcalc! equ 1 set gymleaderpkmnattackkind=Accurate-attack&set /a invpkmn1hp-=3&goto gymleader-pkmn-turn
:gymleader-pkmn-turn
cls
echo !ln!
echo !gymleaderpkmn! LVL: !gymleaderpkmnlvl! HP: !gymleaderpkmnhp!
echo !ln!
echo.
echo.
echo.
echo.
echo !ln!
echo !invpkmn1nick! LVL: !invpkmn1lvl! HP: !invpkmn1hp!
echo !ln!
echo.
echo.
echo !ln!
echo !gymleader!: !gymleaderpkmn! use !gymleaderpkmnattackkind!
echo !ln!%p%
goto gym-battle
:gym-battle-lost
cls&echo !gymleader!: Come back when you can actually beat me !name!%p%
cls&echo Nurse Joy: Damnit !name! you got your !invpkmn1nick! hurt once again%p%
cls&echo Nurse Joy: If you keep this up !invpkmn1! could be hospitalized%p%
set /a invpkmn1hp=!invpkmn1lvl!*4
set pkmnbattle=0
goto pkmn-Center
:gym-battle-victory
set /a wincount+=1
set /a exptill=!exptill!-!exp!
if !exptill! LSS 1 (set /a invpkmn1lvl+=1
set /a exptill=!invpkmn1lvl!*5
cls&echo Your !invpkmn1nick! has LVLd up%p%
set /a invpkmn1hp+=4)
:gym-battle-2
if !wincount! equ 1 (
if !location! equ Pewter-City set gymleaderpkmn=ONIX&set gymleaderpkmnlvl=14
if !location! equ Cerulean-City set gymleaderpkmn=STARMIE&set gymleaderpkmnlvl=21
if !location! equ Vermillion-City set gymleaderpkmn=PIKACHU&set gymleaderpkmnlvl=18
if !location! equ Celadon-City set gymleaderpkmn=WEEPINBELL&set gymleaderpkmnlvl=32
if !location! equ Fuschia-City set gymleaderpkmn=KOFFING&set gymleaderpkmnlvl=37
if !location! equ Saffron-City set gymleaderpkmn=MR-MIME&set gymleaderpkmnlvl=37
if !location! equ Cinnabar-City set gymleaderpkmn=RAPIDASH&set gymleaderpkmnlvl=45
if !location! equ Viridian-City set gymleaderpkmn=DUGTRIO&set gymleaderpkmnlvl=42
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4&goto gym-battle)
if !wincount! equ 2 (
if !location! equ Pewter-City goto gym-battle-victory-2
if !location! equ Cerulean-City goto gym-battle-victory-2
if !location! equ Vermillion-City set gymleaderpkmn=RAICHU&set gymleaderpkmnlvl=24
if !location! equ Celadon-City set gymleaderpkmn=GLOOM&set gymleaderpkmnlvl=32
if !location! equ Fuschia-City set gymleaderpkmn=WEEZING&set gymleaderpkmnlvl=43
if !location! equ Saffron-City set gymleaderpkmn=KADABRA&set gymleaderpkmnlvl=38
if !location! equ Cinnabar-City set gymleaderpkmn=ARCANINE&set gymleaderpkmnlvl=46
if !location! equ Viridian-City set gymleaderpkmn=NIDOQUEEN&set gymleaderpkmnlvl=44
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4&goto gym-battle)
if !wincount! equ 3 (
if !location! equ Pewter-City goto gym-battle-victory-2
if !location! equ Cerulean-City goto gym-battle-victory-2
if !location! equ Vermillion-City goto gym-battle-victory-2
if !location! equ Celadon-City goto gym-battle-victory-2
if !location! equ Fuschia-City set gymleaderpkmn=MUK&set gymleaderpkmnlvl=39
if !location! equ Saffron-City set gymleaderpkmn=ALAKAZAM&set gymleaderpkmnlvl=43
if !location! equ Cinnabar-City goto gym-battle-victory-2
if !location! equ Viridian-City set gymleaderpkmn=NIDOKING&set gymleaderpkmnlvl=45
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4&goto gym-battle)
if !wincount! equ 4 (
if !location! equ Pewter-City goto gym-battle-victory-2
if !location! equ Cerulean-City goto gym-battle-victory-2
if !location! equ Vermillion-City goto gym-battle-victory-2
if !location! equ Celadon-City goto gym-battle-victory-2
if !location! equ Fuschia-City goto gym-battle-victory-2
if !location! equ Saffron-City goto gym-battle-victory-2
if !location! equ Cinnabar-City goto gym-battle-victory-2
if !location! equ Viridian-City set gymleaderpkmn=RHYDON&set gymleaderpkmnlvl=50
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4&goto gym-battle)
:gym-battle-victory-2
set /a exptill=!exptill!-!exp!
if !exptill! LSS 1 (set /a invpkmn1lvl+=1
set /a exptill=!invpkmn1lvl!*5
cls&echo Your !invpkmn1nick! has LVLd up
echo.
set /a invpkmn1hp+=4)
echo You got $1.000 for winning%p%
set /a money+=1000
set pkmnbattle=0
cls
if !location! equ Pewter-City (echo !gymleader!: Well done, you have proven yourself%p%
cls&echo !gymleader!: Here take this, its the Boulder Badge&set badges=1)
if !location! equ Cerulean-City (echo !gymleader!: Haha, oh shit I lost%p%
cls&echo !gymleader!: Here take this, its the Cascade Badge&set badges=2)
if !location! equ Vermillion-City (echo !gymleader!: Damn you!%p%
cls&echo !gymleader!: That means I have to give you this, the Thunder Badge&set badges=3)
if !location! equ Celadon-City (echo !gymleader!: Well done, you have proven yourself%p%
cls&echo !gymleader!: Here take this, its the Rainbow Badge&set badges=4)
if !location! equ Fuschia-City (echo !gymleader!: Haha, oh shit I lost%p%
cls&echo !gymleader!: Here take this, its the Soul Badge&set badges=5)
if !location! equ Saffron-City (echo !gymleader!: Damn you!%p%
cls&echo !gymleader!: That means I have to give you this, the Marsh Badge&set badges=6)
if !location! equ Cinnabar-Island (echo !gymleader!: Well done, you have proven yourself%p%
cls&echo !gymleader!: Here take this, its the Vulcano Badge&set badges=7)
if !location! equ Viridian-City (echo !gymleader!: Haha, oh shit I lost%p%
cls&echo !gymleader!: Here take this, its the Earth Badge&set badges=8)
pause>nul&goto !sublocation!
:Gym-battle-switch
set temppkmn=NAN
set temppkmnlvl=NAN
set temppkmnhp=NAN
cls
echo !ln!
echo Inventory
echo !ln!
echo 1:!invpkmn1nick! LVL:!invpkmn1lvl! HP:!invpkmn1hp!
echo 2:!invpkmn2nick! LVL:!invpkmn2lvl! HP:!invpkmn2hp!
echo 3:!invpkmn3nick! LVL:!invpkmn3lvl! HP:!invpkmn3hp!
echo 4:!invpkmn4nick! LVL:!invpkmn4lvl! HP:!invpkmn4hp!
echo 5:!invpkmn5nick! LVL:!invpkmn5lvl! HP:!invpkmn5hp!
echo 6:!invpkmn6nick! LVL:!invpkmn6lvl! HP:!invpkmn6hp!
echo !ln!
echo.
echo [1] Act like you faint
echo [2] Switch your 1st pkmn with your 2nd pkmn
echo [3] Switch your 1st pkmn with your 3rd pkmn
echo [4] Switch your 1st pkmn with your 4th pkmn
echo [5] Switch your 1st pkmn with your 5th pkmn
echo [6] Switch your 1st pkmn with your 6th pkmn
choice /c 123456 /n>nul
if !errorlevel! equ 1 goto Gym-battle-lost
set temppkmn=!invpkmn1!&set temppkmnlvl=!invpkmn1lvl!&set temppkmnhp=!invpkmn1hp!&set pkmnbattle=2
if !errorlevel! equ 2 goto Gym-battle-switch-2
if !errorlevel! equ 3 goto Gym-battle-switch-3
if !errorlevel! equ 4 goto Gym-battle-switch-4
if !errorlevel! equ 5 goto Gym-battle-switch-5
if !errorlevel! equ 6 goto Gym-battle-switch-6
:Gym-battle-switch-2
set invpkmn1=!invpkmn2!&set invpkmn1lvl=!invpkmn2lvl!&set invpkmn1hp=!invpkmn2hp!
set invpkmn2=!temppkmn!&set invpkmn2lvl=!temppkmnlvl!&set invpkmn2hp=!temppkmnhp!
goto Gym-battle-switch-check
:Gym-battle-switch-3
set invpkmn1=!invpkmn3!&set invpkmn1lvl=!invpkmn3lvl!&set invpkmn1hp=!invpkmn3hp!
set invpkmn3=!temppkmn!&set invpkmn3lvl=!temppkmnlvl!&set invpkmn3hp=!temppkmnhp!
goto Gym-battle-switch-check
:Gym-battle-switch-4
set invpkmn1=!invpkmn4!&set invpkmn1lvl=!invpkmn4lvl!&set invpkmn1hp=!invpkmn4hp!
set invpkmn4=!temppkmn!&set invpkmn4lvl=!temppkmnlvl!&set invpkmn4hp=!temppkmnhp!
goto Gym-battle-switch-check
:Gym-battle-switch-5
set invpkmn1=!invpkmn5!&set invpkmn1lvl=!invpkmn5lvl!&set invpkmn1hp=!invpkmn5hp!
set invpkmn5=!temppkmn!&set invpkmn5lvl=!temppkmnlvl!&set invpkmn5hp=!temppkmnhp!
goto Gym-battle-switch-check
:Gym-battle-switch-6
set invpkmn1=!invpkmn6!&set invpkmn1lvl=!invpkmn6lvl!&set invpkmn1hp=!invpkmn6hp!
set invpkmn6=!temppkmn!&set invpkmn6lvl=!temppkmnlvl!&set invpkmn6hp=!temppkmnhp!
goto Gym-battle-switch-check
:Gym-battle-switch-check
if !invpkmn1hp! GTR 0 goto gymleader-pkmn-attack-kind-calc
goto Gym-battle-switch
:Route-X
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo !sublocation!
echo !ln!
echo.
echo )\  )\ )\ )\ /(  (\ )\ )\ )\  /( /( )\  (\ (\ /)  )\
echo /( /( )\  (\ (\ /)  )\ )\ )\ )\ )\ /(  (\ )\  )\  )\
echo )\  (\ (\ /)  )\ (\ )\ )\ )\  /( /( )\ )\ )\ )\ /( (
echo.
set rand=!random:~-1!
if !rand! GTR 7 echo A wild pkmn appeared!%p%&goto Wild-pkmnlvl-calc-!sublocation!
goto !sublocation!-X
:Route-1
set sublocation=Route-1
set SoundURL=Route-1.mp3
goto Route-X
:Route-1-X
echo [1] !g!Pallet town!s!
echo [2] !g!Viridian City!n!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Pallet-Town
if !errorlevel! equ 2 goto Viridian-City
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-2
set sublocation=Route-2
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-2-X
echo [1] !g!Viridian City!s!
echo [2] !g!the Viridian forest!n!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Viridian-City
if !errorlevel! equ 2 goto Viridian-forest
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-3
set sublocation=Route-3
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
if !Trainer-route-3! equ 0 goto Trainer-route-3
:Route-3-X
echo [1] !g!Pewter City!w!
echo [2] !g!Mt. Moon!e!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Pewter-City
if !errorlevel! equ 2 goto Mt-Moon
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-4
set sublocation=Route-4
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-4-X
echo [1] !g!Cerulean City!e!
echo [2] !l!
choice /c 12 /n>nul
if !errorlevel! equ 1 goto Cerulean-City
if !errorlevel! equ 2 goto Wild-pkmnlvl-calc
:Route-5
set sublocation=Route-5
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-5-X
echo [1] !g!Cerulean City!n!
echo [2] !g!Vermillion City through a tunnel!s!
echo [3] !g!Saffron City!s!
echo [4] !l!
choice /c 1234 /n>nul
if !errorlevel! equ 1 goto Cerulean-City
if !errorlevel! equ 2 set location=Vermillion-City&goto Underground-passage
if !errorlevel! equ 3 (cls
if not !guardwater! equ 1 echo The guard is mad for some reason and wont let you pass%p%
if !guardwater! equ 1 goto Saffron-City)
if !errorlevel! equ 4 goto Wild-pkmnlvl-calc
:Route-6
set sublocation=Route-6
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-6-X
echo [1] !g!Saffron City!n!
echo [2] !g!Vermillion City!s!
echo [3] !g!Cerulean City through a tunnel!n!
echo [4] !l!
choice /c 1234 /n>nul
if !errorlevel! equ 1 (cls
if not !guardwater! equ 1 echo The guard is mad for some reason and wont let you pass%p%
if !guardwater! equ 1 goto Saffron-City)
if !errorlevel! equ 2 goto Vermillion-City
if !errorlevel! equ 3 set location=Cerulean-City&goto Underground-passage
if !errorlevel! equ 4 goto Wild-pkmnlvl-calc
:Route-7
set sublocation=Route-7
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-7-X
echo [1] !g!Saffron City!e!
echo [2] !g!Celadon City!w!
echo [3] !g!Lavender town through a tunnel
echo [4] !l!
choice /c 1234 /n>nul
if !errorlevel! equ 1 (cls
if not !guardwater! equ 1 echo The guard is mad for some reason and wont let you pass%p%
if !guardwater! equ 1 goto Saffron-City)
if !errorlevel! equ 2 goto Celadon-City
if !errorlevel! equ 3 set location=Lavender-Town&goto Underground-passage
if !errorlevel! equ 4 goto Wild-pkmnlvl-calc
:Route-8
set sublocation=Route-8
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-8-X
echo [1] !g!Saffron City!w!
echo [2] !g!Lavender town!e!
echo [3] !g!Celadon City through a tunnel!w!
echo [4] !l!
choice /c 1234 /n>nul
if !errorlevel! equ 1 (cls
if !guardwater! equ 0 echo The guard is mad for some reason and wont let you pass%p%&goto !sublocation!
if !guardwater! equ 1 goto Saffron-City)
if !errorlevel! equ 2 goto Lavender-Town
if !errorlevel! equ 3 set location=Celadon-City&goto Underground-passage
if !errorlevel! equ 4 goto Wild-pkmnlvl-calc
:Route-9
set sublocation=Route-9
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-9-X
echo [1] !g!Cerulean City!w!
echo [2] !g!the Rock tunnel!s!
echo [3] !g!the Power plant (by crossing the lake)
echo [4] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Cerulean-City
if !errorlevel! equ 2 goto Rock-tunnel
if !errorlevel! equ 3 cls&echo You need HM-surf to get there, which you dont have%p%&goto !sublocation!
if !errorlevel! equ 4 goto Wild-pkmnlvl-calc
:Route-10
set sublocation=Route-10
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-10-X
echo [1] !g!the Rock tunnel!n!
echo [2] !g!Lavender town!s!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 cls&echo Looks like the road only goes one way%p%
if !errorlevel! equ 2 goto Lavender-Town
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-11
set sublocation=Route-11
set SoundURL=Route-11-15.mp3
goto Route-X
:Route-11-X
echo [1] !g!Vermillion City!w!
echo [2] !g!!r!12!n!
echo [3] !g!the digletts cave
echo [4] !l!
choice /c 1234 /n>nul
if !errorlevel! equ 1 goto Vermillion-City
if !errorlevel! equ 2 goto Route-11-1
if !errorlevel! equ 2 goto Digletts-cave
if !errorlevel! equ 4 goto Wild-pkmnlvl-calc
:Route-11-1
if !snorlaks1! equ 1 goto Route-12
cls&echo There is a snorlaks blocking the road%p%
goto Route-X
:Route-12
set sublocation=Route-12
set SoundURL=Route-11-15.mp3
goto Route-X
:Route-12-X
echo [1] !g!!r!11!w!
echo [2] !g!Lavender town!n!
echo [3] !g!!r!13!s!
echo [4] !l!
choice /c 1234 /n>nul
if !errorlevel! equ 1 goto Route-12-1
if !errorlevel! equ 2 goto Lavender-Town
if !errorlevel! equ 3 goto Route-12-2
if !errorlevel! equ 4 goto Wild-pkmnlvl-calc
:Route-12-1
if !snorlaks1! equ 1 goto Route-11
cls&echo There is a snorlaks blocking the road%p%&goto Route-X
:Route-12-2
if !snorlaks1! equ 1 goto Route-13
cls&echo There is a snorlaks blocking the road%p%&goto Route-X
:Route-13
set sublocation=Route-13
set SoundURL=Route-11-15.mp3
goto Route-X
:Route-13-X
echo [1] !g!!r!12!n!
echo [2] !g!!r!14!s!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Route-12
if !errorlevel! equ 2 goto Route-14
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-14
set sublocation=Route-14
set SoundURL=Route-11-15.mp3
goto Route-X
:Route-14-X
echo [1] !g!!r!13!n!
echo [2] !g!!r!15!w!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Route-13
if !errorlevel! equ 2 goto Route-15
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-15
set sublocation=Route-15
set SoundURL=Route-11-15.mp3
goto Route-X
:Route-15-X
echo [1] !g!!r!14!n!
echo [2] !g!Fuschia City!w!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Route-14
if !errorlevel! equ 2 goto Fuschia-City
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-16
set sublocation=Route-16
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-16-X
echo [1] !g!Celadon City!e!
echo [2] !g!!r!17!s!
echo [3] !g!Mr. fly like a pies house
echo [4] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Celadon-City
if !errorlevel! equ 2 goto Route-16-1
if !errorlevel! equ 3 goto Fly-like-a-pie
if !errorlevel! equ 4 goto Wild-pkmnlvl-calc
:Route-16-1
if !snorlaks2! equ 0 cls&echo There is a snorlaks blocking the road%p%&goto Route-X
if !bike! equ 1 goto Route-17
goto Route-X
:Route-17
set sublocation=Route-17
set SoundURL=Cycling.mp3
goto Route-X
:Route-17-X
echo [1] !g!!r!16!n!
echo [2] !g!!r!18!s!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Route-17-1
if !errorlevel! equ 2 goto Route-18
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-17-1
if!snorlaks2! equ 1 goto Route-16
cls&echo There is a snorlaks blocking the road%p%&goto Route-X
:Route-18
set sublocation=Route-18
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-18-X
echo [1] !g!!r!17!n!
echo [2] !g!Fuschia City!e!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 (cls
if !bike! equ 1 goto Route-17)
if !errorlevel! equ 2 goto Fuschia-City
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-19
set sublocation=Route-19
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-19-X
echo [1] !g!Fuschia City!n!
echo [2] !g!!r!20!s!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Fuschia-City
if !errorlevel! equ 2 goto Route-20
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-20
set sublocation=Route-20
set SoundURL=Surfing.mp3
goto Route-X
:Route-20-X
echo [1] !g!!r!19!n!
echo [2] !g!the Seafoam islands!w!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Route-19
if !errorlevel! equ 2 goto Seafoam-island
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-21
set sublocation=Route-21
set SoundURL=Surfing.mp3
goto Route-X
:Route-21-X
echo [1] !g!Pallet town!n!
echo [2] !g!Cinnabar Island!s!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Pallet-Town
if !errorlevel! equ 2 goto Cinnabar-Island
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-22
set sublocation=Route-22
set SoundURL=Route-2-10-plus-16-22.mp3
goto Route-X
:Route-22-X
echo [1] !g!Viridian City!e!
echo [2] !g!!r!23!n!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Viridian-City
if !errorlevel! equ 2 goto Route-22-1
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-22-1
if !badges! equ 8 goto Route-23
cls&echo Guard, You dont seem to have all 8 badges, I can not let you pass%p%
goto Route-X
:Route-23
set sublocation=Route-23
set SoundURL=The-final-road.mp3
goto Route-X
:Route-23-X
echo [1] !g!!r!22!s!
echo [2] !g!Victory road!n!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Route-22
if !errorlevel! equ 2 goto Victory-road
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-24
set sublocation=Route-24
set SoundURL=Route-24-25.mp3
goto Route-X
if !Trainer-route-24! equ 0 goto Trainer-route-24
:Route-24-X
echo [1] !g!Cerulean City!s!
echo [2] !g!!r!25!n!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Cerulean-City
if !errorlevel! equ 2 goto Route-25
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Route-25
set sublocation=Route-25
set SoundURL=Route-24-25.mp3
goto Route-X
:Route-25-X
echo [1] !g!!r!24!s!
echo [2] !g!Bills house!e!
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Route-24
if !errorlevel! equ 2 goto Bills-house
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
:Viridian-forest
set sublocation=Viridian-forest
set SoundURL=Viridian-Forest-Digletts-Cave-Seafoam-Islands.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
:Forest
cls
echo !ln!
echo !sublocation!
echo !ln!
echo.
echo \                                                                    \
echo /     /~\          /~\   /~\   /~\   /~\   /~\   /~\      )\         /
echo \    /~~~\        /~~~\ /~~~\ /~~~\ /~~~\ /~~~\ /~~~\   )\ )\        \
echo /      i            i     i     i     i     i     i                  /
echo \                                                                    \
echo /                                                                    /
echo \  /~\   /~\   /~\   /~\   /~\   /~\   /~\   /~\          /~\        \
echo / /~~~\ /~~~\ /~~~\ /~~~\ /~~~\ /~~~\ /~~~\ /~~~\        /~~~\       /
echo \   i     i     i     i     i     i     i     i            i         \
echo.
set rand=!random:~-1!
if !rand! GTR 7 echo A wild pkmn appeared!%p%&goto Wild-pkmnlvl-calc-!sublocation!
echo [1] !g!!r!2!s!
echo [2] !g!Pewter City!n!
echo [3] Go !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Route-2
if !errorlevel! equ 2 goto Pewter-City
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc-viridian-forest
:Mt-Moon
set SoundURL=Route-2-10-plus-16-22.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set location=Mt-Moon
cls
echo !ln!
echo Mt. Moon
echo !ln!
echo.
echo [1] !g!the pkmn center
echo [2] Go inside the cave
echo [3] Go back to !r!3!w!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto Mt-Moon-2
if !errorlevel! equ 3 goto Route-3
:Mt-Moon-2
cls
echo !ln!
echo Mt. Moon cave entrance
echo !ln!
echo.
echo         /\    /\    /\    /\    /\    /\    /\    /\    /\
echo        /##\  /##\  /##\  /##\  /##\  /##\  /##\  /##\  /##\  /\
echo       /####\/####\/####\/####\/####\/####\/####\/####\/####\/##\
echo      /##########################################################\
echo     /############################################################\
echo    /##############################################################\
echo   /#######################/     \##################################\
echo  /#######################/       \##################################\
echo /#######################/         \##################################\
echo.%p%
goto Mt-Moon-2-1
:Mt-Moon-2-1
set sublocation=Mt-Moon-2-1
set SoundURL=Mt-Moon-Rock-Tunnel-Vicroty-Road.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo Mt. Moon cave
echo !ln!
echo.
echo !cl!####################
echo #( ).....#...........................................................#
echo #........#....###############################........................#
echo #........#....#..........................................##..........#
echo #........#....#..........................................##..........#
echo #........#....#...........#...###############............##..........#
echo #.............#...........#...#..........................##..........#
echo #.............#...........#...#......................................#
echo ###########################(@)########################################
echo.
echo You are at @
echo.
set rand=!random:~-1!
if !rand! GTR 7 echo A wild pkmn appeared!%p%&goto Wild-pkmnlvl-calc-mt-moon
echo [1] Go deeper into the cave
echo [2] Go back
choice /c 12 /n>nul
if !errorlevel! equ 1 goto Mt-Moon-2-1-1
if !errorlevel! equ 2 goto Mt-Moon
:Mt-Moon-2-1-1
set mtmoon211=!random:~-1!
if !mtmoon211! GTR 2 goto Trainer-Mt-Moon
goto Cerulean-City
:Bills-house
set SoundURL=Guidepost.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo Bills House
echo !ln!
echo.
echo                        __ii_______________
echo                       /  ii             /\\
echo                      /  /__\           /  \\
echo                     /_________________/    \\
echo                     i      __        i  /\  i
echo         )\)\        i     i__i       i / .\ i
echo       )\)\ /(       i________________i_i__i_i
echo.%p%
cls
if !ss-anne! equ 1 echo Bill: Sorry !name!, Im really busy right now%p%&goto !sublocation!
echo Creature: Gjelp, gjelp, gjelp mmmmi%p%
cls&echo !name!: I dont under.... ohhhhhh!%p%
cls&echo Creature: Cjanlp gjou pljes tjlun tje mjachilne ojn?%p%
cls&echo !name!: eeeeeeeeeh ok, but how do I do that?%p%
cls&echo Creature: Tjerl isj ja aj bjik rjeld buttjon njekst tjo mji pjecee%p%
cls&echo !name!: Do you mean, ohhhhhh I see, the big red button%p%
cls&echo The creature steps into the machine%p%
cls&echo You press the button%p%
cls&echo *poof*%p%
cls&echo Bill: I cant thank you enough, you saved my life.%p%
cls&echo Bill: I would have never gotten my human form back without you%p%
cls&echo Bill: You know what, here, you can have this S.S. Anne ticket%p%
cls&echo Bill: The S.S. Anne is in Vermillion City, you can get there by going
echo through the underground passage at Route 5%p%
cls&echo Bill: Im going to improve my machine, youre welcome to visit me%p%
set ss-anne=1
goto !sublocation!
:Bike-shop
set SoundURL=pkmn-Center-Mart.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
:Bike
cls
echo !ln!
echo !location! Bike shop 
echo !ln!
echo.
echo Shop keeper: Well hello there young man, how can I help you?
echo.
echo You have money: !money!
echo.
echo [1] Buy a bike ($1.000.000)
echo [2] Get a bike for a Bike-Voucher
echo [3] Exit the bike shop
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Bike-shop-1
if !errorlevel! equ 2 goto Bike-shop-2
if !errorlevel! equ 3 goto !location!
:Bike-shop-1
cls
if !money! GTR 999999 (set bike=1
set /a money-=1000000
echo Shop keeper: I have no idea where you got the money, but oh well%p%
cls&echo Shop keeper: Here you go, a brand new bike%p%&goto Bike)
echo You do not have enough money to buy that%p%&goto Bike
:Bike-shop-2
cls
if !bikevoucher! equ 1 (set bike=1
set bikevoucher=2
echo Shop keeper: Here you go, a brand new bike%p%&goto Bike)
echo Shop keeper: You dont seem to have a a Bike-Voucher%p%&goto Bike
:Day-care
cls&echo Nothing here yet%p%
goto Route-5
:Rock-Tunnel
set location=Rock-Tunnel
set sublocation=Rock-Tunnel
set SoundURL=Route-2-10-plus-16-22.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo Rock Tunnel entrance
echo !ln!
echo.
echo         /\    /\    /\    /\    /\    /\    /\    /\    /\
echo        /##\  /##\  /##\  /##\  /##\  /##\  /##\  /##\  /##\  /\
echo       /####\/####\/####\/####\/####\/####\/####\/####\/####\/##\
echo      /##########################################################\
echo     /############################################################\
echo    /#######################/   \##################################\
echo   /#######################/     \##################################\
echo.
echo [1] !g!!r!9!w!
echo [2] Go inside the cave
echo [3] !g!the pkmn Center
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Route-9
if !errorlevel! equ 2 goto !location!-floor-1
if !errorlevel! equ 3 goto pkmn-Center
:Rock-tunnel-floor-1
set sublocation=Rock-Tunnel-floor-1
set SoundURL=Mt-Moon-Rock-Tunnel-Vicroty-Road.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo Rock Tunnel - Floor 1
echo !ln!
echo.
echo !cl!####################
echo ###.( )......####################(@).....................####.....( )#
echo ###....#.....#######...( )##########.....####################........#
echo #......#.....####............#######.................................#
echo #............................#########################################
echo ####################################.....................####.....( )#
echo #..........................................#######.......####........#
echo ########.................( )...............#######...................#
echo !cl!####################
echo.
echo You are at @
echo.
set rand=!random:~-1!
if !rand! GTR 7 echo A wild pkmn appeared!%p%&goto Wild-pkmnlvl-calc-!sublocation!
echo [1] Go deeper into the cave
echo [2] Go back
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto !location!-floor-2
if !errorlevel! equ 2 goto !location!
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
::1 trainer
:Rock-tunnel-floor-1-1
set sublocation=Rock-Tunnel-floor-1-1
set SoundURL=Mt-Moon-Rock-Tunnel-Vicroty-Road.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo Rock Tunnel - Floor 1
echo !ln!
echo.
echo !cl!####################
echo ###.(@)......####################( ).....................####.....( )#
echo ###....#.....#######...( )##########.....####################........#
echo #......#.....####............#######.................................#
echo #............................#########################################
echo ####################################.....................####.....( )#
echo #..........................................#######.......####........#
echo ########.................( )...............#######...................#
echo !cl!####################
echo.
echo You are at @
echo.
set rand=!random:~-1!
if !rand! GTR 7 echo A wild pkmn appeared!%p%&goto Wild-pkmnlvl-calc-!sublocation!
echo [1] Go deeper into the cave
echo [2] Go back
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto !location!-floor-2-1
if !errorlevel! equ 2 goto !location!-floor-2
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
::3 trainers
:Rock-tunnel-floor-1-2
set sublocation=Rock-Tunnel-floor-1-2
set SoundURL=Mt-Moon-Rock-Tunnel-Vicroty-Road.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo Rock Tunnel - Floor 1
echo !ln!
echo.
echo !cl!####################
echo ###.( )......####################( ).....................####.....( )#
echo ###....#.....#######...( )##########.....####################........#
echo #......#.....####............#######.................................#
echo #............................#########################################
echo ####################################.....................####.....(@)#
echo #..........................................#######.......####........#
echo ########.................( )...............#######...................#
echo ###################000000000000000####################################
echo.
echo You are at @
echo.
set rand=!random:~-1!
if !rand! GTR 7 echo A wild pkmn appeared!%p%&goto Wild-pkmnlvl-calc-!sublocation!
echo [1] Go deeper into the cave
echo [2] Go back
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Lavender-Town
if !errorlevel! equ 2 goto !location!-floor-2-1
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
::3 trainers
:Rock-tunnel-floor-2
set sublocation=Rock-Tunnel-floor-2
set SoundURL=Mt-Moon-Rock-Tunnel-Vicroty-Road.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo Rock Tunnel - Floor 2
echo !ln!
echo.
echo !cl!####################
echo #.( )###......###.......................#####################( ).....#
echo #.............###........####...........#####################....##..#
echo #....###.................############################................#
echo ########......###...................( ).####..................########
echo #.............###........###################....###############......#
echo ############################################....###############.(@)..#
echo #....................................................................#
echo !cl!####################
echo.
echo You are at @
echo.
set rand=!random:~-1!
if !rand! GTR 7 echo A wild pkmn appeared!%p%&goto Wild-pkmnlvl-calc-!sublocation!
echo [1] Go deeper into the cave
echo [2] Go back
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto !location!-floor-1-1
if !errorlevel! equ 2 goto !location!-floor-1
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
::5 trainers
:Rock-tunnel-floor-2-1
set sublocation=Rock-Tunnel-floor-2-1
set SoundURL=Mt-Moon-Rock-Tunnel-Vicroty-Road.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo Rock Tunnel - Floor 2
echo !ln!
echo.
echo !cl!####################
echo #.( )###......###.......................#####################( ).....#
echo #.............###........####...........#####################....##..#
echo #....###.................############################................#
echo ########......###...................(@).####..................########
echo #.............###........###################....###############......#
echo ############################################....###############.( )..#
echo #....................................................................#
echo !cl!####################
echo.
echo You are at @
echo.
set rand=!random:~-1!
if !rand! GTR 7 echo A wild pkmn appeared!%p%&goto Wild-pkmnlvl-calc-!sublocation!
echo [1] Go deeper into the cave
echo [2] Go back
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto !location!-floor-1-2
if !errorlevel! equ 2 goto !location!-floor-1-1
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc
::3 trainers
:Digletts-cave
set sublocation=Digletts-cave
set SoundURL=Viridian-Forest-Digletts-Cave-Seafoam-Islands.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo Digletts cave
echo !ln!
echo.
set rand=!random:~-1!
if !rand! GTR 7 echo A wild pkmn appeared!%p%&goto Wild-pkmnlvl-calc-!sublocation!
echo [1] !g!Vermillion City
echo [2] !g!Pewter City
echo [3] !l!
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Vermillion-City
if !errorlevel! equ 2 goto Digletts-cave-1
if !errorlevel! equ 3 goto Wild-pkmnlvl-calc-digletts-cave
:Digletts-cave-1
cls
if !HM-cut! equ 0 (echo You cant seem to get past the bush by the exit of the cave,
echo perhaps HM-cut can help you get past it%p%&goto Digletts-cave)
echo Your pkmn cuts right through the bushes blocking the entrance%p%&goto Pewter-City
:SS-anne
cls
if !ss-anne! equ 1 (echo Guard: Ah, there is your S.S. Anne ticket, go right ahead%p%
set sublocation=SS-anne
set SoundURL=SS-Anne.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
goto SS-anne-floor-1)
echo Guard: You do not have a ticket, so you cant get on the S.S. Anne%p%&goto !location!
:SS-anne-floor-1-empty
cls&echo The cabin seems to be empty%p%&goto SS-anne-floor-1
:SS-anne-floor-2-empty
cls&echo The cabin seems to be empty%p%&goto SS-anne-floor-2
:SS-anne-floor-1
set SoundURL=SS-Anne.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set sublocation=SS-anne-floor-1
cls
echo !ln!
echo S.S. Anne - Floor 1
echo !ln!
echo.
echo [1] !g!cabin 1
echo [2] !g!cabin 2
echo [3] !g!cabin 3
echo [4] !g!cabin 4
echo [5] !g!cabin 5
echo [6] !g!cabin 6
echo [7] !g!cabin 7
echo [8] !g!cabin 8 (Nurses room)
echo [9] Go up the stairs
echo [0] Exit the S.S. Anne
choice /c 1234567890 /n>nul
if !errorlevel! equ 1 goto SS-anne-floor-1-1
if !errorlevel! equ 2 goto SS-anne-floor-1-2
if !errorlevel! equ 3 goto SS-anne-floor-1-empty
if !errorlevel! equ 4 goto SS-anne-floor-1-empty
if !errorlevel! equ 5 goto SS-anne-floor-1-empty
if !errorlevel! equ 6 goto SS-anne-floor-1-empty
if !errorlevel! equ 7 goto SS-anne-floor-1-empty
if !errorlevel! equ 8 goto SS-anne-floor-1-8
if !errorlevel! equ 9 goto SS-anne-floor-2
if !errorlevel! equ 0 goto SS-anne-floor-1a
:SS-anne-floor-1a
if !HM-cut! equ 1 goto Vermillion-City
cls&echo Guard, We are still at sea sir, you can not disembark yet%p%
goto !sublocation!
:SS-anne-floor-1-1
cls
if !trainer-SS-anne-floor-1-1! equ 1 (echo Trainer: Leave, losing is bad enough%p%
goto SS-anne-floor-1)
set sublocation=SS-anne-floor-1-1
set trainerpkmn=KRABY
set trainerpkmnlvl=10
set trainer-!sublocation!=1
echo Hey you!%p%&goto Trainer
:SS-anne-floor-1-2
cls
if !trainer-SS-anne-floor-1-2! equ 1 (echo Trainer: Leave, losing is bad enough%p%
goto SS-anne-floor-1)
set sublocation=SS-anne-floor-1-2
set trainerpkmn=SHELDER
set trainerpkmnlvl=11
set trainer-!sublocation!=1
echo Hey you!%p%&goto Trainer
:SS-anne-floor-1-6
cls
if !trainer-SS-anne-floor-1-6! equ 1 (echo Trainer: Leave, losing is bad enough%p%
goto SS-anne-floor-1)
set sublocation=SS-anne-floor-1-6
set trainerpkmn=SEAL
set trainerpkmnlvl=11
set trainer-!sublocation!=1
echo Hey you!%p%&goto Trainer
:SS-anne-floor-1-8
set SoundURL=pkmn-Center-Mart.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set SoundURL=Heal.mp3
set sublocation=SS-anne-floor-1-8
cls
echo !ln!
echo S.S. Anne - Nurses room
echo !ln!
echo.
echo [1] Get your pkmn healed by Nurse Joy
echo [2] Save your game
echo [3] Exit this room
choice /c 123 /n>nul
if !errorlevel! equ 1 (cls&echo Nurse Joy: My my, your !invpkmn1! does not look good%p%
cls&echo Nurse Joy: Here let me fix him with my love%p%
cls&echo Your !invpkmn1! is blushed red%p%
cls&echo Nurse Joy: Here you go better than ever%p%
cls&echo !invpkmn1!: !invpkmn1!%p%
cls&echo All your pkmn have full hp now%p%
set /a invpkmn1hp=!invpkmn1lvl!*4
set /a invpkmn2hp=!invpkmn2lvl!*4
set /a invpkmn3hp=!invpkmn3lvl!*4
set /a invpkmn4hp=!invpkmn4lvl!*4
set /a invpkmn5hp=!invpkmn5lvl!*4
set /a invpkmn6hp=!invpkmn6lvl!*4
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!&timeout 3 >nul&goto !sublocation!)
if !errorlevel! equ 2 set location=SS-anne-floor-1-8&goto save-menu
if !errorlevel! equ 3 goto SS-anne-floor-1
:SS-anne-floor-2
set SoundURL=SS-Anne.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set sublocation=SS-anne-floor-2
cls
echo !ln!
echo S.S. Anne - Floor 2
echo !ln!
echo.
echo [1] !g!cabin 1
echo [2] !g!cabin 2
echo [3] !g!cabin 3
echo [4] !g!cabin 4
echo [5] Go up the stairs
echo [6] Go down the stairs
choice /c 123456 /n>nul
if !errorlevel! equ 1 goto SS-anne-floor-2-empty
if !errorlevel! equ 2 goto SS-anne-floor-2-empty
if !errorlevel! equ 3 goto SS-anne-floor-2-3
if !errorlevel! equ 4 goto SS-anne-floor-2-4
if !errorlevel! equ 5 goto SS-anne-floor-3
if !errorlevel! equ 6 goto SS-anne-floor-1
:SS-anne-floor-2-3
set sublocation=SS-anne-floor-2-3
cls
if !trainer-SS-anne-floor-2-3! equ 1 echo Trainer: Leave, losing is bad enough%p%&goto SS-anne-floor-2
set trainerpkmn=SLOWPOKE
set trainerpkmnlvl=10
set trainer-!sublocation!=1
echo Hey you!%p%&goto Trainer
:SS-anne-floor-2-4
set sublocation=SS-anne-floor-2-4
cls
if !trainer-SS-anne-floor-2-4! equ 1 echo Trainer: Leave, losing is bad enough%p%&goto SS-anne-floor-2
set trainerpkmn=GARYADOS
set trainerpkmnlvl=16
set trainer-!sublocation!=1
echo.
echo Hey you!%p%&goto Trainer
:SS-anne-floor-3
set location=SS-anne-floor-3
cls
if !HM-cut! equ 1 echo The Captain is "busy"%p%&goto SS-anne-floor-2
if !rivalencouter-SS-anne! equ 1 goto SS-anne-floor-3-1
if !starter! equ BALBASAUR set rivalstarter=CHARMELEON
if !starter! equ SQUIRTLE set rivalstarter=IVYSAUR
if !starter! equ CHARMANDER set rivalstarter=WARTORTLE
if !starter! equ PIKACHU set rivalstarter=JOLTEON
if !starter! equ EEVEE set rivalstarter=RAICHU
set rivalencounters=3
set rivalstarterlvl=17
echo !rival!: Hey !name!, long time no see!%p%
goto Rival-battle-start
:SS-anne-floor-3-1
set SoundURL=SS-Anne.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls&echo Captain: *pukes*%p%
cls&echo !name!: Here is a glass of water sir%p%
cls&echo Captain: *gulp*%p%
cls&echo Captain: Thanks allot, I feel so much better%p%
cls&echo Captain: Here take this, it is the HM-cut%p%
cls&echo !name!: Wow thanks Captain%p%
cls&echo Captain: We will arrive at Vermillion-City soon%p%
cls&echo Captain: You should go downstairs and pack your baggs%p%
set HM-cut=1
set ss-anne=2
goto SS-anne-floor-2
:Fly-like-a-pie
cls
if !fly! equ 1 echo Mr. Fly-like-a-pie: How fly are you?%p%&goto !sublocation!
echo Mr. Fly-like-a-pie: You look like a pkmn trainer%p%
cls&echo Mr. Fly-like-a-pie: You can have my HM-fly&set HM-fly=1%p%&goto !sublocation!
:pkmn-fanclub
set input=0
if not !bikevoucher! equ 0 (cls&echo Chairman: Hello, !name!!
cls&echo Did you come see me about my pkmn again? No? Too bad!%p%
goto !location!)
cls&echo Chairman: I chair the pkmn Fan Club!%p%
cls&echo Chairman: I have collected over 100 pkmn!%p%
cls&echo Chairman: Im very fussy when it comes to pkmn!%p%
cls&echo Chairman: So... Did you come to visit to hear about my pkmn?%p%
cls&echo Chairman: Good! Then listen up!%p%
cls&echo Chairman: My favorite Rapidash... It... cute... lovely... smart...%p%
cls&echo Chairman: plus... amazing...%p%
cls&echo Chairman: you think so?... oh yes... it... stunning... kindly... love it!%p%
cls&echo Chairman: Hug it... when... sleeping... warm and cuddly...%p%
cls&echo Chairman: spectacular... ravishing...%p%
cls&echo Chairman: ...Oops! Look at the time! I kept you too long!%p%
cls&echo Chairman: Thanks for hearing me out!%p%
cls&echo Chairman: I want you to have this! Its a bike-voucher%p%
cls&echo Chairman: Exchange that for a Bicycle!%p%
cls&echo Chairman: Dont worry, my Fearow will Fly me anywhere!%p%
cls&echo Chairman: So, I dont need a Bicycle! I hope you like cycling!%p%
set bikevoucher=1
goto !location!
:Power-plant
set SoundURL=pkmn-mansion-power-Plant.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls&echo There are large boulders blocking the road%p%&goto Route-9
:pkmn-tower
set SoundURL=pkmn-Tower.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
:pkmn-tower-floor-1
set sublocation=pkmn-tower-floor-1
cls
echo !ln!
echo pkmn Tower - Floor 1
echo !ln!
echo.
echo !cl!
echo !cl!
echo ####################...........###################
echo #################................#################
echo ############..........................############
echo ###########............................###########
echo #########.................................########
echo #########.................................########
echo ######......................................######
echo ###............................................###
echo ###............................................###
echo ###............................................###
echo ###.........................................(1)###
echo ###............................................###
echo ######......................................######
echo ######.........................###################
echo ######.........................###################
echo ######.........................###..........######
echo ############...................###.....###########
echo ############...................###.....###########
echo ####################...........###################
echo #########################(@)######################
echo [1] Exit the pkmn Tower
echo [2] Go upstairs to 1
choice /c 12 /n>nul
if !errorlevel! equ 1 goto Lavender-Town
if !errorlevel! equ 2 goto pkmn-tower-floor-2
:pkmn-tower-floor-2
set sublocation=pkmn-tower-floor-2
cls
echo !ln!
echo pkmn Tower - Floor 2
echo !ln!
echo.
echo !cl!
echo !cl!
echo !cl!
echo ###################..............#################
echo ###################...................############
echo ###################....................###########
echo ################..................##...###########
echo ########..........................##.....#########
echo #####...........#################...........######
echo #####...........######.........................###
echo ###........###########......###########........###
echo ###(1).....###########.....############.....(@)###
echo ###........###########......###########........###
echo ###.............######.........................###
echo ######..........######......................######
echo ########...#################.............#########
echo ############################.....#################
echo ############################.....#################
echo ###########......................#################
echo #################................#################
echo !cl!
echo !cl!
echo [1] Go back downstairs
echo [2] Go upstairs to 1
choice /c 12 /n>nul
if !errorlevel! equ 1 goto 
if !errorlevel! equ 2 goto pkmn-tower-floor-3
:pkmn-tower-floor-3
set sublocation=pkmn-tower-floor-3
cls
echo !ln!
echo pkmn Tower - Floor 3
echo !ln!
echo.
echo !cl!
echo !cl!
echo ####################...........###################
echo ####################.............#################
echo ####################...................###########
echo #########................................#########
echo #########.................................########
echo #########.....####################################
echo ######........###...........................######
echo ###...........###...................######.....###
echo ###...........###...########......##...........###
echo ###(@)........###.....######......##........(1)###
echo ###...........###......#####......##...........###
echo ###...........###.................##...........###
echo ######........###.................##........######
echo #########.....###.....##############...###########
echo #########.............####..................######
echo #########...................................######
echo #################................#################
echo #################................#################
echo !cl!
echo !cl!
echo [1] Go back downstairs
echo [2] Go upstairs to 1
choice /c 12 /n>nul
if !errorlevel! equ 1 goto pkmn-Tower-Floor-2
if !errorlevel! equ 2 goto pkmn-tower-floor-4
:pkmn-tower-floor-4
set sublocation=pkmn-tower-floor-4
cls
echo !ln!
echo pkmn Tower - Floor 4
echo !ln!
echo.
echo !cl!
echo !cl!
echo ####################...........###################
echo ####################.............#################
echo ####################...................###########
echo ############...........##.........##.#############
echo ###########............##...##.##.################
echo #########.....######...##...######........########
echo ######................###...........######...#####
echo ###...........######.....#########.............###
echo ###....................##......................###
echo ###(1)##.........#####.##...##.##...........(@)###
echo ###########......#####......######.............###
echo ###..............##....................###.....###
echo ######...........######.....######..##############
echo #########..###............................########
echo #########.....###...##.........#####......########
echo #########.#....##...##...###...##.##.....#########
echo ############..#...#......###..........############
echo ####################........######################
echo #########################.....####################
echo !cl!
echo [1] Go back downstairs
echo [2] Go upstairs to 1
choice /c 12 /n>nul
if !errorlevel! equ 1 goto pkmn-Tower-Floor-3
if !errorlevel! equ 2 goto pkmn-tower-floor-5
:pkmn-tower-floor-5
set sublocation=pkmn-tower-floor-5
cls
echo !ln!
echo pkmn Tower - Floor 5
echo !ln!
echo.
echo !cl!
echo !cl!
echo ####################...........###################
echo #################...##...........#################
echo #################.#...............##...###########
echo #########..#########.#......##.##.##.....#########
echo #########...###########.....###########...########
echo ##############......................##############
echo ######......................................######
echo ###..............###########..............##...###
echo ###......##.##.################...##.##.##.....###
echo ###(@)...########.................########.....###
echo ###......########.................########..(1)###
echo ###......##.................######.............###
echo ######...##...........######................######
echo ##############.......................#############
echo #########..###########......#####.#####..#########
echo #########..###########......########.##..#########
echo ############...........................###########
echo #################................#################
echo ######################.........###################
echo #############################.####################
echo [1] Go back downstairs
echo [2] Go upstairs to 1
choice /c 12 /n>nul
if !errorlevel! equ 1 goto pkmn-Tower-Floor-4
if !errorlevel! equ 2 goto pkmn-tower-floor-6
:pkmn-tower-floor-6
set sublocation=pkmn-tower-floor-6
cls
echo !ln!
echo pkmn Tower - Floor 6
echo !ln!
echo.
echo !cl!
echo !cl!
echo !cl!
echo #######################..........#################
echo ##############........................############
echo ######################......#####......###########
echo ###########...########......#####......###########
echo #########..........###......#####......###########
echo ######......................#####......###########
echo ###.........................#####..............###
echo #################...........#####..............###
echo ###########...###################...........(@)###
echo ###########...##############.#.................###
echo ###..............#############.##.#....##......###
echo ###########.................########...###########
echo #########........................###.....#########
echo ###########......#####......########...###########
echo ###########......#####......########...###########
echo ############.######.##......######.##.############
echo ######################......######################
echo ####################(1).......####################
echo !cl!
echo [1] Go back downstairs
echo [2] Go upstairs to 1
choice /c 12 /n>nul
if !errorlevel! equ 1 goto pkmn-Tower-Floor-5
if !errorlevel! equ 2 goto pkmn-tower-floor-7
:pkmn-tower-floor-7
set sublocation=pkmn-tower-floor-7
cls
echo !ln!
echo pkmn Tower - Floor 7
echo !ln!
echo.
echo !cl!
echo !cl!
echo !cl!
echo ######################......######################
echo #########################...######################
echo #######################.....######################
echo ####################...........###################
echo ####################...........###################
echo ######################.........###################
echo ######################.........###################
echo ####################.........#####################
echo ####################........######################
echo ####################...........###################
echo ######################.........###################
echo ######################.........###################
echo ####################...........###################
echo #######################.....######################
echo #######################.....######################
echo #######################.....######################
echo #######################.....######################
echo #######################........###################
echo !cl!
echo [1] Go back downstairs
choice /c 12 /n>nul
if !errorlevel! equ 1 goto pkmn-Tower-Floor-6
:Safari-zone
set SoundURL=Evolution.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
:Safari-zone-floor-0
set sublocation=Safari-zone-Center-Area
cls
echo !ln!
echo Safari Zone - Center Area
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Safari-zone-floor-1
set sublocation=Safari-zone-Area-1
cls
echo !ln!
echo Safari Zone - Area 1
echo !ln!
echo.
:Safari-zone-floor-2
set sublocation=Safari-zone-Area-2
cls
echo !ln!
echo Safari Zone - Area 2
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Safari-zone-floor-3
set sublocation=Safari-zone-Area-3
cls
echo !ln!
echo Safari Zone - Area 3
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:pkmn-mansion
set SoundURL=pkmn-mansion-power-plant.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
::begin floor 2
:pkmn-mansion-floor-1
set sublocation=pkmn-mansion-floor-1
cls
echo !ln!
echo pkmn Mansion - Floor 1
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:pkmn-mansion-floor-2
set sublocation=pkmn-mansion-floor-2
cls
echo !ln!
echo pkmn Mansion - Floor 2
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:pkmn-mansion-floor-3
set sublocation=pkmn-mansion-floor-3
cls
echo !ln!
echo pkmn Mansion - Floor 3
echo !ln!
echo.
:pkmn-mansion-floor-4
set sublocation=pkmn-mansion-floor-4
cls
echo !ln!
echo pkmn Mansion - Floor 4
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Seafoam-islands
set SoundURL=Viridian-Forest-Digletts-Cave-Seafoam-Islands.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls&echo Nothing here yet%p%&goto !location!
:Seafoam-islands-floor-1
set sublocation=Seafoam-islands-floor-1
cls
echo !ln!
echo Seafoam Islands - Floor 1
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Seafoam-islands-floor-2
set sublocation=Seafoam-islands-floor-2
cls
echo !ln!
echo Seafoam Islands - Floor 2
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Seafoam-islands-floor-3
set sublocation=Seafoam-islands-floor-3
cls
echo !ln!
echo Seafoam Islands - Floor 3
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Seafoam-islands-floor-4
set sublocation=Seafoam-islands-floor-4
cls
echo !ln!
echo Seafoam Islands - Floor 4
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Seafoam-islands-floor-5
set sublocation=Seafoam-islands-floor-5
cls
echo !ln!
echo Seafoam Islands - Floor 5
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Victory-road
set SoundURL=The-final-road.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls&echo Nothing here yet%p%&goto !location!
:Victory-road-floor-1
set sublocation=Victory-road-floor-1
cls
echo !ln!
echo Victory Road - Floor 1
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Victory-road-floor-2
set sublocation=Victory-road-floor-2
cls
echo !ln!
echo Victory Road - Floor 2
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Victory-road-floor-3
set sublocation=Victory-road-floor-3
cls
echo !ln!
echo Victory Road - Floor 3
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Cerulean-cave
set SoundURL=Team-Rocket-Hideout-Cerulean-Cave-Power-Plant.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
:Cerulean-cave-floor-1
set sublocation=Cerulean-cave-floor-1
cls
echo !ln!
echo Cerulean Cave - Floor 1
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Cerulean-cave-floor-2
set sublocation=Cerulean-cave-floor-2
cls
echo !ln!
echo Cerulean Cave - Floor 2
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Cerulean-cave-floor-3
set sublocation=Cerulean-cave-floor-3
cls
echo !ln!
echo Cerulean Cave - Floor 3
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Game-Corner
set SoundURL=Casino.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
:Game-Corner-0
cls
echo !ln!
echo Game corner - Coins: !coins! - Money: !money!
echo !ln!
echo.
echo [1] Buy 50 coins ($1.000)
echo [2] Get on the slot machine
echo [3] Exit the Game corner
echo [4] Take a look behind the odd poster
echo [5] Go to the price hall
choice /c 12345 /n>nul
if !errorlevel! equ 1 goto Game-Corner-1
if !errorlevel! equ 2 set bet=1&goto Bet
if !errorlevel! equ 3 goto Celadon-City
if !errorlevel! equ 4 goto Rocket-Hideout
if !errorlevel! equ 5 goto Game-Corner-5
:Game-Corner-1
if !money! GTR 999 set /a coins+=50&set /a money-=1000&echo Assistant: Here you go&goto Game-Corner-0
cls&echo Assistant: You dont have enough money for that%p%&goto Game-Corner-0
:Bet
cls
echo.
echo Slot Machine - Coins: !coins!
echo.
echo [1] Bet (!bet!)
echo [2] Change bet
echo [3] Quit
choice /c 123 /n>nul
if !errorlevel! equ 1 if !coins! LSS !bet! cls&echo You dont have enough coins%p%&goto Bet
if !errorlevel! equ 2 goto Changebet
if !errorlevel! equ 3 goto Game-corner-0
set slot=0&set /a coins=!coins!-!bet!&goto Slot0
:Changebet
cls&echo Bet how much? - (coins: !coins!)
set /p bet=
if !bet! LSS 2 goto changebet
if !bet! GTR !coins! goto changebet
goto Bet
:Slot0
set slot1-1=########
set slot1-2=       #
set slot1-3=       #
set slot1-4=       #
set slot1-5=       #
set slot1-6=       #
set slot1-7=       #
set slot1-8=       #
set slot1-9=       #
set slot1-10=       #
set slot1-11=       #
set slot1-12=       #
set slot1-13=########
set slot2-1=########
set slot2-2=       #
set slot2-3=       #
set slot2-4=       #
set slot2-5=       #
set slot2-6=       #
set slot2-7=       #
set slot2-8=       #
set slot2-9=       #
set slot2-10=       #
set slot2-11=       #
set slot2-12=       #
set slot2-13=########
set slot3-1=########
set slot3-2=       #
set slot3-3=       #
set slot3-4=       #
set slot3-5=       #
set slot3-6=       #
set slot3-7=       #
set slot3-8=       #
set slot3-9=       #
set slot3-10=       #
set slot3-11=       #
set slot3-12=       #
set slot3-13=########
goto Scoreboard
:Slot1
set slot=1
set input=!random:~-1!
set slot1=!input!
if !input! equ 0 goto 777
if !input! equ 1 goto BAR
if !input! equ 2 goto DIGLETT
if !input! equ 3 goto VOLTORB
if !input! equ 4 goto CHERRY
if !input! GTR 4 goto Slot1
:Slot2
set slot=2
set input=!random:~-1!
set slot2=!input!
if !input! equ 0 goto 777
if !input! equ 1 goto BAR
if !input! equ 2 goto DIGLETT
if !input! equ 3 goto VOLTORB
if !input! equ 4 goto CHERRY
if !input! GTR 4 goto Slot2
:Slot3
set slot=3
set input=!random:~-1!
set slot3=!input!
if !input! equ 0 goto 777
if !input! equ 1 goto BAR
if !input! equ 2 goto DIGLETT
if !input! equ 3 goto VOLTORB
if !input! equ 4 goto CHERRY
if !input! GTR 4 goto Slot3
:Scoreboard
cls
echo.
echo Coins: !coins!
echo.
echo U!slot1-1!!slot2-1!!slot3-1!
echo U!slot1-2!!slot2-2!!slot3-2!
echo U!slot1-3!!slot2-3!!slot3-3!
echo U!slot1-4!!slot2-4!!slot3-4!
echo U!slot1-5!!slot2-5!!slot3-5!
echo U!slot1-6!!slot2-6!!slot3-6!
echo U!slot1-7!!slot2-7!!slot3-7!
echo U!slot1-8!!slot2-8!!slot3-8!
echo U!slot1-9!!slot2-9!!slot3-9!
echo U!slot1-10!!slot2-10!!slot3-10!
echo U!slot1-11!!slot2-11!!slot3-11!
echo U!slot1-12!!slot2-12!!slot3-12!
echo U!slot1-13!!slot2-13!!slot3-13!
timeout 1 >nul
if !slot! equ 0 goto Slot1
if !slot! equ 1 goto Slot2
if !slot! equ 2 goto Slot3
if !slot! equ 3 pause>nul&goto Checkscore
:Checkscore
if !slot1! equ !slot2! if !slot2! equ !slot3! cls&echo Jackpot!!! - !slot1!!slot2!!slot3!%p%&set score=0&set /a coins+=25*!bet!&goto Bet
goto Bet
:777
set slot!slot!-1=########
set slot!slot!-2=       #
set slot!slot!-3=       #
set slot!slot!-4=  #### #
set slot!slot!-5=     # #
set slot!slot!-6=     # #
set slot!slot!-7=     # #
set slot!slot!-8=     # #
set slot!slot!-9=     # #
set slot!slot!-10=     # #
set slot!slot!-11=       #
set slot!slot!-12=       #
set slot!slot!-13=########
goto Scoreboard
:BAR
set slot!slot!-1=########
set slot!slot!-2=       #
set slot!slot!-3=       #
set slot!slot!-4=       #
set slot!slot!-5=       #
set slot!slot!-6= ##### #
set slot!slot!-7= #BAR# #
set slot!slot!-8= ##### #
set slot!slot!-9=       #
set slot!slot!-10=       #
set slot!slot!-11=       #
set slot!slot!-12=       #
set slot!slot!-13=########
goto Scoreboard
:DIGLETT
set slot!slot!-1=########
set slot!slot!-2=      ##
set slot!slot!-3=     # #
set slot!slot!-4=  ###  #
set slot!slot!-5= #   # #
set slot!slot!-6= #- -# #
set slot!slot!-7= #   # #
set slot!slot!-8= #\ /# #
set slot!slot!-9= #/ \# #
set slot!slot!-10= #   # #
set slot!slot!-11=  ###  #
set slot!slot!-12=  #  # #
set slot!slot!-13=########
goto Scoreboard
:VOLTORB
set slot!slot!-1=########
set slot!slot!-2=       #
set slot!slot!-3=       #
set slot!slot!-4=  ###  #
set slot!slot!-5= ##### #
set slot!slot!-6= #-#-# #
set slot!slot!-7= ##### #
set slot!slot!-8= #   # #
set slot!slot!-9= #   # #
set slot!slot!-10=  ###  #
set slot!slot!-11=       #
set slot!slot!-12=       #
set slot!slot!-13=########
goto Scoreboard
:CHERRY
set slot!slot!-1=########
set slot!slot!-2=       #
set slot!slot!-3=       #
set slot!slot!-4=       #
set slot!slot!-5=       #
set slot!slot!-6= ##  # #
set slot!slot!-7= ##### #
set slot!slot!-8=  ###  #
set slot!slot!-9= ## ## #
set slot!slot!-10= ## ## #
set slot!slot!-11=       #
set slot!slot!-12=       #
set slot!slot!-13=########
goto Scoreboard
:Game-Corner-5
cls
echo !ln!
echo Game corner Prize hall - Coins: !coins!
echo !ln!
echo.
echo [1] 
echo [2] 
echo [3] Go to the Game corner
echo [4] 
echo [5] 
choice /c 12345 /n>nul
if !errorlevel! equ 1 goto Game-Corner-0
if !errorlevel! equ 2 goto Game-Corner-0
if !errorlevel! equ 3 goto Game-Corner-0
if !errorlevel! equ 4 goto Game-Corner-0
if !errorlevel! equ 5 goto Game-Corner-0
:Rocket-Hideout
set sublocation=Rocket-Hideout
set SoundURL=Team-Rocket-Hideout-Cerulean-Cave-Power-Plant.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls&echo There is something behind the poster%p%
:Rocket-Hideout-floor-1
set sublocation=Rocket-Hideout-floor-1
cls
echo !ln!
echo Rocket hideout - BFloor 1
echo !ln!
echo !cl!
echo !cl!
echo ##########################...(@)..(1)..###########
echo ##########################.............###########
echo ############################........##############
echo ###.............................................##
echo ###.............................................##
echo ########...##########.........#########...########
echo ###.............#####.........#####.............##
echo ###.............#####.........#####.............##
echo ###..#########..#####.........#####.##########..##
echo ###..#########..#####.........#####.##########..##
echo ###.............#####.........#####.............##
echo !cl!
echo #####.............................###...........##
echo #####....###############..........###(3)##########
echo #####....###############..........################
echo #####....###############..........################
echo #####....###############..........#####.........##
echo #####....###############......(2).#####.........##
echo #####.............................#####.........##
echo !cl!
echo [1] Go back upstairs
echo [2] Go downstairs to 1
echo [3] Go to the elavator to 3
choice /c 123 /n>nul
if !errorlevel! equ 1 goto Game-Corner
if !errorlevel! equ 2 goto Rocket-Hideout-floor-2
if !errorlevel! equ 3 echo You dont have a key for this%p%&goto !sublocation!
:Rocket-Hideout-floor-2
set sublocation=Rocket-Hideout-floor-2
cls
echo !ln!
echo Rocket hideout - BFloor 2
echo !ln!
echo !cl!
echo ##.........##.................##.......##........#
echo ##.........##..#..#..#..#.....##...(1).##....(@).#
echo ##..####................########.......##........#
echo ##........#######..##..................##........#
echo ######.............##..................##........#
echo ##..##...###..#.#..##......#####.......##........#
echo ##.........####.#..##......#...........##........#
echo ######.............##......#..##.................#
echo ##...................#######..##.................#
echo ##..###..#####.......###......####################
echo ##.......#######..............##.................#
echo ##..#####.....#...............##.................#
echo ##.......................##...##.......##(3)######
echo ##..####.#..##..#.........#............###########
echo ##..##......##..#######...#............###########
echo ##...##..#..##............#....#..(2)..###########
echo ##...##..#..##............#....#.......###########
echo ##...##..#..##.....########...##.......###########
echo ##..........#####.............##.......###########
echo ##.....#########################.......###########
echo !cl!
echo [1] Go back upstairs
echo [2] Go downstairs to 1
echo [3] Go upstairs to 2
echo [4] Go into the elavator to 3
choice /c 1234 /n>nul
if !errorlevel! equ 1 goto Rocket-Hideout-floor-1
if !errorlevel! equ 2 goto Rocket-Hideout-floor-3
if !errorlevel! equ 3 goto Rocket-Hideout-floor-1-1
if !errorlevel! equ 4 goto Rocket-Hideout-elavator
:Rocket-Hideout-floor-3
set sublocation=Rocket-Hideout-floor-3
cls
echo !ln!
echo Rocket hideout - BFloor 3
echo !ln!
echo !cl!
echo ###.............................................##
echo ###...................................(@).......##
echo ###.............................................##
echo ############################..##................##
echo ###...........................###########.......##
echo #############....###########..##................##
echo ###...........................##................##
echo #####...##...#####.....#########................##
echo ###....................#########.....#############
echo ###...####...#...#.....#####..##................##
echo ###...####...#................##................##
echo ###................####..#######................##
echo ###...####.........####..#######................##
echo ###................####..(1)..####################
echo ##########..###....####.......####################
echo ###.........##.....####.........##################
echo ###................####.........##################
echo ###...........#########.........##################
echo ############..#######.............################
echo ###...............................################
echo !cl!
echo [1] Go back upstairs
echo [2] Go downstairs to 1
choice /c 12 /n>nul
if !errorlevel! equ 1 goto Rocket-Hideout-floor-2
if !errorlevel! equ 2 goto Rocket-Hideout-floor-4
:Rocket-Hideout-floor-4
set sublocation=Rocket-Hideout-floor-4
if !Trainer-Rocket-Hideout-floor-4! equ 1 cls&set lift-key=1&echo You got the lift-key%p%
if !Trainer-Rocket-Hideout-floor-4! equ 0 set Trainer-Rocket-Hideout-floor-4=1&goto Trainer-Rocket-Hideout-floor-4
cls
echo !ln!
echo Rocket hideout - BFloor 4
echo !ln!
echo !cl!
echo #####################.........################..##
echo #####.............###.........##................##
echo #####.........................##................##
echo ###..#########................##.....#########..##
echo ###..#########....###.........##.....#########..##
echo ###...............###.........#####.............##
echo #####################.........#####...........####
echo ###...............###.........#####...........####
echo ###...............###....(@)..##................##
echo ###..#####........###.........####################
echo ###..#####....#######.........###...............##
echo ###..#####...............########...............##
echo ###......................###....................##
echo ###......................###.......###( )#########
echo ############################.......###############
echo #######################............###############
echo #####..............................###############
echo #####.....########.................###############
echo ###.......########.................###############
echo ###................................###############
echo !cl!
echo [1] Go back upstairs
choice /c 1 /n>nul
if !errorlevel! equ 1 goto Rocket-Hideout-floor-3
:Rocket-Hideout-floor-4-1
set sublocation=Rocket-Hideout-floor-4-1
if !Trainer-Rocket-Hideout-Giovanni! equ 1 set Silphscope=1&cls&echo You got the Silphscope^! %p%
cls
echo !ln!
echo Rocket hideout - BFloor 4
echo !ln!
echo !cl!
echo #####################.........################..##
echo #####.............###.........##................##
echo #####.........................##................##
echo ###..#########................##.....#########..##
echo ###..#########....###.........##.....#########..##
echo ###...............###.........#####.............##
echo #####################.........#####...........####
echo ###...............###.........#####...........####
echo ###...............###....( )..##................##
echo ###..#####........###.........####################
echo ###..#####....#######.........###...............##
echo ###..#####...............########...............##
echo ###......................###....................##
echo ###......................###.......###(@)#########
echo ############################.......###############
echo #######################............###############
echo #####..............................###############
echo #####.....########.................###############
echo ###.......########.................###############
echo ###................................###############
echo !cl!
echo [1] Go back to the elavator
echo [2] Go fight Giovanni
choice /c 12 /n>nul
if !errorlevel! equ 1 goto Rocket-Hideout-Elavator
if !errorlevel! equ 2 goto Trainer-Rocket-Hideout-Giovanni
:Rocket-Hideout-elavator
set sublocation=Rocket-Hideout-elavator
cls
echo !ln!
echo Rocket hideout - elavator
echo !ln!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo !cl!
echo ######################################(1)#########
echo ####################################.............#
echo ####################################......A......#
echo ####################################.............#
echo ####################################.............#
echo ####################################.............#
echo ####################################.............#
echo !cl!
echo [1] Go back to 1
echo [2] Select what floor you want to go to
choice /c 12 /n>nul
if !errorlevel! equ 1 goto Rocket-Hideout-floor-2
if !errorlevel! equ 2 goto Rocket-Hideout-floor-4-1
:Department-Store
cls
if !guardwater! equ 0 echo Shop keeper: Hey could you give this fresh water to a guard?%p%&set guardwater=1
goto Mart
:Department-Store-floor-1
set sublocation=Department-Store-floor-1
cls
echo !ln!
echo !location! - Department store - Floor 1
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Department-Store-floor-2
set sublocation=Department-Store-floor-2
cls
echo !ln!
echo !location! - Department store - Floor 2
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Department-Store-floor-3
set sublocation=Department-Store-floor-3
cls
echo !ln!
echo !location! - Department store - Floor 3
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Department-Store-floor-4
set sublocation=Department-Store-floor-4
cls
echo !ln!
echo !location! - Department store - Floor 4
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Department-Store-floor-5
set sublocation=Department-Store-floor-5
cls
echo !ln!
echo !location! - Department store - Floor 5
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Department-Store-floor-6
set sublocation=Department-Store-floor-6
cls
echo !ln!
echo !location! - Department store - Rooftop
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co
set SoundURL=Silph-company.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
:Silph-Co-floor-1
set sublocation=Silph-Co-floor-1
cls
echo !ln!
echo Silph Co. - Floor 1
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-2
set sublocation=Silph-Co-floor-2
cls
echo !ln!
echo Silph Co. - Floor 2
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-3
set sublocation=Silph-Co-floor-3
cls
echo !ln!
echo Silph Co. - Floor 3
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-4
set sublocation=Silph-Co-floor-4
cls
echo !ln!
echo Silph Co. - Floor 4
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-5
set sublocation=Silph-Co-floor-5
cls
echo !ln!
echo Silph Co. - Floor 5
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-6
set sublocation=Silph-Co-floor-6
cls
echo !ln!
echo Silph Co. - Floor 6
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-7
set sublocation=Silph-Co-floor-7
cls
echo !ln!
echo Silph Co. - Floor 7
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-8
set sublocation=Silph-Co-floor-8
cls
echo !ln!
echo Silph Co. - Floor 8
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-9
set sublocation=Silph-Co-floor-9
cls
echo !ln!
echo Silph Co. - Floor 9
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-10
set sublocation=Silph-Co-floor-10
cls
echo !ln!
echo Silph Co. - Floor 10
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Silph-Co-floor-11
set sublocation=Silph-Co-floor-11
cls
echo !ln!
echo Silph Co. - Floor 11
echo !ln!
echo.
echo !cl!
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo #................................................#
echo !cl!
:Fighting-dojo
set SoundURL=Gym.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls&echo Nothing here yet%p%&goto !location!
:Underground-passage
cls
echo !ln!
echo Underground passage to !location!
echo !ln!
echo.
echo                      ________________
echo                     /___________/    \
echo                     i          i  __  i
echo         )\)\        i          i i .i i
echo       )\)\ /(       i__________i_i__i_i
echo.
timeout 2 >nul
goto !location!
:pkmn-Center
set SoundURL=pkmn-Center-Mart.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set sublocation=pkmn-Center-0
:pkmn-Center-0
cls
echo !ln!
echo pkmn Center - !location!
echo !ln!
echo.
echo                      __________________
echo                     /                 / \
echo                   ___________________/  i
echo                  /___________________\ /i
echo                  i       //P\\       i/ i
echo                  i_______\\_//_______i  i
echo                  i     i  ___  i     i /
echo                  i     i i  .i i     i/   )\ )\ 
echo   )\ )\          i_____i_i___i_i_____i  )\ )\)\
echo.
echo [1] Get your pkmn healed by Nurse Joy
echo [2] Get other services from Nurse Joy
echo [3] Exit the pkmn center
echo [4] Get on the computer
echo [5] Options
echo [6] Fly to another location
choice /c 1234567 /n>nul
if !errorlevel! equ 1 goto pkmn-Center-1
if !errorlevel! equ 2 goto pkmn-Center-2
if !errorlevel! equ 3 goto !location!
if !errorlevel! equ 4 set sublocation=pkmn-Center-0&goto pkmn-Center-4
if !errorlevel! equ 5 goto pkmn-Center-5
if !errorlevel! equ 6 goto pkmn-Center-6
if !errorlevel! equ 7 goto pkmn-Center-7
:pkmn-Center-1
set SoundURL=Heal.mp3
cls&echo Nurse Joy: My my, your !invpkmn1! does not look good%p%
cls&echo Nurse Joy: Here let me fix him with my love%p%
cls&echo Your !invpkmn1! is blushed red%p%
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!&timeout 2 >nul
set SoundURL=pkmn-center-mart.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls&echo Nurse Joy: Here you go better than ever%p%
cls&echo !invpkmn1!: !invpkmn1!%p%
cls&echo *All your pkmn have full hp now*%p%
set /a invpkmn1hp=!invpkmn1lvl!*4
set /a invpkmn2hp=!invpkmn2lvl!*4
set /a invpkmn3hp=!invpkmn3lvl!*4
set /a invpkmn4hp=!invpkmn4lvl!*4
set /a invpkmn5hp=!invpkmn5lvl!*4
set /a invpkmn6hp=!invpkmn6lvl!*4
goto pkmn-Center-0
:pkmn-Center-2
cls&echo !name!: Hey Joy, how about you show me your "pkmns"%p%
cls&echo Nurse Joy: I dont think you are trained enough to handle them kid%p%
cls&echo Nurse Joy: Buzz off like a Beedrill before I doublekick you!%p%
cls&echo "You run away to town hiding your face"%p%
goto !location!
:pkmn-Center-4
:: deleted the load from save file thingy
:pkmn-Center-4a
set /a totalpkmn=!pkmnstorage!+!inventory!
cls
echo !ln!
echo Computer storage: !pkmnstorage!    Inventory: !inventory!    Total pkmn: !totalpkmn!
echo !ln!
echo  1:!pkmn1nick! LVL:!pkmn1lvl!          1:!invpkmn1nick! LVL:!invpkmn1lvl!
echo  2:!pkmn2nick! LVL:!pkmn2lvl!          2:!invpkmn2nick! LVL:!invpkmn2lvl!
echo  3:!pkmn3nick! LVL:!pkmn3lvl!          3:!invpkmn3nick! LVL:!invpkmn3lvl!
echo  4:!pkmn4nick! LVL:!pkmn4lvl!          4:!invpkmn4nick! LVL:!invpkmn4lvl!
echo  5:!pkmn5nick! LVL:!pkmn5lvl!          5:!invpkmn5nick! LVL:!invpkmn5lvl!
echo  6:!pkmn6nick! LVL:!pkmn6lvl!          6:!invpkmn6nick! LVL:!invpkmn6lvl!
echo  7:!pkmn7nick! LVL:!pkmn7lvl!
echo  8:!pkmn8nick! LVL:!pkmn8lvl!
echo  9:!pkmn9nick! LVL:!pkmn9lvl!
echo 10:!pkmn10nick! LVL:!pkmn10lvl!
echo 11:!pkmn11nick! LVL:!pkmn11lvl!
echo 12:!pkmn12nick! LVL:!pkmn12lvl!
echo 13:!pkmn13nick! LVL:!pkmn13lvl!
echo 14:!pkmn14nick! LVL:!pkmn14lvl!
echo 15:!pkmn15nick! LVL:!pkmn15lvl!
echo 16:!pkmn16nick! LVL:!pkmn16lvl!
echo 17:!pkmn17nick! LVL:!pkmn17lvl!
echo 18:!pkmn18nick! LVL:!pkmn18lvl!
echo 19:!pkmn19nick! LVL:!pkmn19lvl!
echo 20:!pkmn20nick! LVL:!pkmn20lvl!
echo !ln!
echo [1] Start swapping pkmn
echo [2] Release a pkmn (from the left column)
echo [3] Go back
choice /c 123 /n>nul
if !errorlevel! equ 1 goto pkmn-Center-4-1
if !errorlevel! equ 2 goto pkmn-Center-4-2
if !errorlevel! equ 3 goto !sublocation!
:pkmn-Center-4-1
cls
echo !ln!
echo pkmn Swap
echo !ln!
echo Computer storage: !pkmnstorage!    Inventory: !inventory!    Total pkmn: !totalpkmn!
echo !ln!
echo  1:!pkmn1! LVL:!pkmn1lvl!          1:!invpkmn1! LVL:!invpkmn1lvl!
echo  2:!pkmn2! LVL:!pkmn2lvl!          2:!invpkmn2! LVL:!invpkmn2lvl!
echo  3:!pkmn3! LVL:!pkmn3lvl!          3:!invpkmn3! LVL:!invpkmn3lvl!
echo  4:!pkmn4! LVL:!pkmn4lvl!          4:!invpkmn4! LVL:!invpkmn4lvl!
echo  5:!pkmn5! LVL:!pkmn5lvl!          5:!invpkmn5! LVL:!invpkmn5lvl!
echo  6:!pkmn6! LVL:!pkmn6lvl!          6:!invpkmn6! LVL:!invpkmn6lvl!
echo  7:!pkmn7! LVL:!pkmn7lvl!
echo  8:!pkmn8! LVL:!pkmn8lvl!
echo  9:!pkmn9! LVL:!pkmn9lvl!
echo 10:!pkmn10! LVL:!pkmn10lvl!
echo 11:!pkmn11! LVL:!pkmn11lvl!
echo 12:!pkmn12! LVL:!pkmn12lvl!
echo 13:!pkmn13! LVL:!pkmn13lvl!
echo 14:!pkmn14! LVL:!pkmn14lvl!
echo 15:!pkmn15! LVL:!pkmn15lvl!
echo 16:!pkmn16! LVL:!pkmn16lvl!
echo 17:!pkmn17! LVL:!pkmn17lvl!
echo 18:!pkmn18! LVL:!pkmn18lvl!
echo 19:!pkmn19! LVL:!pkmn19lvl!
echo 20:!pkmn20! LVL:!pkmn20lvl!
echo !ln!
echo Type the number of the pkmn from the left column [1-20]
set /p swap1=
if !swap1! equ 1 set temppkmn=!pkmn1!&set temppkmnlvl=!pkmn1lvl!&goto pkmn-Center-4-1a
if !swap1! equ 2 set temppkmn=!pkmn2!&set temppkmnlvl=!pkmn2lvl!&goto pkmn-Center-4-1a
if !swap1! equ 3 set temppkmn=!pkmn3!&set temppkmnlvl=!pkmn3lvl!&goto pkmn-Center-4-1a
if !swap1! equ 4 set temppkmn=!pkmn4!&set temppkmnlvl=!pkmn4lvl!&goto pkmn-Center-4-1a
if !swap1! equ 5 set temppkmn=!pkmn5!&set temppkmnlvl=!pkmn5lvl!&goto pkmn-Center-4-1a
if !swap1! equ 6 set temppkmn=!pkmn6!&set temppkmnlvl=!pkmn6lvl!&goto pkmn-Center-4-1a
if !swap1! equ 7 set temppkmn=!pkmn7!&set temppkmnlvl=!pkmn7lvl!&goto pkmn-Center-4-1a
if !swap1! equ 8 set temppkmn=!pkmn8!&set temppkmnlvl=!pkmn8lvl!&goto pkmn-Center-4-1a
if !swap1! equ 9 set temppkmn=!pkmn9!&set temppkmnlvl=!pkmn9lvl!&goto pkmn-Center-4-1a
if !swap1! equ 10 set temppkmn=!pkmn10!&set temppkmnlvl=!pkmn10lvl!&goto pkmn-Center-4-1a
if !swap1! equ 11 set temppkmn=!pkmn11!&set temppkmnlvl=!pkmn11lvl!&goto pkmn-Center-4-1a
if !swap1! equ 12 set temppkmn=!pkmn12!&set temppkmnlvl=!pkmn12lvl!&goto pkmn-Center-4-1a
if !swap1! equ 13 set temppkmn=!pkmn13!&set temppkmnlvl=!pkmn13lvl!&goto pkmn-Center-4-1a
if !swap1! equ 14 set temppkmn=!pkmn14!&set temppkmnlvl=!pkmn14lvl!&goto pkmn-Center-4-1a
if !swap1! equ 15 set temppkmn=!pkmn15!&set temppkmnlvl=!pkmn15lvl!&goto pkmn-Center-4-1a
if !swap1! equ 16 set temppkmn=!pkmn16!&set temppkmnlvl=!pkmn16lvl!&goto pkmn-Center-4-1a
if !swap1! equ 17 set temppkmn=!pkmn17!&set temppkmnlvl=!pkmn17lvl!&goto pkmn-Center-4-1a
if !swap1! equ 18 set temppkmn=!pkmn18!&set temppkmnlvl=!pkmn18lvl!&goto pkmn-Center-4-1a
if !swap1! equ 19 set temppkmn=!pkmn19!&set temppkmnlvl=!pkmn19lvl!&goto pkmn-Center-4-1a
if !swap1! equ 20 set temppkmn=!pkmn20!&set temppkmnlvl=!pkmn20lvl!&goto pkmn-Center-4-1a
goto pkmn-Center-4-1
:pkmn-Center-4-1a
echo Type the number of the pkmn from the right column [1-6]
set /p swap2=
if !temppkmn! equ NAN if !swap2! equ 1 cls&echo ERROR:cant replace invpkmn1 with NAN%p%&goto pkmn-Center-4-1
if !swap2! equ 1 set pkmn!swap1!=!invpkmn1!&set pkmn!swap1!lvl=!invpkmn1lvl!&set swap3=!invpkmn1!&set invpkmn1=!temppkmn!&set invpkmn1lvl=!temppkmnlvl!&goto pkmn-Center-4-1b
if !swap2! equ 2 set pkmn!swap1!=!invpkmn2!&set pkmn!swap1!lvl=!invpkmn2lvl!&set swap3=!invpkmn2!&set invpkmn2=!temppkmn!&set invpkmn2lvl=!temppkmnlvl!&goto pkmn-Center-4-1b
if !swap2! equ 3 set pkmn!swap1!=!invpkmn3!&set pkmn!swap1!lvl=!invpkmn3lvl!&set swap3=!invpkmn3!&set invpkmn3=!temppkmn!&set invpkmn3lvl=!temppkmnlvl!&goto pkmn-Center-4-1b
if !swap2! equ 4 set pkmn!swap1!=!invpkmn4!&set pkmn!swap1!lvl=!invpkmn4lvl!&set swap3=!invpkmn4!&set invpkmn4=!temppkmn!&set invpkmn4lvl=!temppkmnlvl!&goto pkmn-Center-4-1b
if !swap2! equ 5 set pkmn!swap1!=!invpkmn5!&set pkmn!swap1!lvl=!invpkmn5lvl!&set swap3=!invpkmn5!&set invpkmn5=!temppkmn!&set invpkmn5lvl=!temppkmnlvl!&goto pkmn-Center-4-1b
if !swap2! equ 6 set pkmn!swap1!=!invpkmn6!&set pkmn!swap1!lvl=!invpkmn6lvl!&set swap3=!invpkmn6!&set invpkmn6=!temppkmn!&set invpkmn6lvl=!temppkmnlvl!&goto pkmn-Center-4-1b
goto pkmn-Center-4-1a
:pkmn-Center-4-1b
if not !temppkmn! equ NAN set /a inventory=!inventory!+1&set /a pkmnstorage-=1
if not !swap3! equ NAN set /a inventory-=1&set /a pkmnstorage+=1
:pkmn-Center-4-1c
if !invpkmn1! equ NAN set invpkmn1=!invpkmn2!&set invpkmn1lvl=!invpkmn2lvl!&set invpkmn2=NAN&set invpkmn2lvl=NAN
if !invpkmn2! equ NAN set invpkmn2=!invpkmn3!&set invpkmn2lvl=!invpkmn3lvl!&set invpkmn3=NAN&set invpkmn3lvl=NAN
if !invpkmn3! equ NAN set invpkmn3=!invpkmn4!&set invpkmn3lvl=!invpkmn4lvl!&set invpkmn4=NAN&set invpkmn4lvl=NAN
if !invpkmn4! equ NAN set invpkmn4=!invpkmn5!&set invpkmn4lvl=!invpkmn5lvl!&set invpkmn5=NAN&set invpkmn5lvl=NAN
if !invpkmn5! equ NAN set invpkmn5=!invpkmn6!&set invpkmn5lvl=!invpkmn6lvl!&set invpkmn6=NAN&set invpkmn6lvl=NAN
if !pkmn19! equ NAN set pkmn19=!pkmn20!&set pkmn19lvl=!pkmn20lvl!&set pkmn20=NAN&set pkmn20lvl=NAN
if !pkmn18! equ NAN set pkmn18=!pkmn19!&set pkmn18lvl=!pkmn19lvl!&set pkmn19=NAN&set pkmn19lvl=NAN
if !pkmn17! equ NAN set pkmn17=!pkmn18!&set pkmn17lvl=!pkmn18lvl!&set pkmn18=NAN&set pkmn18lvl=NAN
if !pkmn16! equ NAN set pkmn16=!pkmn17!&set pkmn16lvl=!pkmn17lvl!&set pkmn17=NAN&set pkmn17lvl=NAN
if !pkmn15! equ NAN set pkmn15=!pkmn16!&set pkmn15lvl=!pkmn16lvl!&set pkmn16=NAN&set pkmn16lvl=NAN
if !pkmn14! equ NAN set pkmn14=!pkmn15!&set pkmn14lvl=!pkmn15lvl!&set pkmn15=NAN&set pkmn15lvl=NAN
if !pkmn13! equ NAN set pkmn13=!pkmn14!&set pkmn13lvl=!pkmn14lvl!&set pkmn14=NAN&set pkmn14lvl=NAN
if !pkmn12! equ NAN set pkmn12=!pkmn13!&set pkmn12lvl=!pkmn13lvl!&set pkmn13=NAN&set pkmn13lvl=NAN
if !pkmn11! equ NAN set pkmn11=!pkmn12!&set pkmn11lvl=!pkmn12lvl!&set pkmn12=NAN&set pkmn12lvl=NAN
if !pkmn10! equ NAN set pkmn10=!pkmn11!&set pkmn10lvl=!pkmn11lvl!&set pkmn11=NAN&set pkmn11lvl=NAN
if !pkmn9! equ NAN set pkmn9=!pkmn10!&set pkmn9lvl=!pkmn10lvl!&set pkmn10=NAN&set pkmn10lvl=NAN
if !pkmn8! equ NAN set pkmn8=!pkmn9!&set pkmn8lvl=!pkmn9lvl!&set pkmn9=NAN&set pkmn9lvl=NAN
if !pkmn7! equ NAN set pkmn7=!pkmn8!&set pkmn7lvl=!pkmn8lvl!&set pkmn8=NAN&set pkmn8lvl=NAN
if !pkmn6! equ NAN set pkmn6=!pkmn7!&set pkmn6lvl=!pkmn7lvl!&set pkmn7=NAN&set pkmn7lvl=NAN
if !pkmn5! equ NAN set pkmn5=!pkmn6!&set pkmn5lvl=!pkmn6lvl!&set pkmn6=NAN&set pkmn6lvl=NAN
if !pkmn4! equ NAN set pkmn4=!pkmn5!&set pkmn4lvl=!pkmn5lvl!&set pkmn5=NAN&set pkmn5lvl=NAN
if !pkmn3! equ NAN set pkmn3=!pkmn4!&set pkmn3lvl=!pkmn4lvl!&set pkmn4=NAN&set pkmn4lvl=NAN
if !pkmn2! equ NAN set pkmn2=!pkmn3!&set pkmn2lvl=!pkmn3lvl!&set pkmn3=NAN&set pkmn3lvl=NAN
if !pkmn1! equ NAN set pkmn1=!pkmn2!&set pkmn1lvl=!pkmn2lvl!&set pkmn2=NAN&set pkmn2lvl=NAN
set /a invpkmn1hp=!invpkmn1lvl!*4
set /a invpkmn2hp=!invpkmn2lvl!*4
set /a invpkmn3hp=!invpkmn3lvl!*4
set /a invpkmn4hp=!invpkmn4lvl!*4
set /a invpkmn5hp=!invpkmn5lvl!*4
set /a invpkmn6hp=!invpkmn6lvl!*4
goto Save-menu
:pkmn-Center-4-2
echo Select a pkmn from the left column [1-20] for release or type cancel
set /p input=
if !input! equ cancel goto pkmn-Center-4a
if not !input! GTR 0 goto pkmn-Center-4a
if not !input! LSS 21 goto pkmn-Center-4a
if !input! equ 1 set temp=!pkmn1!
if !input! equ 2 set temp=!pkmn2!
if !input! equ 3 set temp=!pkmn3!
if !input! equ 4 set temp=!pkmn4!
if !input! equ 5 set temp=!pkmn5!
if !input! equ 6 set temp=!pkmn6!
if !input! equ 7 set temp=!pkmn7!
if !input! equ 8 set temp=!pkmn8!
if !input! equ 9 set temp=!pkmn9!
if !input! equ 10 set temp=!pkmn10!
if !input! equ 11 set temp=!pkmn11!
if !input! equ 12 set temp=!pkmn12!
if !input! equ 13 set temp=!pkmn13!
if !input! equ 14 set temp=!pkmn14!
if !input! equ 15 set temp=!pkmn15!
if !input! equ 16 set temp=!pkmn16!
if !input! equ 17 set temp=!pkmn17!
if !input! equ 18 set temp=!pkmn18!
if !input! equ 19 set temp=!pkmn19!
if !input! equ 20 set temp=!pkmn20!
if not !temp! equ NAN set /a pkmnstorage-=1
set pkmn!input!=NAN&set pkmn!input!lvl=NAN&goto Save-menu
:pkmn-Center-5
cls
echo !ln!
echo Options
echo !ln!
echo.
echo [1] Set the background and text color as black on lightgray
echo [2] Set the background and text color back to default
echo [3] Save the game
echo [4] Load a game
echo [5] Set music to off
echo [6] Set music to on
echo [7] look at the world map
echo [8] Go back
choice /c 12345678 /n>nul
if !errorlevel! equ 1 set color=1&color 07&set sublocation=pkmn-Center-5&goto !sublocation!
if !errorlevel! equ 2 (set color=0
if !starter! equ BULBASAUR color 27
if !starter! equ SQUIRTLE color 97
if !starter! equ CHARMANDER color 47
if !starter! equ PIKACHU color 67
if !starter! equ EEVEE color 57)
if !errorlevel! equ 3 set sublocation=pkmn-Center-5&goto Save-menu
if !errorlevel! equ 4 goto Load-menu
if !errorlevel! equ 5 (set music=0
taskkill /FI "windowtitle eq terminator">nul
taskkill /F /IM wscript.exe>nul)
if !errorlevel! equ 6 set music=1&start sound.vbs !SoundURL!&start /min terminator.bat
if !errorlevel! equ 7 goto World-map
if !errorlevel! equ 8 goto pkmn-Center-0
set sublocation=pkmn-Center-5&goto !sublocation!
:pkmn-Center-6
cls
if !HM-fly! equ 0 echo You do not have HM-fly %p%&goto pkmn-Center-0
echo !ln!
echo Fly menu
echo !ln!
echo.
echo [1] !g!Pallet Town
echo [2] !g!Viridian City
echo [3] !g!Pewter City
echo [4] !g!Mt. Moon
echo [5] !g!Cerulean City
echo [6] !g!Vermillion City
echo [7] !g!Rock Tunnel
echo [8] !g!Lavender Town
echo [9] !g!Celadon City
echo [0] !g!Saffron City
echo [q] !g!Fuschia City
echo [w] !g!Cinnabar Island
echo [e] !g!Indigo Plateau
choice /c 1234567890qwe /n>nul
if !errorlevel! equ 1 goto Pallet-Town
if !errorlevel! equ 2 goto Viridian-City
if !errorlevel! equ 3 goto Pewter-City
if !errorlevel! equ 4 goto Mt-Moon
if !errorlevel! equ 5 goto Cerulean-City
if !errorlevel! equ 6 goto Vermillion-City
if !errorlevel! equ 7 goto Rock-Tunnel
if !errorlevel! equ 8 goto Lavender-Town
if !errorlevel! equ 9 goto Celadon-City
if !errorlevel! equ 10 echo Nothing here yet%p%
if !errorlevel! equ 11 echo Nothing here yet%p%
if !errorlevel! equ 12 echo Nothing here yet%p%
if !errorlevel! equ 13 echo Nothing here yet%p%
:pkmn-Center-7
cls
echo !ln!
echo Memory
echo !ln!
echo.
echo music=!music!
echo name=!name!
echo starter=!starter!
echo rival=!rival!
echo rivalstarter=!rivalstarter!
echo money=!money!
echo potions=!potions!
echo fishingrod=!fishingrod!
echo HM-surf=!HM-surf!
echo HM-fly=!HM-fly!
echo HM-cut=!HM-cut!
echo location=!location!
echo sublocation=!sublocation!
echo exp=!exp!
echo exptill=!exptill!
echo badges=!badges!
echo bikevoucher=!bikevoucher!
echo bike=!bike!
echo pkmnstorage=!pkmnstorage!
echo pokeballs=!pokeballs!
echo rivalencounters=!rivalencounters!
echo ss-anne=!ss-anne!
echo color=!color!
echo snorlaks1=!snorlaks1!
echo snorlaks2=!snorlaks2!
pause>nul
cls
echo !ln!
echo Memory
echo !ln!
echo.
echo pkmn1=!pkmn1!
echo pkmn1lvl=!pkmn1lvl!
echo pkmn2=!pkmn2!
echo pkmn2lvl=!pkmn2lvl!
echo pkmn3=!pkmn3!
echo pkmn3lvl=!pkmn3lvl!
echo pkmn4=!pkmn4!
echo pkmn4lvl=!pkmn4lvl!
echo pkmn5=!pkmn5!
echo pkmn5lvl=!pkmn5lvl!
echo pkmn6=!pkmn6!
echo pkmn6lvl=!pkmn6lvl!
echo pkmn7=!pkmn7!
echo pkmn7lvl=!pkmn7lvl!
echo pkmn8=!pkmn8!
echo pkmn8lvl=!pkmn8lvl!
echo pkmn9=!pkmn9!
echo pkmn9lvl=!pkmn9lvl!
echo pkmn10=!pkmn10!
echo pkmn10lvl=!pkmn10lvl!
pause>nul
cls
echo !ln!
echo Memory
echo !ln!
echo.
echo pkmn11=!pkmn11!
echo pkmn11lvl=!pkmn11lvl!
echo pkmn12=!pkmn12!
echo pkmn12lvl=!pkmn12lvl!
echo pkmn13=!pkmn13!
echo pkmn13lvl=!pkmn13lvl!
echo pkmn14=!pkmn14!
echo pkmn14lvl=!pkmn14lvl!
echo pkmn15=!pkmn15!
echo pkmn15lvl=!pkmn15lvl!
echo pkmn16=!pkmn16!
echo pkmn16lvl=!pkmn16lvl!
echo pkmn17=!pkmn17!
echo pkmn17lvl=!pkmn17lvl!
echo pkmn18=!pkmn18!
echo pkmn18lvl=!pkmn18lvl!
echo pkmn19=!pkmn19!
echo pkmn19lvl=!pkmn19lvl!
echo pkmn20=!pkmn20!
echo pkmn20lvl=!pkmn20lvl!
pause>nul
cls
echo !ln!
echo Memory
echo !ln!
echo.
echo invpkmn1=!invpkmn1!
echo invpkmn1lvl=!invpkmn1lvl!
echo invpkmn1hp=!invpkmn1hp!
echo invpkmn2=!invpkmn2!
echo invpkmn2lvl=!invpkmn2lvl!
echo invpkmn2hp=!invpkmn2hp!
echo invpkmn3=!invpkmn3!
echo invpkmn3lvl=!invpkmn3lvl!
echo invpkmn3hp=!invpkmn3hp!
echo invpkmn4=!invpkmn4!
echo invpkmn4lvl=!invpkmn4lvl!
echo invpkmn4hp=!invpkmn4hp!
echo invpkmn5=!invpkmn5!
echo invpkmn5lvl=!invpkmn5lvl!
echo invpkmn5hp=!invpkmn5hp!
echo invpkmn6=!invpkmn6!
echo invpkmn6lvl=!invpkmn6lvl!
echo invpkmn6hp=!invpkmn6hp!
pause>nul
cls
echo !ln!
echo Memory
echo !ln!
echo.
echo trainer-SS-anne-floor-1-1=!trainer-SS-anne-floor-1-1!
echo trainer-SS-anne-floor-1-2=!trainer-SS-anne-floor-1-2!
echo trainer-SS-anne-floor-1-6=!trainer-SS-anne-floor-1-6!
echo trainer-SS-anne-floor-2-3=!trainer-SS-anne-floor-2-3!
echo trainer-SS-anne-floor-2-4=!trainer-SS-anne-floor-2-4!
echo profoakparcel=!profoakparcel!
echo Trainer-route-3=!Trainer-route-3!
echo Trainer-route-24=!Trainer-route-24!
echo Trainer-mt-moon=!Trainer-mt-moon!
echo inventory=!inventory!
echo guardwater=!guardwater!
echo Silphscope=!Silphscope!
echo coins=!coins!
echo Trainer-Rocket-Hideout-floor-4=!Trainer-Rocket-Hideout-floor-4!
echo lift-key=!lift-key!
echo Trainer-Rocket-Hideout-Giovanni=!Trainer-Rocket-Hideout-Giovanni!
pause>nul
cls
echo !ln!
echo Memory
echo !ln!
echo.
echo pkmn1nick=!pkmn1nick!
echo pkmn2nick=!pkmn2nick!
echo pkmn3nick=!pkmn3nick!
echo pkmn4nick=!pkmn4nick!
echo pkmn5nick=!pkmn5nick!
echo pkmn6nick=!pkmn6nick!
echo pkmn7nick=!pkmn7nick!
echo pkmn8nick=!pkmn8nick!
echo pkmn9nick=!pkmn9nick!
echo pkmn10nick=!pkmn10nick!
echo pkmn11nick=!pkmn11nick!
echo pkmn12nick=!pkmn12nick!
echo pkmn13nick=!pkmn13nick!
echo pkmn14nick=!pkmn14nick!
echo pkmn15nick=!pkmn15nick!
echo pkmn16nick=!pkmn16nick!
echo pkmn17nick=!pkmn17nick!
echo pkmn18nick=!pkmn18nick!
echo pkmn19nick=!pkmn19nick!
echo pkmn20nick=!pkmn20nick!
pause>nul
cls
echo !ln!
echo Memory
echo !ln!
echo.
echo invpkmn1nick=!pkmn1nick!
echo invpkmn2nick=!pkmn2nick!
echo invpkmn3nick=!pkmn3nick!
echo invpkmn4nick=!pkmn4nick!
echo invpkmn5nick=!pkmn5nick!
echo invpkmn6nick=!pkmn6nick!
pause>nul
goto pkmn-Center-0
:World-map
cls
echo !ln!
echo Kanto Region Map, you are at !location!
echo !ln!
echo                                           :::25:::Bills-house
echo                                           :24:
echo Idigo-Plateau         ::::Mt-Moon::4:Cerulean-City:::::::::9:::::::
echo     ::::   Pewter-City::3:                ::::             Rock-Tunnel
echo     ::::      ::::                        ::5:                 :10:
echo Victory-Road  ::::    Celadon-City::7:Saffron-City:::8:::Lavender-Town
echo     ::::  Viridian-Forest  :16:           ::::                 ::::
echo     :23:      ::2:         ::::           ::6:                 ::::
echo     ::::      ::::         :17:           ::::                 :12:
echo     ::22:Viridian-City     ::::           ::::                 ::::
echo               ::1:         ::::      Vermillion-City:::::::11::::::
echo               ::::         ::::                                ::::
echo            Pallet-Town     ::::                          ::::13::::
echo               ::::         ::::                          :14:
echo               :21:         :::::::18:::Fuschia-City:::::15:::
echo               ::::                        :19:
echo         Cinnabar-Island::Seafoam-Islands::20::
echo !ln!%p%&goto !sublocation!
:pkmn-Mart
set SoundURL=pkmn-Center-Mart.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
if !location! equ Celadon-City goto Department-store
if !profoakparcel! equ 0 (cls&echo Shop keeper: Hey you!%p%
cls&echo Shop keeper: You are from Pallet-Town right?%p%
cls&echo Shop keeper: Could you take this Parcel to Prof. Oak?%p%
set profoakparcel=1
set rivalstarterlvl=5
cls&echo Shop keeper: Thanks, bye%p%
goto !location!)
if !profoakparcel! equ 1 (echo Shop keeper: Please take the parcel to Prof. Oak
cls&echo Shop keeper: Prof. Oak has been waiting for it for 2 weeks%p%
goto !location!)
:Mart
cls
echo !ln!
echo pkmn Mart - !location!
echo !ln!
echo.
echo                      __________________
echo                     /                 / \
echo                   ___________________/  i
echo                  /___________________\ /i
echo                  i       //M\\       i/ i
echo                  i_______\\_//_______i  i
echo                  i     i  ___  i     i /
echo                  i     i i  .i i     i/   )\ )\ 
echo   )\ )\          i_____i_i___i_i_____i  )\ )\)\
echo.
echo Shop keeper: Hello there little man, what can I do for you
echo.
echo You have money: !money!
echo Potions: !potions!
echo Pokeballs: !pokeballs!
echo.
echo [1] Buy potion for $400
echo [2] Buy pokeball for $275
echo [3] Go back
choice /c 123 /n>nul
if !errorlevel! equ 1 goto pkmn-Mart-1
if !errorlevel! equ 2 goto pkmn-Mart-2
if !errorlevel! equ 3 goto !location!
:pkmn-Mart-1
if !money! GTR 399 (echo.&echo Shop keeper: That will be $400%p%
set /a money-=400&set /a potions+=1&goto Mart)
echo Shop keeper: You do not have enough money to buy that%p%&goto Mart
:pkmn-Mart-2
if !money! GTR 274 (echo.&echo Shop keeper: That will be $275%p%
set /a money-=275&set /a pokeballs+=1&goto Mart)
echo Shop keeper: You dont have enough money to buy that%p%&goto Mart
:pkmn-Gym
set sublocation=pkmn-Gym
set SoundURL=Gym.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo !location! Gym
echo !ln!
echo.
echo                     __________________
echo                    /                 / \
echo                  ___________________/  i
echo                 /                   \ /i
echo                 i        Gym        i/ i
echo                 i-------------------i  i
echo                 i  i  i  ___  i  i  i /
echo                 i  i  i i   i i  i  i/   )\
echo   )\ )\         i__i__i_i___i_i__i__i  )\ )\
echo.
echo [1] Enter the Gym
echo [2] Go back
choice /c 12 /n>nul
if !errorlevel! equ 1 goto !sublocation!-!location!
if !errorlevel! equ 2 goto !location!
:pkmn-Gym-Pewter-City
cls
if !badges! equ 0 (echo Brock: So you think you got what it takes to beat me%p%
cls&echo Brock: Alright lets get started in here%p%
goto pkmn-Gym-Pewter-City-1)
echo Brock: !name! you have already proven yourself%p%
cls&echo Brock: There is no point in fighting me again%p%
goto !sublocation!
:pkmn-Gym-Pewter-City-1
set gymleader=Brock
set gymleaderpkmn=GEODUDE
set gymleaderpkmnlvl=12
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4
set SoundURL=Gym-Leader-Elite-Four.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set wincount=0
goto gym-battle
:pkmn-Gym-Cerulean-City
cls
if !badges! equ 1 (echo Misty: So you think you got what it takes to beat me%p%
cls&echo Misty: Alright lets get started in here%p%
goto pkmn-Gym-Cerulean-City-1)
echo Misty: !name! you have already proven yourself%p%
cls&echo Misty: There is no point in fighting me again%p%
goto !sublocation!
:pkmn-Gym-Cerulean-City-1
set gymleader=Misty
set gymleaderpkmn=STARYU
set gymleaderpkmnlvl=18
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4
set SoundURL=Gym-Leader-Elite-Four.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set wincount=0
goto gym-battle
:pkmn-Gym-Vermillion-City
cls
if !badges! equ 2 (echo Lt-Surge: So you think you got what it takes to beat me%p%
cls&echo Lt-Surge: Alright lets get started in here%p%
goto pkmn-Gym-Vermillion-City-1)
echo Lt-Surge: !name! you have already proven yourself%p%
cls&echo Lt-Surge: There is no point in fighting me again%p%
goto !sublocation!
:pkmn-Gym-Vermillion-City-1
set gymleader=Lt-Surge
set gymleaderpkmn=VOLTORB
set gymleaderpkmnlvl=21
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4
set SoundURL=Gym-Leader-Elite-Four.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set wincount=0
goto gym-battle
:pkmn-Gym-Celadon-City
cls
if !badges! equ 3 (echo Erika: So you think you got what it takes to beat me%p%
cls&echo Erika: Alright lets get started in here%p%
goto pkmn-Gym-Celadon-City-1)
echo Erika: !name! you have already proven yourself%p%
cls&echo Erika: There is no point in fighting me again%p%
goto !sublocation!
:pkmn-Gym-Celadon-City-1
set gymleader=Erika
set gymleaderpkmn=TANGELA
set gymleaderpkmnlvl=30
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4
set SoundURL=Gym-Leader-Elite-Four.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set wincount=0
goto gym-battle
:pkmn-Gym-Fuschia-City
cls
if !badges! equ 4 (echo Koga: So you think you got what it takes to beat me%p%
cls&echo Koga: Alright lets get started in here%p%
goto pkmn-Gym-Fuschia-City-1)
echo Koga: !name! you have already proven yourself%p%
cls&echo Koga: There is no point in fighting me again%p%
goto !sublocation!
:pkmn-Gym-Fuschia-City-1
set gymleader=Koga
set gymleaderpkmn=KOFFING
set gymleaderpkmnlvl=37
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4
set SoundURL=Gym-Leader-Elite-Four.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set wincount=0
goto gym-battle
:pkmn-Gym-Saffron-City
cls
if !badges! equ 5 (echo Sabrina: So you think you got what it takes to beat me%p%
cls&echo Sabrina: Alright lets get started in here%p%
goto pkmn-Gym-Saffron-City-1)
echo Sabrina: !name! you have already proven yourself%p%
cls&echo Sabrina: There is no point in fighting me again%p%
goto !sublocation!
:pkmn-Gym-Saffron-City-1
set gymleader=Sabrina
set gymleaderpkmn=VENOMOTH
set gymleaderpkmnlvl=38
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4
set SoundURL=Gym-Leader-Elite-Four.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set wincount=0
goto gym-battle
:pkmn-Gym-Cinnabar-City
cls
if !badges! equ 6 (echo Blaine: So you think you got what it takes to beat me%p%
cls&echo Blaine: Alright lets get started in here%p%
goto pkmn-Gym-Cinnabar-City-1)
echo Blaine: !name! you have already proven yourself%p%
cls&echo Blaine: There is no point in fighting me again%p%
goto !sublocation!
:pkmn-Gym-Cinnabar-City-1
set gymleader=Blaine
set gymleaderpkmn=NINETAILS
set gymleaderpkmnlvl=43
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4
set SoundURL=Gym-Leader-Elite-Four.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set wincount=0
goto gym-battle
:pkmn-Gym-Viridian-City
cls
if !badges! lss 7 echo You do not have enough experience and are not allowed to enter%p%
if !badges! equ 7 (echo Giovanni: So you think you got what it takes to beat me%p%
cls&echo Giovanni: Alright lets get started in here%p%
goto pkmn-Gym-Viridian-City-1)
echo Giovanni: !name! you have already proven yourself%p%
cls&echo Giovanni: There is no point in fighting me again%p%
goto !sublocation!
:pkmn-Gym-Viridian-City-1
set gymleader=Giovanni
set gymleaderpkmn=RYHORN
set gymleaderpkmnlvl=45
set /a gymleaderpkmnhp=!gymleaderpkmnlvl!*4
set SoundURL=Gym-Leader-Elite-Four.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set wincount=0
goto gym-battle
:Pallet-Town
set SoundURL=Pallet-Town.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
set location=Pallet-Town
cls
echo !ln!
echo !location!
echo !ln!
echo.
echo [1] !g!!name! house
echo [2] !g!!rival!s house
echo [3] !g!the pkmn Lab
echo [4] !g!!r!1!n!
echo [5] !g!the water and begin surfing
echo [6] !g!the water and begin fishing
choice /c 123456 /n>nul
if !errorlevel! equ 1 goto Pallet-Town-1
if !errorlevel! equ 2 goto Pallet-Town-2
if !errorlevel! equ 3 goto Pallet-Town-3
if !errorlevel! equ 4 goto Route-1
if !errorlevel! equ 5 goto Pallet-Town-5
if !errorlevel! equ 6 goto Pallet-Town-6
:Pallet-Town-1
set location=Pallet-Town
set sublocation=Pallet-Town-1
cls
echo !ln!
echo Home
echo !ln!
echo.
echo                        __ii_______________
echo                       /  ii       __     /\
echo                      /  /__\     i__i   / \\
echo                     /__________________/   \\
echo                     i                i  /\  i
echo         )\)\        i                i / .\ i
echo       )\)\ /(       i________________i_i__i_i
echo.
echo [1] Talk to your Mom
echo [2] Rest here for a while (heals your pkmn)
echo [3] Go back
echo [4] Save the game
echo [5] Get on your computer
choice /c 12345 /n>nul
if !errorlevel! equ 1 goto Pallet-Town-1-1
if !errorlevel! equ 2 set /a invpkmn1hp=!invpkmn1lvl!*4
if !errorlevel! equ 3 goto Pallet-Town
if !errorlevel! equ 4 goto Save-menu
if !errorlevel! equ 5 goto pkmn-Center-4
:Pallet-Town-1-1
cls
set location=Pallet-Town
echo Mom: !name!! Its a shame that your dad isnt around to
echo see you grow up%p%
cls&echo Mom: Youve grown so fast, but I guess all birds leave
echo the nest at some point%p%
cls&echo Mom: You have my permission to go and travel the Kanto region,
echo but you have to contact me every week to keep in touch%p%
goto Pallet-Town-1
:Pallet-Town-2
cls
echo !ln!
echo Garys House
echo !ln!
echo.
echo                        __ii_______________
echo                       /  ii             /\\
echo                      /  /__\           /  \\
echo                     /_________________/    \\
echo                     i      __        i  /\  i
echo         )\)\        i     i__i       i / .\ i
echo       )\)\ /(       i________________i_i__i_i
echo.
echo [1] Talk to Garys Mom
echo [2] Go back
choice /c 12 /n>nul
if !errorlevel! equ 1 goto Pallet-Town-2-1
if !errorlevel! equ 2 goto Pallet-Town
:Pallet-Town-2-1
cls&echo !rival!s Mom: Hey, youre the boii from next door right%p%
cls&echo !rival!s Mom: Here take this, its a Town-map%p%
cls&echo !rival!s Mom: It may or may not influence your experiences%p%
goto Pallet-Town-2
:Pallet-Town-3
set SoundURL=pkmn-Lab.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo pkmn Lab
echo !ln!
echo.
echo                         _______ ______  
echo                     __./   _   \.__ /  \
echo                   /      // \\      \ / i
echo                  i_______\\_//_______i  i
echo                  /___________________\  i
echo                  i     i  ___  i     i /
echo                  i     i /   \ i     i/   )\)\ /(
echo      )\ )\       i_____i_i___i_i_____i   )\ )\)\)\
echo.
echo [1] Talk to Professor Oak
echo [2] Go back
choice /c 12 /n>nul
if !errorlevel! equ 1 goto Pallet-Town-3-1
if !errorlevel! equ 2 goto Pallet-Town
:Pallet-Town-3-1
if !profoakparcel! equ 1 (set profoakparcel=2
cls&echo Prof. Oak: Thanks a lot !name!, here are 5 Pokeballs in return%p%
set pokeballs=5
cls&echo !rival!: Hey !name! lets try out our new pkmn%p%
set sublocation=Pallet-Town-3
set /a invpkmn1hp=!invpkmn1lvl!*4
goto Rival-battle-start)
cls&echo Prof Oak: Oh hi !name! I am a little busy right now%p%
cls&echo Prof Oak: Its about compressing pkmn into data so they can
echo be stored in a computer, its really complicated and also crazy%p%
goto Pallet-Town
:Pallet-Town-5
cls
if !HM-surf! equ 0 echo You do not have the HM-surf%p%&goto Pallet-Town
if !HM-surf! equ 1 echo You used one of your pkmn to surf%p%&goto Route-21
:Pallet-Town-6
cls
if !fishingrod! equ 0 echo You do not have a fishing rod, so you cant fish
if !fishingrod! equ 1 echo nothing here yet%p%&goto Pallet-Town
:City-X
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
cls
echo !ln!
echo !location!
echo !ln!
echo.
echo [1] !g!the pkmn center
echo [2] !g!the pkmn gym
echo [3] !g!the pkmn mart
goto !location!-X
:Viridian-City
set location=Viridian-City&set SoundURL=Viridian-Pewter-Saffron-City.mp3&goto City-X
:Viridian-City-X
echo [4] !g!!r!2!n!
echo [5] !g!!r!1!s!
echo [6] !g!!r!22!w!
choice /c 123456 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto pkmn-Gym
if !errorlevel! equ 3 goto pkmn-Mart
if !errorlevel! equ 4 goto Route-2
if !errorlevel! equ 5 goto Route-1
if !errorlevel! equ 6 goto Route-22
:Viridian-City-1
if !profoakparcel! equ 2 goto Route-2
cls&echo Old man: Stop right there!%p%
cls&echo Old man: You are tresspassing private property, so turn around mister%p%
cls&echo Little girl: Sorry mister, my grandpa hasnt had his coffee yet%p%
goto !loacation!
:Pewter-City
set location=Pewter-City&set SoundURL=Viridian-Pewter-Saffron-City.mp3&goto City-X
:Pewter-City-X
echo [4] !g!!r!3!e!
echo [5] !g!the Viridian forest!s!
echo [6] !g!the digletts cave
choice /c 123456 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto pkmn-Gym
if !errorlevel! equ 3 goto pkmn-Mart
if !errorlevel! equ 4 goto !location!-4
if !errorlevel! equ 5 goto Viridian-forest
if !errorlevel! equ 6 goto !location!-6
:Pewter-City-4
if !badges! LSS 1 cls&echo [The road is blocked]%p%&goto Pewter-City
goto Route-3
:Pewter-City-6
cls
if !HM-cut! equ 0 (echo The bushes are blocking the entrance, you cant seem to get through
echo Perhaps if you had HM-cut one of you pkmn could clear it%p%&goto !location!)
goto Digletts-cave
:Cerulean-City
set location=Cerulean-City&set SoundURL=Cerulean-Fussia-City.mp3&goto City-X
:Cerulean-City-X
echo [4] !g!the bike shop
echo [5] !g!the bridge!n!
echo [6] !g!!r!4!w!
echo [7] !g!!r!5!s!
echo [8] !g!!r!9!e!
choice /c 12345678 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto pkmn-Gym
if !errorlevel! equ 3 goto pkmn-Mart
if !errorlevel! equ 4 goto Bike-shop
if !errorlevel! equ 5 goto !location!-6
if !errorlevel! equ 6 goto Route-4
if !errorlevel! equ 7 goto Route-5
if !errorlevel! equ 8 goto Cerulean-City-8
:Cerulean-City-6
cls
set sublocation=Cerulean-City-6
set SoundURL=Route-24-25.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
echo !ln!
echo !location! Bridge
echo !ln!
echo _____________________________         ________________________________
echo                              \ _____ /
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ i     i ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ i     i ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ i     i ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ i     i ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ i     i ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ i     i ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ i_____i ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo _____________________________/       \________________________________
echo.
echo [1] Cross the bridge
echo [2] !g!Cerulean City
choice /c 12 /n>nul
if !errorlevel! equ 1 goto !location!-6-1
if !errorlevel! equ 2 goto !location!
:Cerulean-City-6-1
if !rivalencounters! equ 2 goto Route-24
cls&echo !rival!: Oh hey !name! how about we fight again, its been a while%p%
set rivalencounters=2
set rivalstarterlvl=10
set /a rivalstarterhp=!rivalstarterlvl!*4
goto Rival-battle-start
:Cerulean-City-8
cls
if !HM-cut! equ 1 echo One of your pkmn uses HM-cut to clear the way%p%&goto Route-9
echo The path is blocked by bushes, maby if oyu had HM-cut
echo you could get through%p%
goto !location!
:Vermillion-City
set location=Vermillion-City&set SoundURL=Vermillion-City.mp3&goto City-X
:Vermillion-City-X
echo [4] !g!the S.S. Anne
echo [5] !g!the Digletts cave
echo [6] !g!the pkmn fanclub
echo [7] !g!the fishy smelling house
echo [8] !g!!r!6!n!
echo [9] !g!!r!11!e!
choice /c 123456789 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto Vermillion-City-1
if !errorlevel! equ 3 goto pkmn-Mart
if !errorlevel! equ 4 goto SS-anne
if !errorlevel! equ 5 goto Digletts-cave
if !errorlevel! equ 6 goto pkmn-fanclub
if !errorlevel! equ 7 goto Vermillion-City-2
if !errorlevel! equ 8 goto Route-6
if !errorlevel! equ 9 goto Route-11
:Vermillion-City-1
if !HM-cut! equ 1 (cls&echo Your pkmn cuts right though the bushes surrounding
echo the pkmn Gym, you would almost think that it is someones yard...%p%
goto pkmn-Gym)
cls&echo You dont have HM-cut and get get into the yard of the gymleader%p%
goto !location!
:Vermillion-City-2
if !fishingrod! equ 1 cls&echo Fishy guy: Have you caught anything big yet?%p%&goto !location!
cls&echo Fishy guy: Hey, you look like a pkmn trainer%p%
cls&echo Fishy guy: Here, you can have my old fishing rod%p%
set fishingrod=1
goto !location!
:Lavender-Town
set location=Lavender-Town&set SoundURL=Lavender-Town.mp3
if !music! equ 1 taskkill /F /IM wscript.exe>nul&start sound.vbs !SoundURL!
:Lavender-Town-X
cls
echo !ln!
echo !location!
echo !ln!
echo.
echo [1] !g!the pkmn center
echo [2] !g!the pkmn Tower
echo [3] !g!!r!8!w!
echo [4] !g!!r!10!n!
echo [5] !g!!r!12!s!
choice /c 12345 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto pkmn-tower
if !errorlevel! equ 3 goto Route-8
if !errorlevel! equ 4 goto Route-10
if !errorlevel! equ 5 goto Route-12
:Celadon-City
set location=Celadon-City&set SoundURL=Celadon-City.mp3&goto City-X
:Celadon-City-X
echo [4] !g!Game Corner
echo [5] !g!!r!7!e!
echo [6] !g!!r!16!w!
choice /c 123456 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto pkmn-Gym
if !errorlevel! equ 3 goto pkmn-Mart
if !errorlevel! equ 4 goto Game-Corner
if !errorlevel! equ 5 goto Route-7
if !errorlevel! equ 6 goto Route-16
:Fuschia-City
set location=Fuschia-City&set SoundURL=Cerulean-Fussia-City.mp3&goto City-X
:Fuschia-City-X
echo [4] !g!the Safari zone
echo [5] !g!!r!15!e!
echo [6] !g!!r!18!w!
echo [7] !g!!r!19!s!
choice /c 1234567 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto pkmn-Gym
if !errorlevel! equ 3 goto pkmn-Mart
if !errorlevel! equ 4 goto Safari-zone
if !errorlevel! equ 5 goto Route-15
if !errorlevel! equ 6 goto Route-18
if !errorlevel! equ 7 goto Route-19
:Saffron-City
set location=Saffron-City&set SoundURL=Viridian-Pewter-Saffron-City.mp3&goto City-X
:Saffron-City-X
echo [4] !g!!r!5!n!
echo [5] !g!!r!6!s!
echo [6] !g!!r!7!w!
echo [7] !g!!r!8!e!
choice /c 1234567 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto pkmn-Gym
if !errorlevel! equ 3 goto pkmn-Mart
if !errorlevel! equ 4 goto Route-5
if !errorlevel! equ 5 goto Route-6
if !errorlevel! equ 6 goto Route-7
if !errorlevel! equ 7 goto Route-8
:Cinnabar-Island
set location=Cinnabar-Island&set SoundURL=Cinnabar-Island.mp3&goto City-X
:Cinnabar-Island-X
echo [4] !g!the pkmn mansion
echo [5] !g!!r!21!n!
echo [6] !g!the Seafoam islands!e!
choice /c 123456 /n>nul
if !errorlevel! equ 1 goto pkmn-Center
if !errorlevel! equ 2 goto pkmn-Gym
if !errorlevel! equ 3 goto pkmn-Mart
if !errorlevel! equ 4 goto pkmn-mansion
if !errorlevel! equ 5 goto Route-21
if !errorlevel! equ 6 goto Seafoam-islands