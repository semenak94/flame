@echo off

mkdir build
cd build
mkdir tinavie
cd ..

:: список готовых pdf
setlocal enabledelayedexpansion

set band=tinavie

set album="hidden places"
set hidden_places[0]=7778
set currentFile=!hidden_places[0]!
cp -rf !band!/!album!/!currentFile!/!currentFile!.pdf build/tinavie

set album=kometa
set kometa[0]=armed
set kometa[1]=kometa
set kometa[2]=november

for %%i in (0,1,2) do (
    set currentFile=!kometa[%%i]!
    cp -rf !band!/!album!/!currentFile!/!currentFile!.pdf build/tinavie
)

::for /d %%a in (*) do (
::    ECHO zip -r -p "flame.zip" ".\%%a\*"
::)

@echo on
