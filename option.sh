echo "Enter option"
echo "1. masir.sh"
echo "2. Delete.sh"
echo "3. size.txt"
echo "4. sens.sh"
echo "5. exit"

read option

while [ ! -z $option ]
do

if [ $option == "1" ]
then 
./masir.sh
elif [ $option == "2" ]
then
./Delete.sh
elif [ $option == "3" ]
then 
nano size.txt
elif [ $option == "5" ]
then
break
else 
./sens.sh
fi
echo "enter a option"
read option
done
