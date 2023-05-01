@echo off 
del /s/f/q *.rpt
del /s/f/q *.cdf 
del /s/f/q *.bak
for /r %%a in (db) do (if exist "%%a" rd/q/s "%%a")
for /r %%a in (incremental_db) do (if exist "%%a" rd/q/s "%%a")
for /r %%a in (simulation) do (if exist "%%a" rd/q/s "%%a")
