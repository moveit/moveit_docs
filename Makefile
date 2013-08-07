DOXYFILE=Doxyfile
DOXYGEN=doxygen
SOURCE=webpage

all:	doc

doc:	$(DOXYFILE)
	rm -rf $(SOURCE)/generated
	$(DOXYGEN) $(DOXYFILE)
	$(SOURCE)/mkdocs.sh $(SOURCE)/generated

groovy:	doc
	cd $(SOURCE) && ./copy_page.sh groovy

hydro:	doc
	cd $(SOURCE) && ./copy_page.sh hydro

page:	hydro

clean:
	rm -rf $(SOURCE)/generated

.PHONY:	doc
