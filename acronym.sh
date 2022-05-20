# Acronym Finder
#
# try to find appropriate acronyms from the given list

# if no argument -> print usage
if [ -z "$1" ]; then
	echo "    Usage: $0 [abbreviation]"
	exit
fi

# dico path
dico="dictionary.txt" # UPDATE HERE: PATH TO DICTIONARY

# iterate on lines to find and print suitable acronym(s) 
while read l; do
	if echo "$l" | cut -d " " -f1 | grep -iqF ${1}; then
		echo $l
		found=true
	fi
done <"$dico"

# if no acronym was found
if [ "$found" != true ]; then
	echo "Unknown acronym :("
	exit
fi

