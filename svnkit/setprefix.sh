#! /bin/sh

files="";
files="${files} src/bin/svnkit";
files="${files} src/etc/inetd.conf.svnserve";
files="${files} src/etc/svnadmin.bsdpasswd";
files="${files} src/etc/default-svnserve.conf";
files="${files} src/svn-dotprofile";
files="${files} Makefile";
files="${files} svnkit.txt";

substfile() {

	# @SVNADMIN_HOME@ # eg. where svnadmin user homedir is
	# @DESTPREFIX@ # e.g. usr/local /usr/pkg /usr, etc.
	# @SVN_REALM@ # svn realm name configured - default `hostname`? 
	sed	-e 's:@SVNADMIN_HOME@:$SVNADMIN_HOME:g' \
		-e 's:@DESTPREFIX@:$DESTPREFIX:g' \
		-e 's:@SVN_REALM@:$SVN_REALM:g' \
	${1}.in
}

for f in $files; do
	substfile $f;
done

