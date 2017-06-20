
echo ""
echo "------------------------[IIT BOMBAY LDAP LOGIN]-------------------------------"
printf "Enter LDAP User Name:"
read uname
printf "Enter LDAP Password:"
read -s passwd
logfile=' /tmp/wget_internertStatus.txt'
outputfile='/tmp/wget_internertStatus_output.html'
wget https://internet.iitb.ac.in/index.php --post-data="uname=$uname&passwd=$passwd" -o $logfile -O $outputfile
status=`cat $outputfile|grep -c 'logout' `
rm $logfile
rm $outputfile
echo ''
if [ "$status" -eq "1" ] 
then
	echo "Status: Connection of SUCCESSFULL!!!"
else
	echo "Status: Check internet, you may be already connected or please try again."
fi
echo "Thank You, for using :)"
echo "-------------------------------------------------------------------------------"
