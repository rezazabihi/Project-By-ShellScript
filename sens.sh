Masir()
{
echo "--------"
read -p "file confing ra vared konid " File
while [ ! -f $File ]
do
read -p "confing yaft nashod !!! again confing :" File
done
echo "File config gerefteh shod !" 
echo "---------"
read -p "mizan hasasiyat ra vared konid " user_sens
sed -i "1s/.*/$user_sens/" $File
while read -r line
do
#echo $line
  if [ -d $line ]; then
    cuvent=$( du -sb $line | cut  -f1 )
    lasthajm=$( cat $line/size.txt)
    if [ $lasthajm -gt $cuvent ]; then
      disrence=$(expr $lasthajm - $cuvent)
    else
      disrence=$(expr $cuvent - $lasthajm)
    fi
    if [ $disrence -gt $user_sens  ]
    then
    echo "$line hajm taghir kardeh ast !! "
    else
    echo "$line taghir nakardeh ast !"
    fi
    echo $(du -sb "$line" | cut -f1) > "./$line/size.txt"
  fi
done < $File

}
Masir





#sed -i '1 $File 
#count=`wc -l $File | cut -d' -f1 `
#if [  == " ]
#then
#echo $user_sens > $File
#else
#sed "1 i $user_sens" $File
#fi
