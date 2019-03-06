
all: buildout

bin/python:
	virtualenv-2.7 .

bin/buildout: bin/python
	bin/pip install -r requirements.txt


bin/install-links: bin/buildout
	bin/buildout

buildout: bin/install-links

links: bin/install-links
	sudo bin/install-links

cleanall:
	rm -rf bin develop-eggs include lib parts pip-selfcheck.json

