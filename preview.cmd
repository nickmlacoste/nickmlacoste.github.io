@echo off
rem Local preview of the website at http://localhost:1313
rem Pages reload automatically when files change. Close this window to stop.
rem Build output and image caches go to %LOCALAPPDATA%\hugo-preview, outside
rem OneDrive, because OneDrive sync locks files while Hugo is writing them.
cd /d "%~dp0"
set "PATH=%LOCALAPPDATA%\Programs\hugo;%LOCALAPPDATA%\Programs\go\bin;%PATH%"
set "HUGO_RESOURCEDIR=%LOCALAPPDATA%\hugo-preview\resources"
start "" http://localhost:1313/
hugo server --buildDrafts --navigateToChanged --destination "%LOCALAPPDATA%\hugo-preview\public"
