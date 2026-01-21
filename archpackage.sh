#!/bin/bash

#warns user and prompts a response, relaunches script on invalid response
    echo "-----------------------------------------------------"
    echo "You are about to disable read only mode, irreparable damage can occur. Moving forward, you assume responsibility"
    echo "Do you wish to continue?"
    echo "-----------------------------------------------------"
        printf 'y/n?: ' >&2
        read -r name
        case $name in
            n)
            read -p 'closing script' -t 3
            ;;
            y)
                printf 'you selected yes'
                echo ""
                read -p "press enter to begin"
                echo ""
                echo "-----------------------------------------------------"
                echo "step one: Disable read only mode"
                echo "-----------------------------------------------------"
                echo ""
                read -p "press enter"
                #disables steamos's readonly file system
                sudo steamos-readonly disable && read -p "press enter to continue"
                echo ""
                echo "-----------------------------------------------------"
                echo "step two: initialize the pacman keyring"
                echo "-----------------------------------------------------"
                echo ""
                #starts the pacman keyring
                sudo pacman-key --init && read -p "press enter to continue"
                echo ""
                echo "-----------------------------------------------------"
                echo "step three: populate the required keys"
                echo "-----------------------------------------------------"
                echo ""
                #populates the required archlinux keyrings
                sudo pacman-key --populate archlinux && read -p "press enter to continue"
                #required, I believe this populates steamos specific keys
                sudo pacman-key --populate holo && read -p "press enter to coninue"
                echo ""
                echo "-----------------------------------------------------"
                echo "reenabling read only mode"
                echo "-----------------------------------------------------"
                echo ""
                read -p "press enter"
                #reenables the read only filesystem
                sudo steamos-readonly enable && read -p "press enter to continue"
                echo ""
                echo "-----------------------------------------------------"
                echo "All finished. exiting now"
                echo "-----------------------------------------------------"
                echo ""
                #closes the script after a 4 second pause
                read -p "closing script" -t 4
            ;;
            *)
            printf 'Invalid selection  "%s"\n' "$name"
            bash ./archpackage.sh
            ;;
        esac
