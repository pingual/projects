@echo off
setlocal enabledelayedexpansion

:: Définir l'URL de base
set baseURL=http://127.0.0.1:5000/actors/

:: Boucle de 1 à 232
for /l %%i in (1,1,287) do (
    :: Construire l'URL complète
    set url=!baseURL!%%i
    :: Ouvrir l'URL dans le navigateur par défaut
    start "" !url!
    :: Attendre 2 secondes
    timeout /t 2 /nobreak >nul
)

endlocal
