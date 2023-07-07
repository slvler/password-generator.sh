#!/bin/bash


REDBg=$'\e[0;41m'
GREENBg=$'\e[0;42m'
YELLOWBg=$'\e[0;43m'
NC=$'\e[0m'

base64="base64"
md5="md5"
sha1="sha1"
sha224="sha224"
sha256="sha256"
sha384="sha384"
sha512="sha512"


echo "${REDBg} simple password generator ${NC}"
sleep 1
echo "enter the password: "
read password
sleep 1

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


