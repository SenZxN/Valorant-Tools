@echo off
title Valorant Crash Killer by SenZxN
color b
timeout /t 1 > null
echo == Getting ADMINISTRATOR information ==
timeout /t 1 > null
cls
net session >nul 2>&1
if %errorLevel% == 0 (
    echo == Success: Administrative permissions confirmed. == 
    color a
) else (
    color c
    echo == Failure: Current permissions inadequate. ==
    timeout 1 > null
    del null
    exit /B 1
)
timeout /t 1 > null 
color a
cls
echo = Getting... =
timeout /t 2 > null 
TASKKILL /F /im VALORANT-Win64-Shipping.exe && (
    echo Valorant was killed!
) || echo Valorant doesn't exit
timeout /t 1 > null 
TASKKILL /F /im RiotClientUxRender.exe && (
    echo UxRender was killed!
) || echo UxRender doesn't exit
timeout /t 1 > null 
TASKKILL /F /im RiotClientServices.exe && (
echo Riot client was killed!
) || echo Riot client doesn't exit
timeout /t 1 > null 
TASKKILL /F /im RiotClientCrashHandler.exe && (
    echo Crash Handler was killed!
) || echo Crash Handler doesn't exit
timeout /t 1 > null 
TASKKILL /F /im RiotClientUx.exe && (
    echo RiotClientUx was killed!
) || echo RiotClientUx doesn't exit
cls
echo == All riot client was closed you can restart valorant now! ==

timeout /t 10 > null
del null
