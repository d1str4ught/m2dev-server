#!/bin/bash

if [ "$1" == "-c" ]; then
	param="-c"
fi

(sed -n 's/\.\./#/g;s/gameforg[.a-z0-9_]\+/\
(&)\
/gp' *.quest | sed -n 's/(\(gameforge[.a-z0-9_]\+\))/\1/p') | sort | uniq $param | sort -n
