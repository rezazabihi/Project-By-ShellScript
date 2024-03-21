
Masir()
{
echo "-----------------"
read -p "file confing ra vared konid!" File
while [ ! -f $File ]
do
read -p "confing yaft nashod !!! again confing :" File
done
echo "file confing gerefteh shod !"
echo "---------------------------------------"
read -p "Masir mored naza ra vared konid :" user_path
flag=1
while read -r line 
do
if [ "$line" == "$user_path" ]
then
flag=0
fi
done <$File
if [ $flag -eq 1 ]
then 
	echo "$user_path" >> $File
	touch "$user_path/size.txt"
	echo $(du -sb "$user_path" | cut -f1) > "./$user_path/size.txt"	
	echo "Masir add shod"
else 
	echo "Masir vorodi tekrary ast!!"
fi
}
Masir


