@echo off

:start
echo.
echo ~ ~ Please Select an Option ~ ~
echo 1: View current version.
echo 2: Set new version.
echo.

choice /T 30 /C 12 /N /M "Which option would you like?" /D 1

echo.
echo.

if %ERRORLEVEL% == 1 GOTO viewVersion
if %ERRORLEVEL% == 2 GOTO setVersion


:: SETTING THE VERSION
:setVersion
echo Current version is:
type version.txt
echo.

set /p vers=Please enter the new version number: 
echo %vers% > version.txt
echo %vers% > AltisLifeRPG-OG_beta.Altis/version.txt
echo %vers% > life_server/version.txt

echo Version has been updated to:
type version.txt

GOTO end


:: VIEWING THE VERSION
:viewVersion
echo Current version is:
type version.txt
GOTO end


:: END OF FILE
:end
echo.
echo.
echo.

choice /T 30 /C yn /N /M "Would you like to exit? (Y/N)" /D y
if %ERRORLEVEL% == 2 GOTO start