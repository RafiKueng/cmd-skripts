@echo off
echo loading paths for java

SET path_java=D:\sdk\Java

PATH %path%;%path_java%\jdk1.7.0_03\bin
PATH %path%;%path_java%\apache-ant-1.8.3\bin

IF EXIST JAVA_HOME ECHO OVREWRITING JAVA_HOME
SET JAVA_HOME=%path_java%\jdk1.7.0_03