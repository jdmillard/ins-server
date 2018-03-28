@echo off
title Insurgency Server

set @pc_name=%computername%

:: set server name for Jeff's server
if "%@pc_name%" == "VALENCIA" (set @server_name=insurgency_massachusetts)

:: set server name for Jordan's server
if "%@pc_name%" == "DESKTOP-OJA1CR9" (set @server_name=insurgency_texas)

:: set server name for John's server
if "%@pc_name%" == "MILLARD" (set @server_name=insurgency_arizona)

:: set server name for Dad's server
if "%@pc_name%" == "DESKTOP-54TQPLV" (set @server_name=insurgency_california)

IF [%@server_name%]==[] (
  echo no preset server name for this computer, using default.
  set @server_name=insurgency_millard
)

:: display pc and server names
echo pc name: %@pc_name%
echo server name: %@server_name%

:start
start /wait /abovenormal srcds.exe -game insurgency -usercon -port 27015 +hostname "%@server_name%" +map "tell_coop checkpoint" +maxplayers 64 +sv_workshop_enabled 1
:: with these bot settings, do not start on market_coop map
:: i chopped off these arguments fyi
:: -ip <xxx.xxx.xxx.xxx-internal ip> +sv_lan 0



goto start
