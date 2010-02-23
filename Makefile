#Makefile do RISO
# bla bla bla
RISOLOCATION := /usr/riso/		#Local dos scripts
BINLOCATION := /usr/bin			#Local do atalho

install: src/riso src/risos conf/riso.conf
	mkdir $(RISOLOCATION)
	cd src
	cp riso $(RISOLOCATION)
	chmod o+x riso
	ln -s riso $(BINLOCATION)/riso
	cp risos $(RISOLOCATION)
	chmod o+x risos
	ln -s risos $(BINLOCATION)/risos
	cd ../conf
	cp riso.conf $(RISOLOCATION)
	chmod o+x riso.conf
	mkdir $(RISOLOCATION)/imagens

clean: install
	rm -rf $(RISOLOCATION)
	rm $(BINLOCATION)/riso
	rm $(BINLOCATION)/risos

