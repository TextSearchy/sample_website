#!/bin/sh

##################################################
##################################################
# 												 #
# 	  Copyright (c) 2016, TextSearchy Team		 #
# 			 All rights reserved.				 #
# 												 #
# 	TextSearchy core_engine Script alpha - v0.1	 #
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

TARGET_STR=$1
TARGET_FILE=$(cat recents)
CONVERTED_SAVE="$WORKING_DIR/converted"
java -jar $CORE_ENGINE "$TARGET_STR" "$TARGET_FILE"