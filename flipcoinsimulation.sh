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
echo "head count and percentage :" $head_count $head_percent|bc
