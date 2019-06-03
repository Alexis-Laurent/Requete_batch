:: Créer une sauvegarde bdd

@echo off

:: Nettoyage de la console
cls

set /p SName=Server Name :
set /p DbName=Database Name :
set /p choice=ETES VOUS SUR DE VOULOIR EXECUTER LE SCRIPT in %DbName% (y/n) ?

if '%choice%'=='y' goto begin
goto end

:begin
if exist MasterCode.bak del MasterCode.bak

@echo on
sqlcmd -S %SName% -d %DbName% -I -i requete_backupBdd.sql 