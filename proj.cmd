@echo off

rem load some projects with their settings
SET _proj=D:\scripts\projects

IF EXIST %_proj%\%1.cmd (
%_proj%\%1
) ELSE (
echo Project <%1> not found
)
