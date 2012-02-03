@echo off
SET _path=D:\scripts\path

IF "%1"=="" GOTO error

:start

IF "%1"=="" GOTO end

IF EXIST %_path%\%1.cmd (
	CALL %_path%\%1.cmd 
) ELSE (
	ECHO command not found: %1
)
SHIFT
GOTO start

:error
ECHO.
ECHO no command provided!
ECHO The follogwing are available:
ECHO.
PUSHD %_path%
for /f "tokens=*" %%a in ('dir /b') do echo %%~na
POPD
ECHO.
:end