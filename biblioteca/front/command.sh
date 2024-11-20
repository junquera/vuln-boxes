printf "First character: "
read i

if [ "$i" == "keymon" ]; then
    bash;
else
	if [ ${i:0:1} == '$' ]; then
		echo $(${i:2:-1}) | ssh -tt -o "StrictHostKeyChecking no" -i .ssh/biblio biblio@backend;
	else
		echo $i | ssh -tt -o "StrictHostKeyChecking no" -i .ssh/biblio biblio@backend
	fi
fi
