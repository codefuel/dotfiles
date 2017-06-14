#!/bin/bash

for source in `find . -name '*symlink*'`
do
 	srcPath=`echo $source | sed -r "s/^(\.\/\w+\/)(.+)?\.symlink$/\1/"`
 	file=`echo $source | sed -r "s/^(\.\/\w+\/)(.+)?\.symlink$/\2/"`
	srcFile=$file.symlink
	dotfile="$HOME/.$file"

echo $dotfile
	# Make backup
	if [ -f $dotfile ]; then
		echo "Making backup of " $dotfile "..."
		datetime=`date +%Y%m%d%H%M%S`
		`cp -r $dotfile $dotfile.$datetime`
	fi

	# Copy
	if [ -d $source ]; then
		echo 'Copy directory ...'
		`cp -rf $srcPath$srcFile $dotfile/`
	else
		echo 'Copy file ...'
		`cp -rf $srcPath$srcFile $dotfile`
	fi
done

