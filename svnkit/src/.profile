#!/bin/sh
# svn-dotprofile: user profile for subversion administrator account
# $Id$

umask 027;
export SVNROOT="/var/local/apps/svn";
export SVNDUMPS="${SVNROOT}/dumps";
export SVNREPOS="${SVNROOT}/repos";

if [ "`uname -s`" = "Linux" ]; then
	BINPATH="/usr/bin:/usr/sbin:";
else
	BINPATH="/usr/pkg/bin:/usr/pkg/sbin:";
fi

export PATH="${BINPATH}:${HOME}/bin:/sbin:/usr/sbin:${PATH}";
export PS1="svn$ "

if [ -t 0 ]; then 
	cat <<EOF

Welcome subversion adminisrator!

You will likely be using the 'svnkit' script - 
  please run it with no arguments to see how it is used.

EOF
fi


