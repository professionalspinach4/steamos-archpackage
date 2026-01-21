----------DISCLAIMER-------------------
This script briefly takes steamOS out of read only mode. Proceed with caution, as you can cause serious damage!
---------------------------------------
This is a re-upload of my pacman script that automates the setup process for installing arch packages found here: https://github.com/professionalspinach4/steamOS-pacmanscript/blob/e58a2d750c3b2796c9b9670389a13d544463dd4d/pacman.sh
This version skips the password setup, for users that already have one set, or for post update resets.
Open Konsole in whatever folder you saved this file to and run the command "bash ./archpackage.sh"
You will lose your installed packages on system updates so make a list of what you've installed or create a simple script to re-install them. 
I just tested this on a fresh system update, so you should have no issues running this. If anything changes in future updates, I'll edit the script accordingly.
You need to disable readonly mode to install packages, I HIGHLY recommend that you disable, install, enable ofor each package/batch of packages. 
Enjoy! 
