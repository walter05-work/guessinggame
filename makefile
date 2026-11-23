.PHONY: all

all:
	printf '# Guessing Game\n\n' > README.md
	printf 'Date de generation : %s\n\n' "$$(date '+%Y-%m-%d %H:%M:%S %Z')" >> README.md
	printf 'Nombre de lignes dans guessinggame.sh : %s\n' "$$(wc -l < guessinggame.sh)" >> README.md