@echo off
break off
title Stealth Prompt
cls
:cmd
set /p cmd="%cd%>" 
%cmd%
echo.
goto cmd
::secret command prompt that bypasses restrictions