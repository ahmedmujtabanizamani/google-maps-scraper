@echo off
:: set python venv if any
call ".\..\.venv\Scripts\activate.bat"
:: search query from user and variables
set /p query="Search for: "
:: check if user provided URL or query only
echo %query% | find "www.google.com/maps/search" > nul
if errorlevel 1 (
	set url="https://www.google.com/maps/search/%query: =+%"
) else (
	set url="%query: =+%"
)
:: searching
echo "searching for %url%"
make scrape URL=%url% FULL=True