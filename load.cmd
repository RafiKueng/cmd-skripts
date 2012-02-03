@echo off

rem load some progs with their settings

SET _links=D:\scripts\links

if "%1"=="" GOTO error

:start
if "%1"=="" GOTO end

if "%1"=="git" GOTO git
if "%1"=="npp" GOTO notepad



%1.cmd

echo command not found: "%1"
goto loop





:git
%_links%\gitbash.cmd
goto loop

:gitgui
%_links%\gitgui.cmd
goto loop






:loop
shift
goto start

:error
echo no command provided

:end
