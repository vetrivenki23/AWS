@echo off

setlocal enabledelayedexpansion

set repo_url=https://github.com/vetrivenki23/AWS.git

REM Get current directory
set "current_dir=%CD%"

set /p clone_dir="Enter directory to clone into (press Enter for current directory): "
if "%clone_dir%"=="" (
    set clone_dir=!current_dir!
)

git clone %repo_url% "%clone_dir%"

endlocal
