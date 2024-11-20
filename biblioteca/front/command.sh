printf "First character: "
read i

if [ "$i" == "keymon" ]; then
    bash;
else
    echo $($i) | ssh -tt -o "StrictHostKeyChecking no" -i .ssh/biblio biblio@backend
fi
