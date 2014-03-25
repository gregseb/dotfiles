COWSAY_FORTUNE=`/usr/bin/fortune | /usr/bin/cowsay -n`
FIGLET=`/usr/bin/figlet -f slant Daimaou`
HOSTNAME=`uname -n`
KERNEL=`uname -r`
CPU=`lscpu | grep 'Model name' | cut -c24-70`
ARCH=`uname -m`
# The different colours as variables
W="\033[01;37m"
B="\033[01;34m"
R="\033[01;31m" 
X="\033[00;37m"

echo -e "$B$FIGLET"
echo -e "$W$COWSAY_FORTUNE"
echo -e "$R#=============================================================================#"
echo -e "$W Welcome $B $USER $W to $B $HOSTNAME                "
echo -e "$R ARCH   $W= $ARCH                                   "
echo -e "$R KERNEL $W= $KERNEL                                 "
echo -e "$R CPU    $W= $CPU                                    "
echo -e "$R#=============================================================================#"
echo -e "$X"
