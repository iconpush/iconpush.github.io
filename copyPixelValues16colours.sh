#!/bin/bash

theseColours=("FFFFFF" "FBF305" "FF6403" "DD0907" "F20884" "4700A5" "0000D3" "02ABEA" "1FB714" "006412" "562C05" "90713A" "C0C0C0" "808080" "404040" "000000");

for thisColour in "${theseColours[@]}"
do
	
	for ((currentColumn=0; currentColumn<=31; currentColumn++));
	do

		for ((currentRow=0; currentRow<=31; currentRow++));
		do
			
			thisFilename="$currentColumn/$currentRow/$thisColour";
			thisFilename+="FF.txt";
			
			if [ -f "pixelValues_all/$thisFilename" ]; then
			    cp "pixelValues_all/$thisFilename" "pixelValues_16colours/$thisFilename";
			fi
			
		done
	
	done
	
done
