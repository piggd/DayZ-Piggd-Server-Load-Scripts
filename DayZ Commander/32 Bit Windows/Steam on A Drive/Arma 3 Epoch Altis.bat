@echo off
echo ===============================
echo Welcome to piggd DayZ
echo --------------------------------
echo mail: dayzpiggd@mgail.com
echo http://dayzpiggd.enjin.com
echo ===============================
echo Connecting to Epoch Altis Lab Server .....
timeout 5

::===============================================================================================================================================
::== Set your Steam Arma Paths ==================================================================================================================
::---> ===============================+==========================================================================================================
::===============================================================================================================================================
::= H DRIVE 64 Bit Windows =============================================================================================================
::---> ==========================================================================================================================================
set steampath=A:\Program Files\Steam\steamapps\common
::===============================================================================================================================================
::= Piggd DayZ Sever IP, Port and Mod =============================================================================================================
::---> ==========================================================================================================================================
set IP=107.150.36.186
set PORT=5600
set MODS=@Epoch
::===============================================================================================================================================
::= Additional Launch Parameters =============================================================================================================
::---> ==========================================================================================================================================
:: set addparam=" "
set addparam=-malloc=system 
::===============================================================================================================================================
::== Set your Arma Paths ==================================================================================================================
::---> ===============================+==========================================================================================================
set arma2oapath=%steampath%\Arma 3
set arma2path=%steampath%\Arma 3
::===============================================================================================================================================
:: Command Syntax Please do not Modify==============================================================================================================================================
::===============================================================================================================================================
start ""  "%arma2oapath%\arma3.exe" 0 0 -skipintro "%addparam%" "-mod=%MODS%;" -noSplash -noFilePatching -world=empty -connect=%IP% -port=%PORT% 
@exit
