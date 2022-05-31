#!/bin/bash
echo "
-
--Welome--
---to---
----automap----
---- ----
--- ---
-- --
-
"

if [ "$EUID" != 0 ]
  then echo "You are NOT a ROOT"  
  
else   

echo " 
[00] : SYN scan or TCP scan 
[01] : TCP connect scan 
[02] : UDP scan   
[03] : TCP ACK scan
[04] : TCP Window can 
[05] : TCP Maimon scan 
[06] : TCP Idle scan 
[07] : IP Protocol Scan
"

echo "Type of scan :-"
read scantype

echo "The target ip :-"
read tarip

echo "Enter The Ports :-"
read ports
echo " "
echo " "
echo " "

if [ $scantype == "0" ] || [ $scantype == "00" ]
then
echo " "
echo "---------------wait until the SYN scan finished---------------"
echo " "
echo " "
echo " "
nmap $tarip -p$ports -sS -A -sV -vv 
elif [ $scantype == "1" ] || [ $scantype == "01" ]
then
echo " "
echo "---------------wait until the TCP connect scan finished---------------"
echo " "
echo " "
echo " "
nmap $tarip -p$ports -sT  -sV -vv 
echo " "
elif [ $scantype == "2" ] || [ $scantype == "02" ]
then
echo " "
echo "---------------wait until the UDP scan finished---------------"
echo " "
echo " "
echo " "
nmap $tarip -p$ports -sU  -sV -vv 
echo " "
elif [ $scantype == "3" ] || [ $scantype == "03" ]
then
echo " "
echo "---------------wait until the TCP ACK scan finished---------------"
echo " "
echo " "
echo " "
nmap $tarip -p$ports -sA  -sV -vv 
echo " "
elif [ $scantype == "4" ] || [ $scantype == "04" ]
then
echo " "
echo "---------------wait until the TCP Window scan finished---------------"
echo " "
echo " "
echo " "
nmap $tarip -p$ports -sW  -sV -vv 
echo " "
elif [ $scantype == "5" ] || [ $scantype == "05" ]
then
echo " "
echo "---------------wait until the TCP Maimon scan finished---------------"
echo " "
echo " "
echo " "
nmap $tarip -p$ports -sM  -sV -vv 
echo " "
elif [ $scantype == "6" ] || [ $scantype == "06" ]
then
echo " "
echo "---------------wait until the TCP Idle scan finished---------------"
echo " "
echo " "
echo " "
nmap $tarip -p$ports -sI  -sV -vv 
echo " "
elif [ $scantype == "7" ] || [ $scantype == "07" ]
then
echo " "
echo "---------------wait until the IP Protocol Scan finished---------------"
echo " "
echo " "
echo " "
nmap $tarip -p$ports -sO  -sV -vv 
echo " "
else 
echo "Invlaid Scanning type "
exit
fi 
fi


