ping %1 -n 2 -w 2000
if %ErrorLevel% EQU 1 goto PINGEND




psshutdown.exe -s -f -t 0 -m "Shutting down Station" \\%1
if %ErrorLevel% EQU 1 goto END3




:PINGEND
echo %1 >> pingfailed.txt
goto EXIT



:END3
echo %1 >> shutdownfailed.txt

:EXIT
