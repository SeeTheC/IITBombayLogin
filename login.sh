
echo ""
echo "------------------------[IIT BOMBAY LDAP LOGIN]-------------------------------"
printf "Enter LDAP User Name:"
read uname
printf "Enter LDAP Password:"
read -s passwd
page=`curl -# --data "uname=$uname&passwd=$passwd"   https://internet.iitb.ac.in/index.php`
status=`echo $page|grep -c 'logout' `
if [ "$status" -eq "1" ] 
then
	echo "Status: Connection of SUCCESSFULL!!!"
else
	echo "Status: Check internet, you may be already connected or please try again."
fi
echo "Thank You, for using :)"
echo "-------------------------------------------------------------------------------"
