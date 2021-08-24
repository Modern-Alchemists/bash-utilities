## view sorted (by number) list of the list, piped through awk, which lists the number of hash occurrences
# Saves the hash-count to hash-count-list.txt
cat nef-sha-hashes.txt | sort -n | awk '{ a[$1]++ } END{ for(x in a) print a[x], x }' | tee hash-count-list.txt