title Spyder - dropCAM

cd /D Z:\FSMlens

call 2path mingw, qt48, opencv, py27-32

rem add pyuic: ui to py compiler
path = %path%;D:\bin\Python27_x86\Lib\site-packages\PyQt4\uic\

rem doen't work, spyder cant find opencv dll
rem set PYTHONPATH=%PYTHONPATH%;%PATH%

rem start cmd to run and debug
start cmd

echo starting spyder
spyder