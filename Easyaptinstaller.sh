#!/bin/bash
clear
echo "╔════════1.0.0"
echo "║  Easy APT  ║"
echo "╠════════════╣"
echo "║ INSTALLER  ║"
echo "╚════════════╝"
echo ""
echo Proceed with installation?
select item in "Yes" "No"; do
case $REPLY in
1)
echo Downloading Files...
cd /home/$USER/Downloads
curl -o "Easyapt.sh" "https://raw.githubusercontent.com/owmyeyesturnondarkmode/Easy-APT/refs/heads/main/Easyapt.sh"
echo ""
echo Done! Easyapt.sh is located at /home/$USER/Downloads/Easyapt.sh
break
;;
2)
break
;;
*)
echo Error! Not an option.
;;
esac
done
