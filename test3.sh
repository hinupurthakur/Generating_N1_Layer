filename=$1
#folder_no=$2
i=1
echo $i
END=`wc -l $1 | awk '{print $1}'`
#END=67
echo $END
END=`expr $END + 1`
#for i in $(seq 1 $END)
while [ "$i" -lt $END ]
	do
		
		echo "2."$i
		python2.7 $HOME_alignment/working_debug/eng_lwg.py $filename "2."$i
		#source activate py3.6
		python3.6 $HOME_alignment/working_debug/All_Resources.py $filename "2."$i
		python3.6 $HOME_alignment/working_debug/Create_potential_and_current_anchors.py $filename "2."$i
		#conda deactivate
		i=`expr $i + 1`
	done
	
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

