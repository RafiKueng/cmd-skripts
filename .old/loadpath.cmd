@echo off

rem Here all paths for every tool and lib is saved
rem So it can be loaded from commandline with
rem math_mgr PROGRAM

SET _path=call D:\scripts\path

if "%1"=="" GOTO error

:start
if "%1"=="" GOTO end

if "%1"=="py32" GOTO py32
if "%1"=="py64" GOTO py64
if "%1"=="mingw" GOTO mingw
if "%1"=="cmake" GOTO cmake28


if "%1"=="unxutils" GOTO unxutils
if "%1"=="gnuwin" GOTO gnuwin
if "%1"=="git" GOTO git


if "%1"=="lib_cv" GOTO lib_opencv
if "%1"=="qt48" GOTO sdk_qt48




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

:cmake28
%_path%\cmake28.cmd
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




:sdk_qt48
%_path%\qt48MinGW.cmd
goto loop





:loop
shift
goto start

:error
echo --> ERROR: no command provided

:end
rem echo --- end