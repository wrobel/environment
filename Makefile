SUBMODULES=horde-glue      \
           kolab/kolab-cvs \
           tools/pardalys  \
           tools/topgit

.PHONY:setup
setup:
	for MODULE in $(SUBMODULES);     \
	do                               \
	  git submodule init $$MODULE;   \
	  git submodule update $$MODULE; \
	done
	cd tools/topgit; git remote add topgit  git://repo.or.cz/topgit.git || echo "Remote exists"
	make -C horde-glue setup
