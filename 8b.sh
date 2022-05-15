if [ $# -eq 1 ] 
then
echo "loing user"
read 
var= `grep -owi $1/etc/passwd`
if [ $? -eq 0 ]
then
sleep 1m
success=`who|grep -wo "$var"`
if [ $? -eq 0 ]
then
echo "Login success"
else
echo "Loing not success"
fi
else
echo "USer not exists"
fi
else
echo "Please provide an argument"
fi
