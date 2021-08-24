# Finds *.NEF files in current directory
# Echoes them to 'nef-sha-hashes'.

IFS=$'\n';
# empty nef-sha-hashes.txt file
echo '' > nef-sha-hashes.txt
for img in $( find . -name "*.NEF"); do
  echo `sha1sum $img` >> nef-sha-hashes.txt;
done;