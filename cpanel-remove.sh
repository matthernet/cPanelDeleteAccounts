#!/bin/bash

if [ -f $1 ]; then
        for i in `cat $1`;do
                owner="$(/scripts/whoowns $i)"
		/scripts/suspendacct $owner
		/scripts/killacct --user=$owner --killdns --force
        done
else
        echo "Please select a file"
fi
