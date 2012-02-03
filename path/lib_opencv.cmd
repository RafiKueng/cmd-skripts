@echo off
echo loading paths for lib opencv
rem echo.
rem echo NOT FINISHED - DOESNT DO ANYTHING

SET path_opencv=D:\libs\opencv

rem which version to use?

rem use my own build
echo --> HINT: remember to load qt48 and mingw
GOTO install

rem just build (make) does this even work??
:build
PATH %path%;%path_opencv%\build\bin
PATH %path%;%path_opencv%\build\lib
goto end

rem full build (make + make install)
:install
PATH %path%;%path_opencv%\install\bin
PATH %path%;%path_opencv%\install\lib
goto end

rem precompiled
:src
PATH %path%;%path_opencv%\src\build\x86\mingw\bin
PATH %path%;%path_opencv%\src\build\x86\mingw\lib

PATH %path%;%path_opencv%\src\build\x86\vc10\bin
PATH %path%;%path_opencv%\src\build\x86\vc10\lib

PATH %path%;%path_opencv%\src\build\x64\mingw\bin
PATH %path%;%path_opencv%\src\build\x64\mingw\lib
goto end

:end