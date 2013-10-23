#!/bin/bash

echo `cat /etc/passwd | grep "100[0-9]"|cut -f 1 -d :` > user
echo `cat /etc/passwd | grep "100[0-9]"|cut -f 3 -d :` > id
cat user
cat id
echo `cat user|cut -f 1 -d " "` "	        (" `cat id|cut -f 1 -d " "` ")"
echo `cat user|cut -f 2 -d " "` "	        (" `cat id|cut -f 2 -d " "` ")"
echo `cat user|cut -f 3 -d " "` "	( "`cat id|cut -f 3 -d " "` ")"
echo `cat user|cut -f 4 -d " "` "	        (" `cat id|cut -f 4 -d " "` ")"
echo `cat user|cut -f 5 -d " "` "	        (" `cat id|cut -f 5 -d " "` ")"
