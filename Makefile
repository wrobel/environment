SUBMODULES=horde-glue        \
           kolab/kolab-cvs   \
           latex/book-gentoo \
           tools/pardalys    \
           tools/topgit

.PHONY:update
update:
	@PWD=`pwd`;                      \
	for MODULE in $(SUBMODULES);     \
	do                               \
	  cd $$MODULE;                   \
	  STATUS=`git status | grep "nothing to commit (working directory clean)"`; \
	  if [ -z "$${STATUS}" ]; then    \
	    echo "$${MODULE} is not clean. Cannot update!" && exit 1; \
	  fi;                            \
	  BRANCH=`git branch | grep "^\* master$"`; \
	  if [ -z "$${BRANCH}" ]; then    \
	    echo "$${MODULE} is not set to master. Cannot update!" && exit 1; \
	  fi;                            \
	  cd $$PWD;                      \
	done
	@PWD=`pwd`;                      \
	for MODULE in $(SUBMODULES);     \
	do                               \
	  cd $$MODULE;                   \
	  git pull origin master;        \
	  cd $$PWD;                      \
	done

.PHONY:setup
setup:
	for MODULE in $(SUBMODULES);     \
	do                               \
	  git submodule init $$MODULE;   \
	  git submodule update $$MODULE; \
	done
	cd tools/topgit; git remote add topgit  git://repo.or.cz/topgit.git || echo "Remote exists"
	make -C horde-glue setup
