#!/bin/bash
# scriptname - a short explanation of the scripts purpose. #
# Copyright (C) <date> <name>... #
# scriptname [option] [argument] ...

language="Python"
echo "I like coding with $language"

# Variable Types
a=5; a+=2;
echo "$a";

declare -i a=5; a+=2; echo "$a";

langRegex='(..)_(..)'
if [[ $LANG = $langRegex ]]
 then
    echo "Your country code (ISO 3166-1-alpha-2) is ${BASH_REMATCH[2]}."
    echo "Your language code (ISO 639-1) is ${BASH_REMATCH[1]}."
else
     echo "Your locale was not recognised"
fi

shopt -s extglob

if [[ $LANG = en* ]]; then
    echo 'Hello!'
elif [[ $LANG = fr* ]]; then
    echo 'Salut!'
elif [[ $LANG = de* ]]; then
    echo 'Guten Tag!'
elif [[ $LANG = nl* ]]; then
    echo 'Hallo!'
elif [[ $LANG = it* ]]; then
    echo 'Ciao!'
elif [[ $LANG = es* ]]; then
    echo 'Hola!'
elif [[ $LANG = @(C|POSIX) ]]; then
    echo 'hello world'
else
    echo 'I do not speak your language.' 
fi