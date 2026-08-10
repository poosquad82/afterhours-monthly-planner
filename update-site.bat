@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

rem -- find git: PATH first, then GitHub Desktop's bundled copy
set "GIT=git"
where git >nul 2>nul
if errorlevel 1 (
  for /d %%D in ("%LocalAppData%\GitHubDesktop\app-*") do set "GITDIR=%%D"
  if defined GITDIR set "GIT=!GITDIR!\resources\app\git\cmd\git.exe"
)

rem -- clear stale git lock files (left behind when Claude's sandbox commits)
del /f /q .git\index.lock .git\HEAD.lock .git\objects\maintenance.lock 2>nul

echo Updating your monthly planner site...
"%GIT%" add -A
"%GIT%" commit -m "Monthly planner update"
"%GIT%" push origin main

echo.
echo ================================================================
echo  Done! If no errors above, the site refreshes in about a minute:
echo  https://poosquad82.github.io/afterhours-monthly-planner/
echo  (If push failed, open GitHub Desktop and click Commit + Push.)
echo ================================================================
pause
