#!/bin/bash

if [ -z $VTR_TEST ]; then
	echo "Missing $$VTR_TEST value"
	exit 1
fi

if [ -z $MAX_CORES ]; then
	echo "Missing $$MAX_CORES value"
	exit 1
fi

echo $PWD
pwd
pwd -L
pwd -P
cd $(realpath $(pwd))
echo $PWD
pwd
pwd -L
pwd -P
./run_reg_test.pl $VTR_TEST -show_failures -j$MAX_CORES
