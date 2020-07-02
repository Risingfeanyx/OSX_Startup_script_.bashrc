@setlocal enableextensions
@cd /d "%~dp0"
@echo off

echo "Read System info"
#start /WAIT winver
TITLE Install Common Stuff

echo " Install chocolatey Chocolatey is a package manager for Windows (like apt-get or yum but for Windows).  It was designed to be a decentralized framework for quickly installing applications and tools that you need. It is built on the NuGet infrastructure currently using PowerShell as its focus for delivering packages from the distros to your door, err computer."

echo "Create a restore point, just in case things go haywire. Doesn't actually do this for you"
start /WAIT systempropertiesprotection

echo "Clean up Junk files"
#cleanmgr.exe /cdrive


@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
#installs chocolatey.org. "Chocolatey is a software management solution unlike anything else you've ever experienced on Windows. Chocolatey brings the concepts of true package management to allow you to version things, manage dependencies and installation order, better inventory management, and other features."
