DOXYFILE=Doxyfile
DOXYGEN=doxygen

all:	doc

doc:	$(DOXYFILE)
	rm -rf webpage/generated
	$(DOXYGEN) $(DOXYFILE)

page:	doc
	./copy_docs_by_dav_mount.sh webpage

clean:
	rm -rf webpage/generated

.PHONY:	doc
