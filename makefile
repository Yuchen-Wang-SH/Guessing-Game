all: clear README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "## Current date: " >> README.md
	date >> README.md
	echo "## Number of lines of guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clear:
	rm README.md
