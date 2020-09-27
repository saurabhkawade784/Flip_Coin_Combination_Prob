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
declare -A Triplet
for (( i=0; i<=5; i++ ))
do

	Flip_Coin=$((RANDOM%2))
	case $Flip_Coin in
		$Head) Singlet["H"]=$((++Count_Of_Heads)) 
		    ;;
		$Tail) Singlet["T"]=$((++Count_Of_Tails)) 
		    ;;
		    *) echo  " "
		    ;;
	esac
	((No_Of_Times--))
done
#read dictinaery elements.
for pos in ${!Singlet[@]}
do
	echo "$pos: ${Singlet[$pos]},"
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


#Triplet=(["HHH"]=0 ["HHT"]=0 ["HTH"]=0 ["THH"]=0 ["THT"]=0 ["TTH"]=0 ["HTT"]=0 ["TTT"]=0)
for ((k=1;k<=5;k++))
do
        flip=$((RANDOM%8))
        case $flip in
                0) y=${Triplet["HHH"]}
                   Triplet["HHH"]=$((++y))
                        ;;
		1) y=${Triplet["HHT"]}
                   Triplet["HHT"]=$((++y))
                        ;;
		2) y=${Triplet["HTH"]}
                   Triplet["HTH"]=$((++y))
                        ;;
		3) y=${Triplet["THH"]}
                   Triplet["THH"]=$((++y))
                        ;;
		4) y=${Triplet["THT"]}
                   Triplet["THT"]=$((++y))
                        ;;
		5) y=${Triplet["TTH"]}
                   Triplet["TTH"]=$((++y))
                        ;;
		6) y=${Triplet["HTT"]}
                   Triplet["HTT"]=$((++y))
                        ;;
		7) y=${Triplet["TTT"]}
                   Triplet["TTT"]=$((++y))
                        ;;

        esac
done
for index in ${!Triplet[@]}
do
	echo "$index: ${Triplet[$index]},"
done
