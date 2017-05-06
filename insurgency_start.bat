@echo off
title Insurgency Server

set @pc_name=%computername%

:: set server name for Jeff's server
if "%@pc_name%" == "VALENCIA" (set @server_name=insurgency_utah)

:: set server name for Jordan's server
::if "%@pc_name%" == "J3PC" (set @server_name=insurgency_texas)

:: set server name for John's server
::if "%@pc_name%" == "J4PC" (set @server_name=insurgency_arizona)

echo pc name: %@pc_name%
echo server name: %@server_name%

:start
start /wait /abovenormal srcds.exe -game insurgency -usercon -port 27015 +hostname "%@server_name%" +map "buhriz_coop checkpoint" +maxplayers 64 +sv_workshop_enabled 1
:: with these bot settings, do not start on market_coop map
:: i chopped off these arguments fyi
:: -ip <xxx.xxx.xxx.xxx-internal ip> +sv_lan 0



goto start
