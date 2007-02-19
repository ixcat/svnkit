# svnkit makefile
# $Id$
 
ADMINISTRATIVE_USER=svnadmin
BACKUP_USER=svnbackup
DESTDIR=/var/local/apps/svn
MTREEFILE=nbsd.mtree

install: unmtree
	mkdir -p $(DESTDIR);
	chown $(ADMINISTRATIVE_USER):$(ADMINISTRATIVE_USER) $(DESTDIR);
	cd nbsd && find . | cpio -p $(DESTDIR)

mtreefile: $(MTREEFILE)

$(MTREEFILE):
	mtree -c -p nbsd > $(MTREEFILE)

unmtree: $(MTREEFILE)
	cat $(MTREEFILE) |mtree -Up nbsd

