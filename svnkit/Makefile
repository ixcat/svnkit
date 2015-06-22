# svnkit makefile
# $Id$
 
SVN_USER=svnadmin
SVN_GROUP=svnadmin
SVN_HOME?=/var/local/svn
MTREEFILE=nbsd.mtree

all:
	@echo "usage: make install - read makefile and svnkit.txt first"

#install: unmtree
#	mkdir -p $(DESTDIR);
#	chown $(ADMINISTRATIVE_USER):$(ADMINISTRATIVE_USER) $(DESTDIR);
#	cd nbsd && find . \! -regex '.*\.svn.*' | cpio -p $(DESTDIR)

install: installhome installbin installetc installdoc

installhome: $(SVN_HOME)

$(SVN_HOME):
	install -d -m 775 -o $(SVN_USER) -g $(SVN_GROUP) $(SVN_HOME)
	install -d -m 750 -o $(SVN_USER) -g $(SVN_GROUP) $(SVN_HOME)/dumps
	install -d -m 750 -o $(SVN_USER) -g $(SVN_GROUP) $(SVN_HOME)/repos
	install -d -m 750 -o $(SVN_USER) -g $(SVN_GROUP) $(SVN_HOME)/archive

installbin: installhome
	install -d -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		$(SVN_HOME)/bin
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/bin/svnshell $(SVN_HOME)/bin/svnshell
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/bin/svnkit $(SVN_HOME)/bin/svnkit
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/svn-dotprofile $(SVN_HOME)/.profile

installetc: installhome
	install -d -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		$(SVN_HOME)/etc
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/etc/inetd.conf.svnserve \
		$(SVN_HOME)/etc/inetd.conf.svnserve
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		svn.services \
		$(SVN_HOME)/etc/svn.services 
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		svnadmin.bsdpasswd \
		$(SVN_HOME)/etc/svnadmin.bsdpasswd
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		svnadmin.group \
		$(SVN_HOME)/etc/svnadmin.group
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		svn.services \
		$(SVN_HOME)/etc/svn.services 
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/etc/passwd $(SVN_HOME)/etc/passwd
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/etc/authz $(SVN_HOME)/etc/authz
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/etc/00HEADER.cron $(SVN_HOME)/etc/00HEADER.cron
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/etc/weekly-full.cron \
		$(SVN_HOME)/etc/weekly-full.cron
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/etc/nightly-incremental.cron \
		$(SVN_HOME)/etc/nightly-incremental.cron
	install -d -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		$(SVN_HOME)/etc/policies
	install -d -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		$(SVN_HOME)/etc/policies/default
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		nbsd/etc/policies/default/svnserve.conf \
		$(SVN_HOME)/etc/policies/default/svnserve.conf

installdoc:
	install -d -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		$(SVN_HOME)/doc 
	install -m 775 -o $(SVN_USER) -g $(SVN_GROUP) \
		svnkit.txt $(SVN_HOME)/doc/svnkit.txt

