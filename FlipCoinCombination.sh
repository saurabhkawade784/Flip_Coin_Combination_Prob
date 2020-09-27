#!/bin/bash
#This program display winner head anf tail and their combination problem.
#displaying wecome message
echo "Welcome to flip coin combination problem."
#Variables
Head=1;
Tail=0;
Count_Of_Heads=0;
Count_Of_Tails=0;
#diactionary declaration
declare -A Singlet
declare -A Doublet
for (( i=0; i<=5; i++ ))
do

	Flip_Coin=$((RANDOM%2))
	case $Flip_Coin in
		$Head) Singlet["Heads"]=$((++Count_Of_Heads)) 
		    ;;
		$Tail) Singlet["Tails"]=$((++Count_Of_Tails)) 
		    ;;
		    *) echo  " "
		    ;;
	esac
	((No_Of_Times--))
done
#read dictinaery elements.
for pos in ${!Singlet[@]}
do
	echo "$pos is: ${Singlet[$pos]},"
done

#Doublet=(["HH"]=0 ["HT"]=0 ["TH"]=0 ["TT"]=0)
for ((j=1;j<=5;j++))
do
        flip=$((RANDOM%4))
        case $flip in
                0) x=${Doublet["HH"]}
		   Doublet["HH"]=$((++x))
                	;;
                1)  x=${Doublet["HT"]}
                   Doublet["HT"]=$((++x))
                        ;;
		2) x=${Doublet["TH"]}
                   Doublet["TH"]=$((++x))
                        ;;
                3) x=${Doublet["TT"]}
                   Doublet["TT"]=$((++x))
                        ;;
        esac
done
for index in ${!Doublet[@]}
do
        echo "$index: ${Doublet[$index]},"
done
