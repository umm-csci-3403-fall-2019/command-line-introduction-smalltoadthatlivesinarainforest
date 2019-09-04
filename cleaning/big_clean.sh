#!/bin/bash

DIR_NAME=$1
TMP_DIR=$2
HERE=$(pwd)

# need tar there is a flag for this that helps with cleaner extraction
tar -zxf $DIR_NAME --directory $TMP_DIR

# should remove all files that contain DELETE ME!
grep -lr "DELETE ME!" $TMP_DIR | xargs rm -fr

#create directory for the clean files labeled as clean
#mkdir -p "cleaned_$DIR_NAME"

cd $TMP_DIR

#extract files from temp to cleaned big dir
tar -zcf "$HERE"/"cleaned_$DIR_NAME"

#remove temp dir
#rm -rf $TMP_DIR
