@echo off
if "%1"=="" (
    ECHO Needs a file name
    EXIT /B
)

if not exist "%1" (
    ECHO %1: No such file or directory
    EXIT /B
)

set file=%~n1.replace.md
ECHO Created %file%
touch %file%
perl %scripts%/replace.pl < %1 > %file%
pandoc %file% -o %~n1.pdf --from markdown --highlight-style=tango

if not "%2"=="--debug" del %file% -fq
