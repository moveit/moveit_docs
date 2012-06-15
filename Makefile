DOXYFILE=Doxyfile
DOXYGEN=doxygen
DEST=/var/www/moveit/
SOURCE=webpage

all:	doc

doc:	$(DOXYFILE)
	rm -rf webpage/generated
	$(DOXYGEN) $(DOXYFILE)

page:	doc
	cd webpage && ./copy_page.sh

clean:
	rm -rf webpage/generated

.PHONY:	doc
