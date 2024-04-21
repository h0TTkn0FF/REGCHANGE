@echo off
title Changes in region, language and time
chcp 65001
REM Creating a Newline variable (the two blank lines are required!)
set NLM=^

set NL=^^^%NLM%%NLM%^%NLM%%NLM%

set text=

:INPUT
set line=
set /p line=Write CH or RU:
if "%line%"=="CH" (
	tzutil /s "China Standard Time"
	echo Time set to China
	powershell.exe -ExecutionPolicy Bypass -File ""%~dp0SetCHRegion.ps1""
	)
	
if "%line%"=="RU" (
	tzutil /s "Russian Standard Time"
	echo Time set to Russian
	powershell.exe -ExecutionPolicy Bypass -File ""%~dp0SetRURegion.ps1""
	)
goto :DONE

:DONE
if "%line%"=="CH" (echo You've changed your language on China)
if "%line%"=="RU" (echo You've changed your language on Russian)
shutdown /l
pause