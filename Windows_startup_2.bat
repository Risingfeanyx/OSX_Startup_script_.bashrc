choco feature enable -n allowGlobalConfirmation
echo "This is where the fun begings. Installs commonly used programs. Edit batch file to add/remove. Good for a general catch-all list of programs."
#TODO add choices for user/power user, gaming, that kinda thing. Have preset choices
choco install steam firefox chrome libreoffice malwarebytes unchecky vlc -y 
# gaming choco install steam goggalaxy discord epicgameslauncher battle.net 
choco upgrade all -y
#echo "Removes trace of install script and any unwanted programs"
start /WAIT /MAX appwiz.cpl
echo "show system specs and delete any non-essential start ups"
start /WAIT msconfig
echo "reset to apply changes"
shutdown /r
exit
