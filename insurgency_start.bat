@echo off
title Insurgency Server
:start
start /wait /abovenormal srcds.exe -game insurgency -usercon -port 27015 +hostname "millard_insurgency" +map "buhriz_coop checkpoint" +maxplayers 64 +sv_workshop_enabled 1
:: with these bot settings, do not start on market_coop map
:: i chopped off these arguments fyi
:: -ip <xxx.xxx.xxx.xxx-internal ip> +sv_lan 0
goto start
