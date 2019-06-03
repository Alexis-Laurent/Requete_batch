:: Créer un fichier txt avec la liste des utilisateurs

@echo off

:: Nettoyage de la console
cls

set /p SName=Server Name :
set /p DbName=Database Name :
set /p choice=ETES VOUS SUR DE VOULOIR EXECUTER LE SCRIPT in %DbName% (y/n) ?

if '%choice%'=='y' goto begin
goto end

:begin
if exist Liste_des_utilisateurs.txt del Liste_des_utilisateurs.txt

@echo on
sqlcmd -S %SName% -d %DbName% -I -i requete_selectUsers.sql >> Liste_des_utilisateurs.txt 2>&1