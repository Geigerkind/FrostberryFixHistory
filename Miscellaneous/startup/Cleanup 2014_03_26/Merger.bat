@echo off
setlocal EnableDelayedExpansion
set Merge=Merge.sql
 
if exist %Merge% del %Merge%
 
for %%a in (*.sql) do (
echo /* >>%Merge%
echo * %%a >>%Merge%
echo */ >>%Merge%
copy/b %Merge%+"%%a" %Merge%
echo. >>%Merge%
echo. >>%Merge%)
