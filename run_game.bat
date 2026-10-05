@echo off
title Aether Pirate Game
echo Aether Pirate Game - workspace launcher
echo.
echo 1) Open Godot
echo 2) Open world data folder
echo 3) Open design notes
echo.
choice /C 123 /M "Select action"
if errorlevel 3 goto design
if errorlevel 2 goto world
if errorlevel 1 goto godot

:godot
start "" "C:\Program Files\Godot\Godot_v4.3.exe" "%~dp0godot"
goto end

:world
explorer "%~dp0godot\world"
goto end

:design
start "" "%~dp0aether_pirate_game_design.md"
goto end

:end
