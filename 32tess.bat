@ECHO OFF

set TESS_BIN=bin

start %TESS_BIN%\tesseract.exe "-uusr/" -glog.txt %*
