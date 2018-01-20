all: README.md

README.md:
	echo "# This is a GUESSINGGAME project" > README.md
	echo "\n## Task was given at Coursera.org at course [The Unix Workbench](https://www.coursera.org/learn/unix)" >> README.md
	echo "\n1. The date and time at which make was run:" >> README.md
	date "+%Y-%m-%d %H:%M:%S" >> README.md
	echo "\n2. The number of lines of code contained in guessinggame.sh is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "\n\nThis file was generated with Markdown style from makefile." >> README.md
	echo "\n@VladimirNikiforov" >> README.md

clean:
	rm README.md

