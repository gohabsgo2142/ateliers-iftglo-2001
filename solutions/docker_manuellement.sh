# On valide que neofetch n'est pas installe
# La commande suivante devrait lancer une erreur, ne pas installer le package
neofetch

# Dossier pour les conteneurs
mkdir ~/containers; cd ~/containers

# Construit le systeme de fichier du conteneur
sudo apt update; sudo apt install -y debootstrap
sudo debootstrap jammy ./ubuntu-container http://archive.ubuntu.com/ubuntu/

# Cree un environnement isole (namespace)
sudo unshare --uts --pid --mount --ipc --fork

# Monter les dossiers de processus, systeme, les devices et les ppa
mount -t proc none ./ubuntu-container/proc/
mount -t sysfs none ./ubuntu-container/sys
mount -o bind /dev ./ubuntu-container/dev
mount -o bind /tmp ./ubuntu-container/tmp/
cp /etc/apt/sources.list ./ubuntu-container/etc/apt/sources.list

# On utilise chroot pour lancer une Shell dans le conteneur
chroot ./ubuntu-container/ /bin/bash
# et voila, on est dans un conteneur isole

# On installe neofetch
apt update
apt install -y neofetch

# On teste neofetch, la commande fonctionne!
neofetch

# On quitte le conteneur
exit

# On quitte le unshare
exit

# Si on essait neofetch a nouveau, la commande n'est pas trouvee.
# On a donc bien isole le conteneur!
neofetch
