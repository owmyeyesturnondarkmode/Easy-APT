#!/bin/bash
clear
echo "╔════════════╗"
echo "║  EASY APT  ║"
echo "╚════════════╝"
echo ""
select opt in "Install Program" "Uninstall Program" "Read Discrpition of Program" "Quit"; do
case $REPLY in
1)
echo ""
echo INSTALL
echo "-------"
echo -n "Enter name of program to install: "
read nameofapp
sudo apt install $nameofapp
echo Done!
read -n 1 -r -s -p "Press any key to continue..."
echo ""
;;
2)
echo ""
echo UNINSTALL
echo "---------"
echo -n "Enter name of program to uninstall: "
read nameofapp
sudo apt remove $nameofapp
echo Done!
read -n 1 -r -s -p "Press any key to continue..."
echo ""
;;
3)
echo ""
echo DESCRIPTION
echo "-----------"
echo -n "Enter name of program to read discription of: "
read nameofapp
apt show $nameofapp
echo Done!
read -n 1 -r -s -p "Press any key to continue..."
echo ""
;;
4)
break
;;
*)
echo ERROR: Not a valid option $opt
;;
esac
done
