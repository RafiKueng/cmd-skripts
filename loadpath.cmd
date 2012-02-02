@echo off

rem Here all paths for every tool and lib is saved
rem So it can be loaded from commandline with
rem math_mgr PROGRAM

SET _path=D:\scripts\path

if "%1"=="" GOTO error

:start
if "%1"=="" GOTO end

if "%1"=="py32" GOTO py32
if "%1"=="py64" GOTO py64
if "%1"=="mingw" GOTO mingw


if "%1"=="unxutils" GOTO unxutils
if "%1"=="gnuwin" GOTO gnuwin
if "%1"=="git" GOTO git


if "%1"=="lib_cv" GOTO lib_opencv




echo command not found: "%1"
goto loop





:py32
%_path%\python27_x86.cmd
goto loop

:py64
%_path%\python27_x64.cmd
goto loop

:mingw
%_path%\mingw32.cmd
goto loop






:unxutils
%_path%\unxutils.cmd
goto loop

:gnuwin
%_path%\gnuwin32.cmd
goto loop

:git
%_path%\msysGit.cmd
goto loop





:lib_opencv
%_path%\lib_opencv.cmd
goto loop





:loop
shift
goto start

:error
echo no command provided

:end
