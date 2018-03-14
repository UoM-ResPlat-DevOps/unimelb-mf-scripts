@echo off

REM check if java exists

WHERE java >NUL 2>NUL
IF %ERRORLEVEL% NEQ 0 (
    ECHO Error: cannot find java. && EXIT /B 1
)

REM check if aterm.jar exists: aterm.jar should be in the same directory with this script. Otherwise, specify its path like below:
REM SET MFLUX_ATERM=c:\mediaflux\bin\aterm.jar

SET MFLUX_ATERM=%~dp0aterm.jar
IF NOT EXIST %MFLUX_ATERM% (
    ECHO cannot find %MFLUX_ATERM%. && EXIT /B 1
)

REM check if mflux.cfg exists
SET MFLUX_CFG=%~dp0mflux.cfg
IF NOT EXIST %MFLUX_CFG% (
	SET MFLUX_CFG=%USERPROFILE%\Arcitecta\mflux.cfg
)
IF NOT EXIST %MFLUX_CFG% (
	ECHO cannot find %~dp0mflux.cfg or %USERPROFILE%\Arcitecta\mflux.cfg && EXIT /B 1
)

REM execute command via aterm
java -jar -Dmf.cfg=%MFLUX_CFG% %MFLUX_ATERM% nogui %*
