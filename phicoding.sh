#!/bin/bash

# Install Google Chrome
	if [[ $opt == *"Install Google Chrome"* ]]
	then
		printInstallMessage "Installing Google Chrome" 
		wget -O /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
	fi
# Install Telegram Action
	if [[ $opt == *"Install Telegram"* ]]
	then
		printInstallMessage "Installing Telegram"
		addRepository atareao/telegram
		installPackage telegram
    fi
# Install TeamViewer
    if [[ $opt == *"Install TeamViewer"* ]]
    then
        printInstallMessage "Install TeamViewer"
        sudo -i
        echo -e "deb http://linux.teamviewer.com/deb stable main\ndeb http://linux.teamviewer.com/deb preview main" > /etc/apt/sources.list.d/teamviewer.list
        wget -O - https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc | apt-key add -
        sudo apt-get update
        sudo apt-get install teamviewer
    fi