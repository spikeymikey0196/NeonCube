@ECHO OFF

set TESS_BIN=bin64

start %TESS_BIN%\tesseract.exe "-uusr/" -glog.txt %*
