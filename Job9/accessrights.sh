

while IFS="," read -r prenom mdp role 
do
        case $role in
        "Admin"*)sudo useradd  $prenom 
                 sudo usermod -aG sudo $prenom ;;
        "User"*) sudo useradd  $prenom  ;;
        esac
done < <(cut -d "," -f2,4,5 Shell_Userlist.csv | tail -n +2)

