@echo off
echo ===============================
echo Welcome to piggd DayZ
echo --------------------------------
echo mail: dayzpiggd@mgail.com
echo http://dayzpiggd.enjin.com
echo ===============================
echo Connecting to the Overpoch Sharani .....
timeout 5

::===============================================================================================================================================
::== Set your Steam Arma Paths ==================================================================================================================
::---> ===============================+==========================================================================================================
::===============================================================================================================================================
::= E DRIVE 32 Bit Windows =============================================================================================================
::---> ==========================================================================================================================================
set steampath=E:\Program Files\Steam\steamapps\common
::===============================================================================================================================================
::= Piggd DayZ Sever IP, Port and Mod =============================================================================================================
::---> ==========================================================================================================================================
set IP=173.208.193.98
set PORT=6840
set MODS=@DayZ_Sahrani;@DayzOverwatch;@DayZ_Epoch1051
::===============================================================================================================================================
::= Addional Launch Parameters =============================================================================================================
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
start ""  "%arma2oapath%\ArmA2OA_BE.exe" 0 0 -skipintro "%addparam%" "-mod=%MODS%;%arma2path%;expansion" -noSplash -noFilePatching -world=empty -connect=%IP% -port=%PORT% 
@exit
