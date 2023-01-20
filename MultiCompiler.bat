:: Copies all mods (*.cs) from folders with these names:
SET "mod_names=GoldMines\GoldMines KaC-Modding-Engine\KaC-Modding-Engine"

:: Folders will be found below this directory:
SET "wip_dir=C:\Users\green\RiderProjects\"

:: And mods will be sent to this directory: (The KC mod directory)
SET "kc_mod_dir=D:\SteamLibrary\steamapps\common\Kingdoms and Castles\KingdomsAndCastles_Data\mods\"

:: Game log is stored here: (This needs to be run as Administrator to delete)
SET "kc_appdata_dir=C:\Users\green\AppData\LocalLow\LionShield\Kingdoms and Castles\"


:: Set up
ECHO ==================Starting "compiler"==================

:: Go to KC gamedata folder and delete game log
CD /D %kc_appdata_dir%
DEL Player.log

:: For each mod
FOR /R %%mod IN %mod_names% DO (

  :: Go to KC mod directory and delete old modfiles and old output.txt
  SET kc_mod_dir=%kc_mod_dir% AND %mod%
  
  CD /D %kc_mod_dir%
  DEL *.cs
  DEL output.txt

  :: Copy files from WIP folder to KaC mod folder so that KC can compile it
  SET root_dir=%wip_dir% AND %mod%
  SET target_dir=%kc_mod_dir% AND %mod%
  
  FOR /R "%root_dir%" %%f IN (*.cs) DO COPY "%%f" "%target_dir%"
)

:: Launch KaC
:: Will launch even if steam has not been opened
start "" steam://run/569480
