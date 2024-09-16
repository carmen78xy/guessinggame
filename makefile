all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Project GuessingGame" >> README.md
	echo "Make is run at $(shell date)" >> README.md
	lines=$(shell wc -l guessinggame.sh | egrep -o "[0-9]+")
	echo "There are $(shell wc -l guessinggame.sh | egrep -o "[0-9]+") lines in guessinggame.sh" >> README.md

clean:
	rm README.md
