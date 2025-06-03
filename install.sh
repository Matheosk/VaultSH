#!/bin/sh
echo "Choose option:
1 - User
2 - System"

read -r option

case "$option" in
  1) 
    echo "Installing in the current user"
    cp -f vaultsh $HOME/.local/bin/
  ;;
  2) 
    echo "Installing in the system"
    sudo cp -f vaultsh /usr/bin/
  ;;
  *) echo "Invalid Option"
  ;;
esac
echo "Sucess"

