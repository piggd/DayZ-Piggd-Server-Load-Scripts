@echo off
echo ===============================
echo Welcome to piggd DayZ
echo --------------------------------
echo mail: dayzpiggd@mgail.com
echo http://dayzpiggd.enjin.com
echo ===============================
echo Connecting to the Epoch Chernarus .....
timeout 5

::===============================================================================================================================================
::== Set your Steam Arma Paths ==================================================================================================================
::---> ===============================+==========================================================================================================
::===============================================================================================================================================
::= C DRIVE 64 Bit Windows =============================================================================================================
::---> ==========================================================================================================================================
set steampath=C:\Program Files (x86)\Steam\steamapps\common
::===============================================================================================================================================
::= Piggd DayZ Sever IP, Port and Mod =============================================================================================================
::---> ==========================================================================================================================================
set IP=173.208.193.98
set PORT=7030
set MODS=@DayZ_Epoch;
::===============================================================================================================================================
::= Additional Launch Parameters =============================================================================================================
::---> ==========================================================================================================================================
:: set addparam=" "
set addparam=-malloc=system 
::===============================================================================================================================================
::== Set your Arma Paths ==================================================================================================================
::---> ===============================+==========================================================================================================
set arma2oapath=%steampath%\Arma 2 Operation Arrowhead
set arma2path=%steampath%\Arma 2
::===============================================================================================================================================
:: Command Syntax Please do not Modify==============================================================================================================================================
::===============================================================================================================================================
start ""  "%arma2oapath%\ArmA2OA_BE.exe" 0 0 -skipintro "%addparam%" "-mod=%arma2path%;EXPANSION;ca;%MODS%;" -noSplash -window  -noFilePatching -world=empty -connect=%IP% -port=%PORT% 
@exit
