#!/bin/bash
#This program display winner head anf tail and their combination problem.
#displaying wecome message
echo "Welcome to flip coin combination problem."
#Variables
Head=1;
Tail=0;
Flip_Coin=$((RANDOM%2))
if [[ $Flip_Coin -eq $Heads ]]
then
	echo "It's head"
else
	echo "It's tails"
fi
