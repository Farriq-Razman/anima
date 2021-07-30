#!/bin/bash
date=$(date +%Y-%m-%d)
#find large files
find -type f -exec du -Sh {} + | sort -rh | head -n 10 > "$date"_rogue_file_result.txt

sleep 5

#send mail
cat "$date"_rogue_file_result.txt | ssmtp alert@animapoint.net