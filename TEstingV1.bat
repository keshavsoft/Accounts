


@echo off

set myvar=
echo %myvar%
call :myfunction myvar
echo %myvar%
goto :eof

:myFunction
setlocal enabledelayedexpansion
set "max=0"
for /d %%G in (Public\V*) do (
    set "folder=%%~nxG"
    set "ver=!folder:V=!"
    if !ver! gtr !max! set "max=!ver!"
)
set /a NEXT_VERSION=max+1

endlocal & set "NEXT_VERSION=%NEXT_VERSION%"
set %1=V%NEXT_VERSION%
EXIT /B 0