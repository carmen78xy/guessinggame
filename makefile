all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Project GuessingGame \n" >> README.md
	echo "Make is run at $(shell date) \n" >> README.md
	echo "There are $(shell wc -l guessinggame.sh | egrep -o "[0-9]+") lines in guessinggame.sh" >> README.md

clean:
	rm README.md
