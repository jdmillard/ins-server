@echo off
title Insurgency Server

set @pc_name=%computername%

:: set server name for Jeff's server
if "%@pc_name%" == "VALENCIA" (set @server_name="[MIL] (Boston) Extra Maps | Conquer | Hunt | Checkpoint")
:: [MIL] (Boston) Custom Maps | Conquer | Checkpoint | Hunt

:: set server name for Jordan's server
if "%@pc_name%" == "DESKTOP-OJA1CR9" (set @server_name="[MIL] (Austin) Extra Maps | Conquer | Hunt | Checkpoint")

:: set server name for John's server
if "%@pc_name%" == "MILLARD" (set @server_name="[MIL] (Phoenix) Extra Maps | Conquer | Hunt | Checkpoint")

:: set server name for Dad's server
if "%@pc_name%" == "DESKTOP-54TQPLV" (set @server_name="[MIL] (San Diego) Extra Maps | Conquer | Hunt | Checkpoint")

IF [%@server_name%]==[] (
  echo no preset server name for this computer, using default.
  set @server_name=insurgency_millard
)

:: display pc and server names
echo pc name: %@pc_name%
echo server name: %@server_name%

:start
start /wait /abovenormal srcds.exe -game insurgency -console -usercon -port 27016 +hostname %@server_name% +maxplayers 64 +sv_lan 0 +map "buhriz conquer" +sv_workshop_enabled 1
::+hostname "%@server_name%"
:: note from experience: with these bot settings, don't start on market_coop
goto start

:: TODO: update readme to:
::     mention the update script which doesn't appear to be in source control & and add it to source control
::     mention port forwarding with a table of what worked for ddwrt
::     mention ddwrt setting that blocks anonymous pings, disable it (unsure if actually needed)
::     add note about starting server before steam
::     polish up map playlist
