@ECHO off

rd /S /Q "%~dp0/TEMP" 2> nul
md "%~dp0/TEMP" 2> nul
md "%~dp0/TEMP/Translations" 2> nul
