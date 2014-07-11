@ECHO OFF

set TESS_BIN=bin
start %TESS_BIN%\tesseract.exe "-u$HOME\My Games\Tesseract" -gserver-log.txt -d %*
