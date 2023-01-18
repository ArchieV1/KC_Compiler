:: This script will copy ONE mod to the KC mods folder and launch Kingdoms and Castles (KC)

:: Set up
ECHO ==================Starting compiler==================
SET "kc-mod-directory=D:\SteamLibrary\steamapps\common\Kingdoms and Castles\KingdomsAndCastles_Data\mods\KingdomRenderer"
SET "wip-mod-directory=C:\Users\green\RiderProjects\KingdomRenderer\KingdomRenderer"
SET "kc-appdata-directory=C:\Users\green\AppData\LocalLow\LionShield\Kingdoms and Castles"

:: Go to KC mod directory and delete old modfile and old output.txt
CD /D %kc-mod-directory%
DEL *.cs
:: Delete the old log
:: This is the log from the mod
DEL output.txt

:: Go to KC gamedata folder and delete log
:: This is the log that 
CD /D %kc-appdata-directory%
DEL output_log.txt

:: Copy files from WIP folder to KC mod folder so that KC can compile it
FOR /R "%wip-mod-directory%" %%f IN (*.cs) DO COPY "%%f" "%kc-mod-directory%"

:: Launch KC
:: Will launch even if steam has not been opened
start "" steam://run/569480
