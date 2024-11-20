Montar SSH que solo haga prompt de algo, pero que se pueda bypasear, y saltar a otro segmento de red.

ssh admin:monkey@localhost con sudo

sudo da acceso a /etc/shadow

Con /etc/shadow saco passwd de root, y me conecto a segunda máquina

# Example: https://stackoverflow.com/questions/21383806/how-can-i-force-ssh-to-accept-a-new-host-fingerprint-from-the-command-line
