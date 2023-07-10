
with open('~/.bashrc', 'a') as f:
    f.write('export PATH=$PATH:~/.ateliers/ateliers-iftglo-2001/atelier_bash/correction')
    f.write('export PATH=$PATH:~/.local/bin')

with open('~/.gitconfig', 'a') as f:
    f.write('''[user]
    email = glo2001@ulaval.ca
    name = Glo 2001
            ''')
