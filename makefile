all: readme.txt

readme.txt:
	echo "The title of the project:" `basename `pwd``> README.md
	echo "\n-------------------------" >> README.md
	echo "The date and time at which make was run:" >> README.md
	date "+%Y_%m_%d %H:%M:%S" >> README.md
	echo "\n-------------------------" >> README.md
	echo "The number of lines of code contained in guessinggame.sh:" >> README.md
	cat guessinggame.sh|wc -l >> README.md
	echo "\n-------------------------" >> README.md
