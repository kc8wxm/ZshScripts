#! /bin/sh

# Match an egrep(1)-like pattern against a collection of
# word lists.
#
# Usage:
#       puzzle-help egrep-pattern [word-list-files]

FILES="
    /usr/dict/words
    /usr/share/dict/words
    /usr/share/lib/dict/words
"
pattern="$1"

egrep -h -i "$pattern" $FILES 2> /dev/null | sort -u -f
