#!/bin/bash

find ./ -type f -name "project_resource\[[0-9]*]_dev\.yaml" |

while read line; do 
	echo $line | awk -F / '{print $NF}' >> rezultat
	mv $line "$(echo "$line" | sed s/dev/prod/)"
	echo $line | awk -F / '{print $NF}' | sed s/dev/prod/ >> rezultat
done

cat rezultat |  xargs -n2 | awk {'print $1","$2'} > final

echo "pogledaj fajl \"final\" na trenutnoj putanji"
