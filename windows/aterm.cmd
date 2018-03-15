@echo off

REM check if java exists
WHERE java >NUL 2>NUL
IF %ERRORLEVEL% NEQ 0 (
    ECHO cannot find java. && EXIT /B 1
)


REM check if aterm.jar. If not, it will try download from the link below
SET MFLUX_ATERM=%~dp0aterm.jar
SET ATERM_DOWNLOAD_LINK=https://mediaflux.vicnode.org.au/mflux/aterm.jar

REM download with POWERSHELL
IF NOT EXIST %MFLUX_ATERM% (
    WHERE POWERSHELL >NUL 2>NUL
    IF %ERRORLEVEL% EQU 0 (
        POWERSHELL -COMMAND "(New-Object Net.WebClient).DownloadFile('%ATERM_DOWNLOAD_LINK%', '%MFLUX_ATERM%')" >NUL 2>NUL
    )
)

REM download with BITSADMIN
IF NOT EXIST %MFLUX_ATERM% (
    WHERE BITSADMIN >NUL 2>NUL
    IF %ERRORLEVEL% EQU 0 (
    	BITSADMIN /TRANSFER "Download aterm.jar" %ATERM_DOWNLOAD_LINK% %MFLUX_ATERM% >NUL 2>NUL
    )
)

REM failed to download aterm.jar, exit
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
