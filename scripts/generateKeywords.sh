#!/bin/sh

# Use the Cosmos documentation to generate all parameters
egrep -h "values: \[(?'.*)\]" data/config/* | sed "s/.*values: \['//g" | sed "s/'\]//g" | sed "s/','/\n/g" | sed "s/', '/\n/g" | sort | uniq | tr '\n' '|'

# Use the Cosmos documentation to generate all keywords
egrep -oh "^([[:upper:]]|_)*" data/config/*.yaml | tr '\n' '|'

