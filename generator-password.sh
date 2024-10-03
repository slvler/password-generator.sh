#!/bin/bash

# ___| |_   _| | ___ _ __ 
#/ __| \ \ / / |/ _ \ '__|
#\__ \ |\ V /| |  __/ |   
#|___/_| \_/ |_|\___|_| 
#A script written by slvler in September 2023 under GNU GENERAL PUBLIC LICENSE
#
set -u

COLORED_MESSAGES=""

base64="base64"
md5="md5"
sha1="sha1"
sha224="sha224"
sha256="sha256"
sha384="sha384"
sha512="sha512"

# Help
function help()
{
    echo ""
    echo -e "a script for storing passwords in a secure format"
    echo -e "to make it work ${GREEN}sudo bash generator-password.sh$NC"
    echo "----------------------------------------------------------"
    echo -e $CYAN"    Create by           $WHITE":" $RED slvler$NC"
    echo -e $CYAN"    Developer           $WHITE":" $RED https://github.com/slvler$NC"
    echo -e $CYAN"    Version             $WHITE":" $RED v1.0.0$NC"
    echo ""
}

# Exit
function qt(){
    clear
    echo ""
    echo "----------------------------------------------------------"
    echo -e $REDBg"EXİT$NC"
    echo ""
    exit 0
}

function load_colors()
{
 if [[ $COLORED_MESSAGES == "yes" ]];
 then

  NC="\e[0m"

  # Background
  REDBg="\e[0;41m"
  GREENBg="\e[0;42m"
  YELLOWBg="\e[0;43m"
  BLUEBg="\e[0;44m"
  PINKBg="\e[0;45m"
  CYANBg="\e[0;46m"
  WHITEBg="\e[0;47m"

  # Color
  RED="\e[31m"
  GREEN="\e[32m"
  YELLOW="\e[33m"
  BLUE="\e[0;34m"
  MAGENTA="\e[35m"
  CYAN="\e[36m"
  WHITE="\e[37m"
  GRAY="\e[38;5;242m"

  # Underline
  URED="\e[4;31m"
  UGREEN="\e[4;32m"
  UYELLOW="\e[4;33m"
  UBLUE="\e[4;34m"
  UPINK="\e[4;35m"
  UCYAN="\e[4;36m"
  UWHITE="\e[4;37m"

 else
  NC=""
  # Background
  REDBg=""
  GREENBg=""
  YELLOWBg=""
  BLUEBg=""
  PINKBg=""
  CYANBg=""
  WHITEBg=""

  # Color
  RED=""
  GREEN=""
  YELLOW=""
  BLUE=""
  MAGENTA=""
  CYAN=""
  WHITE=""
  GRAY=""

  # Underline
  URED=""
  UGREEN=""
  UYELLOW=""
  UBLUE=""
  UPINK=""
  UCYAN=""
  UWHITE=""
 fi;
}
load_colors

echo "${REDBg} simple password generator ${NC}"
echo "enter the password: "
read password


echo "${REDBg} choose encryption type ${NC}"
echo $base64
echo $md5
echo $sha1
echo $sha224
echo $sha256
echo $sha384
echo $sha512
read type

case $type in
$base64)
    hash="$(echo -n "$password" | base64 )"
    echo "generated password: $hash"
       ;;
$md5)
    hash="$(echo -n "$password" | md5sum )"
    echo "generated password: $hash"
       ;;
$sha1)
    hash="$(echo -n "$password" | sha1sum )"
    echo "generated password: $hash"
       ;;
$sha224)
    hash="$(echo -n "$password" | sha224sum )"
    echo "generated password: $hash"
       ;;
$sha256)
    hash="$(echo -n "$password" | sha256sum )"
    echo "generated password: $hash"
       ;;
$sha384)
    hash="$(echo -n "$password" | sha384sum )"
    echo "generated password: $hash"
       ;;
$sha512)
    hash="$(echo -n "$password" | sha512sum )"
    echo "generated password: $hash"
       ;;
*)
    echo "${REDBg} type error ${NC}"
       ;;
esac


