set /p place=< s:\place.txt
rem cd BACKUP
rem call _backupVCM.bat 
rem cd ..
git add .
git commit -m "AUTO FROM %place% %date% %time%"
git config --global http.version HTTP/1.1
git push
rem git push origin --force
git config --global http.version HTTP/2
pause