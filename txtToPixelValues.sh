#!/bin/bash

thisFile=$1;

filename=`basename "$thisFile" | sed 's/.txt//g'`;

fileText=`cat "$thisFile" | tail -n 1024`;

while read -r thisLine; do

	# Column number
	thisColumn=`echo "$thisLine" | cut -d ',' -f 1`;

	# Row number
	thisRow=`echo "$thisLine" | cut -d ':' -f 1 | cut -d ',' -f 2`;

	# Pixel hex value
	pixelValue=`echo "$thisLine" | cut -d '#' -f 2 | cut -d ' ' -f 1`;

	# Station data to HTML
	echo "$filename" >> /Users/peter/Desktop/EveryIcon/pixelValues/"$thisColumn"/"$thisRow"/"$pixelValue".txt;
	
done <<< "$fileText"

