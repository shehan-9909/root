!/bin/bash
clear
apt-get update && apt-get upgrade -y
clear
apt-get install wget -y
clear
apt-get install proot -y
clear
apt-get install git -y
clear

red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
c='\033[1;36m'
pink='\033[1;35m'
#-----------------
echo -e $red"TERMUX ROOT ACCESS"
echo -e $c  "auther #shehan lahiru"
echo -e $ylo"https://slterminal.godaddysites.com"
echo
echo -e $pink "  " $red"[1] install root $red"$pink"         " $rset
echo -e $pink "  " $red"[2] uninstall root $red"$pink"        " $rset
echo -e $pink "  " $red"[3] root menu $red"$pink"     " $rset
read -p'input:--' enter;

if [ "${enter}" = "1" ]
then
cd $HOME
cd root
cd cache
echo -e $c"confirm login"
sleep 1.0
echo -e $red"enter username & password"
sleep 1.0
clear
python ps.py
echo -e $c"[*]installing..
sleep 5.0
chmod +x ubuntu.sh
./ubuntu.sh -y
./startubuntu.sh
fi

read -p'input:--' enter;

if [ "${enter}" = "2" ]
then
cd $HOME
cd root/cache
rm -rf startubuntu.sh  ubuntu-binds  ubuntu-fs
echo -e $c"[*]uninstalling"
sleep 5.0
echo -e $ylo" uninstall successful"
sleep 2.0
exit
fi

read -p'input:--' enter;

if [ "${enter}" = "3" ]
then
cd $HOME
cd root/cache
./startubuntu.sh
fi

fi
