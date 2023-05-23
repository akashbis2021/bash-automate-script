# bash-automate-script

I upload here all bash automate script which can make easy to access operation in linux like:
1. Access-virtualserver
2. linking to virtualserver
3. access bashrc file from any where
4. renaming all file format in one run 
5. wifi-module oprating all basic wifi related opeartion in one file. 
6. Lan-module operating all lan related operation in one file

# procedure

1. copy all script to /bin dir
2. open nano /home/username/.bashrc
3. set aliases at the end of the bashrc file:-
   i)   alias bashrc="sudo nano /bin/bashrc.sh"
   ii)  alias linking="/bin/linking.sh"
   iii) alias serveron="/bin/serveron.sh"
   iv)  alias   rname="/bin/rname.sh"
   v)   alias  wifioperation="/bin/wifi-module.sh"
   vi)  alias  lanconfig="/bin/lanconfig.sh" 
