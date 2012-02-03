@echo off
echo Setting up environment for Qt usage...
rem copied from D:\sdk\Qt\Desktop\Qt\4.8.0\mingw\bin\qtenv2.bat

rem SET path_qt=D:\sdk\Qt\Desktop\Qt\4.8.0\mingw

set QTDIR=D:\sdk\Qt\Desktop\Qt\4.8.0\mingw
set PATH=%QTDIR%\bin;%PATH%
set PATH=%QTDIR%\lib;%PATH%