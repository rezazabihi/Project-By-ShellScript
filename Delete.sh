Delete()
{
 read -p "File confing ra vared konid: " File 
while [ ! -f $File ]
 do 
	read -p "File confing yaft nashod !! Dobareh vared konid! " File
 done
echo "*** File confing gerefteh shod ***"
echo "masir hay mojod dar File confing: "
i=0
#sed i "> $file
if test -f $File; then
  while read -r line; do
    if echo "$line" | grep -qE '^[0-9]+$'; then
       continue;
    fi
    i=$((i + 1))
    echo $i"- $line"
  done < $File
fi
read p
p=$((p + 1))
echo $p
if [ ! -z $p ]
then
sed -i "$p"'d' $File
echo "*** masir ba mofaghiyat delete shod ***"
else
echo  "meqdar sahih nist! "

fi
}
Delete
