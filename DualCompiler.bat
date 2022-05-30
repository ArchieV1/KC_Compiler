:: Set up
ECHO ==================Starting "compiler"==================
SET "kac-mod-directory1=D:\SteamLibrary\steamapps\common\Kingdoms and Castles\KingdomsAndCastles_Data\mods\GoldMines"
SET "wip-mod-directory1=C:\Users\green\RiderProjects\GoldMines\GoldMines"
SET "kac-appdata-directory1=C:\Users\green\AppData\LocalLow\LionShield\Kingdoms and Castles"

:: Go to KaC mod directory and delete old modfile and old output.txt
CD /D %kac-mod-directory1%
DEL *.cs
:: Delete the old log
:: This is the log from the mod
DEL output.txt

:: Go to KaC gamedata folder and delete log
:: This is the log that 
CD /D %kac-appdata-directory1%
DEL output_log.txt

:: Copy files from WIP folder to KaC mod folder so that KaC can compile it
FOR /R "%wip-mod-directory1%" %%f IN (*.cs) DO COPY %%f "%kac-mod-directory1%"


SET "kac-mod-directory2=D:\SteamLibrary\steamapps\common\Kingdoms and Castles\KingdomsAndCastles_Data\mods\KaC-Modding-Engine
SET "wip-mod-directory2=C:\Users\green\RiderProjects\KaC-Modding-Engine-API\KaC-Modding-Engine"
SET "kac-appdata-directory2=C:\Users\green\AppData\LocalLow\LionShield\Kingdoms and Castles"

:: Go to KaC mod directory and delete old modfile and old output.txt
CD /D %kac-mod-directory2%
DEL *.cs
:: Delete the old log
:: This is the log from the mod
DEL output.txt

:: Go to KaC gamedata folder and delete log
:: This is the log that 
CD /D %kac-appdata-directory2%
DEL output_log.txt

:: Copy files from WIP folder to KaC mod folder so that KaC can compile it
FOR /R "%wip-mod-directory2%" %%f IN (*.cs) DO COPY %%f "%kac-mod-directory2%"

:: Launch KaC
:: Will launch even if steam has not been opened
start "" steam://run/569480