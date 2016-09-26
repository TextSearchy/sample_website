#!/bin/sh

##################################################
##################################################
# 												 #
# 	  Copyright (c) 2016, TextSearchy Team		 #
# 			 All rights reserved.				 #
# 												 #
# 	TextSearchy AI Script alpha - v0.1		     #
# 												 #
##################################################
##################################################

#For Time Calculation
BUILD_START=$(date +"%s")
WORKING_DIR=$(pwd)
ENGINE="$WORKING_DIR/ENGINE"
PDF_TO_TEXT="$ENGINE/pdfConvertor.jar"
CORE_ENGINE="$ENGINE/core_engine.jar"
LIB_DIR="$ENGINE/lib"
SCRIPTS_DIR="$ENGINE/scripts/"

TARGET_PDF="$WORKING_DIR/"$1
FILE_NAME=$(basename $TARGET_PDF)
CONVERTED_SAVE="$WORKING_DIR/converted"
CON_INTERMEDIATE="$CONVERTED_SAVE/$FILE_NAME.intermediate"
CON_FINAL="$CONVERTED_SAVE/$FILE_NAME.txt"

# Start Conversion

if [ ! -d '$CONVERTED_SAVE' ]; then
	mkdir -p $CONVERTED_SAVE
	chown -R $USER $CONVERTED_SAVE
	chmod -R 777 $CONVERTED_SAVE
fi

java -jar $PDF_TO_TEXT "$TARGET_PDF" "$CON_INTERMEDIATE" > /dev/null
python "$SCRIPTS_DIR/ParaToSentence.py" "$CON_INTERMEDIATE" > "$CON_FINAL"
echo "$CON_FINAL" > recents
rm -f $CON_INTERMEDIATE
cat $CON_FINAL
