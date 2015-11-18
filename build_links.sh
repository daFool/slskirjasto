#!/bin/bash -x
srcdir="../slskirjasto.redhat"
hakemistot="helpers json model sql vendor view css img"
for i in $hakemistot;do 
	rm -rf $i;
	a=$srcdir/$i
	for j in `find $a -type d -print`; do
		b=${j/$a/$i}		
		mkdir $b;
	done
	for j in `find $a -type f -print`; do
		b=${j/$a/$i}
		ln $j $b
	done;
done
for i in `cat files.txt`; do
	rm $i;
	ln $srcdir/$i .
done;
