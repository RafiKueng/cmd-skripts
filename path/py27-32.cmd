@echo off
echo loading paths for python27_x86

SET path_python27_x86=D:\bin\Python27_x86

PATH %path%;%path_python27_x86%
PATH %path%;%path_python27_x86%\Scripts

IF EXIST PYTHONPATH ECHO OVREWRITING pythonpath
SET PYTHONPATH=%path_python27_x86%
SET PYTHONPATH=%PYTHONPATH%;%path_python27_x86%\Lib
SET PYTHONPATH=%PYTHONPATH%;%path_python27_x86%\Lib\site-packages