DOXYFILE=Doxyfile
DOXYGEN=doxygen

all:	doc

doc:	$(DOXYFILE)
	rm -rf html
	$(DOXYGEN) $(DOXYFILE)

website:doc
	./copy_docs_by_dav_mount.sh html

.PHONY:	doc
