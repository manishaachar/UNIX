set `date`
d=$2
if [ $d -le 9 ]
then
cal | tr -d "[\137][\010]"|sed "s/$d/*/"
else
cal | tr -d "[\137][\010]"|sed "s/$d/**/"
fi
