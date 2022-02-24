#singlet,doublet and triplet coin simulation
head_count=0
tail_count=0
for((i=0;i<=20;i++))
do
	coin=$((RANDOM%2))
	if(($coin==0))
	then
		singlet[$i]="head"
		((head_count++))
	elif(($coin==1))
	then
		singlet[$i]="tail"
		((tail_count++))
	fi
done
echo ${singlet[@]}
head_percent=$(($head_count/$i*100))
tail_percent=$(($tail_count/$i*100))
echo "head count and percentage :" $head_count $head_percent
echo "tail count and percentage:" $tail_count $tail_percent
#doublet logic
hh=0
ht=0
th=0
tt=0
        for((i=0;i<20;i++))
        do
        coin1=$((RANDOM%2))
        coin2=$((RANDOM%2))
                if(($coin1==0 && $coin2==0))
                then
                        doublet[$i]="(head-head)   "
			((hh++))
                elif(($coin1==0 && $coin2==1))
                then
			doublet[$i]="(head-tail)   "
                        ((ht++))
                elif(($coin1==1 && $coin2==0))
                then
			doublet[$i]="(tail-head)   "
                        ((th++))
                elif(($coin1==1 && $coin2==1))
                then
			doublet[$i]="(tail-tail)   "
                        ((tt++))
                fi
        done

echo ${doublet[@]}
echo "head-head count and percentage is:" $hh $(($hh/$i*100))
echo "head-tail count and percentage is:" $ht $(($ht/$i*100))
echo "tail-head count and percentage is:" $th $(($th/$i*100))
echo "tail-tail count and percentage is:" $tt $(($tt/$i*100))
