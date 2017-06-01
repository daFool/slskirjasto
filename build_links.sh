#!/bin/bash -x
srcdir="../slskirjasto.redhat"
hakemistot="web twig_templates"
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
mkdir web/cache
setfacl -d -m user:apache:rwx web/cache
setfacl -m user:apache:rwx web/cache
chcon -Rv --type=httpd_sys_rw_content_t web/cache/
#for i in `cat files.txt`; do
#	rm $i;
#	ln $srcdir/$i .
#done;
