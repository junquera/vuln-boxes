read i
echo "Looking for 10 words starting with" $i
grep -E '^'"$i" words.txt | tail -n 10
