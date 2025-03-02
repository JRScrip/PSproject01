echo pinging for %1
ping %1 -n 2 -w 2000

if ErrorLevel 1 goto ENDPING

echo copying files for.... %1

copy /y "Wireshark-4.2.1rc0-70-g62ab1d55e458-x64.msi" \\%1\C$\

if ErrorLevel 1 goto END




echo Installing Wireshark for......... %1
psexec -s \\%1 cmd /c msiexec /qn /i c:\Wireshark-4.2.1rc0-70-g62ab1d55e458-x64.msi


if ErrorLevel 1 goto END1
echo DONE FOR..... %1
echo %1 >> success.txt

:LOOP

del \\%1\c$\Wireshark-4.2.1rc0-70-g62ab1d55e458-x64.msi
if ErrorLEvel 1 goto END2

echo %1 >> Delete_Success.txt
goto EXIT

:END1
echo %1 >> Failed.txt
goto LOOP
:ENDPING
echo %1 >> Failed.txt
goto EXIT
:END
echo %1 >> Failed.txt
goto EXIT
:END2
echo %1 >> Delete_failed.txt

:EXIT