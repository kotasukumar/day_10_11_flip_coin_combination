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
echo "head count and percentage :" $head_count $head_percent|bc
echo "tail count and percentage:" $tail_count $tail_percent|bc
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
echo "head-head count and percentage is:" $hh $(($hh/$i*100))|bc
echo "head-tail count and percentage is:" $ht $(($ht/$i*100))|bc
echo "tail-head count and percentage is:" $th $(($th/$i*100))|bc
echo "tail-tail count and percentage is:" $tt $(($tt/$i*100))|bc
#triplet logic
hhh=0
thh=0
hth=0
hht=0
htt=0
tht=0
tth=0
ttt=0
	for((i=0;i<20;i++))
	do
	 coin1=$((RANDOM%2))
         coin2=$((RANDOM%2))
	 coin3=$((RANDOM%2))
		if(($coin1==0 && $coin2==0 && $coin3==0))
		then
			triplet[$i]="(head-head-head)  "
			((hhh++))
		elif(($coin1==1 && $coin2==0 && $coin3==0))
                then
                        triplet[$i]="(tail-head-head)  "
                        ((thh++))
		elif(($coin1==0 && $coin2==1 && $coin3==0))
                then
                        triplet[$i]="(head-tail-head)  "
                        ((hth++))
		elif(($coin1==0 && $coin2==0 && $coin3==1))
                then
                        triplet[$i]="(head-head-tail)  "
                        ((hht++))
		elif(($coin1==0 && $coin2==1 && $coin3==1))
                then
                        triplet[$i]="(head-tail-tail)  "
                        ((htt++))
		elif(($coin1==1 && $coin2==0 && $coin3==1))
                then
                        triplet[$i]="(tail-head-tail)  "
                        ((tht++))
		elif(($coin1==1 && $coin2==1 && $coin3==0))
                then
                        triplet[$i]="(tail-tail-head)  "
                        ((tth++))
		elif(($coin1==1 && $coin2==1 && $coin3==1))
                then
                        triplet[$i]="(tail-tail-tail)  "
                        ((ttt++))
		fi
	done
echo ${triplet[@]}
echo "head-head-head count and percentage: " $hhh $(($hhh/$i*100))|bc
echo "tail-head-head count and percentage: " $thh $(($thh/$i*100))|bc
echo "head-tail-head count and percentage: " $hth $(($hth/$i*100))|bc
echo "head-head-tail count and percentage: " $hht $(($hht/$i*100))|bc
echo "head-tail-tail count and percentage: " $htt $(($htt/$i*100))|bc
echo "tail-head-tail count and percentage: " $tht $(($tht/$i*100))|bc
echo "tail-tail-head count and percentage: " $tth $(($tth/$i*100))|bc
echo "tail-tail-tail count and percentage: " $ttt $(($ttt/$i*100))|bc
