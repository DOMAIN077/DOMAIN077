#! /usr/bin/bash

echo ""
echo "

 _          _// //_          ///             
 | |__   ___| | | ___   __ _ _   _ ___ 
 | '_ \ / _ \ | |/ _ \ / _ | | | / __|'
 | | | |  __/ | | (_) | (_| | |_| \__ | //
 |_| |_|\___|_|_|\___/ \__, |\__, |___/
                       |___/ |___/     
                       "                     
echo ""
greeting(){  
echo "hello `tput setaf 1` $USER! `tput sgr0`. YOU R IN `tput setaf 6` LIVE DOMAINE `tput sgr0` created by `tput setaf 3` WEBROS `tput sgr0`" 
echo "CONFORM THAT your system has `tput setaf 4` 'ASSETFINDER' " 
} 
greeting 
echo =====================================================================
read -p "`tput sgr0` Enter the Domain `tput setaf 5` : " text
echo "" 
echo " `tput setaf 5` please wait. loading in progress `tput sgr0` : "
end () {
echo " `tput setaf 3` ==== `tput sgr0` INFORMATION ACCESSED  `tput sgr0`  `tput setaf 6` LIVE SUBDOMAINS`tput sgr0` ===="
} 
path1() {
assetfinder --subs-only $dom > subs.txt 
} 
path2() 
{
cat subs.txt | httprobe `tput sgr0` > live_subs.txt
} 
path3()
{
while read url ; do
	echo ${url#*//} >> urls.txt
done < live_subs.txt
sort -u urls.txt > sorted_subs.txt
echo "++++++++++++  Live Subdomains of `tput setaf 5` $dom `tput sgr0` ++++++++++" `tput setaf 2`
cat  sorted_subs.txt 
echo "`tput setaf 4`======================================== `tput sgr0`"
echo "Result saved in `tput setaf 1` live_subs.txt `tput sgr0`"
rm urls.txt
rm live_subs.txt
rm subs.txt
} 
path1
path2
path3
end
