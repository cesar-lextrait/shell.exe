DATE=$(date +%d-%m-%Y-%H:%M)
fichier=number_connection_$DATE

last cez | wc -l > $fichier

tar -czvf /home/cez/Documents/Shell.exe/Job8/$fichier.tar.gz ./$fichier

mv $fichier.tar.gz /home/cez/Documents/Shell.exe/Job8/Backup

