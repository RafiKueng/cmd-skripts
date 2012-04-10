@echo off
echo loading paths for python27_x64

SET path_python27_x64=D:\bin\python27_x64

PATH %path%;%path_python27_x64%
PATH %path%;%path_python27_x64%\Scripts

IF EXIST PYTHONPATH ECHO OVREWRITING pythonpath
SET PYTHONPATH=%path_python27_x64%
SET PYTHONPATH=%PYTHONPATH%;%path_python27_x64%\Lib
SET PYTHONPATH=%PYTHONPATH%;%path_python27_x64%\Lib\site-packages