url="https://alcasar.laplateforme.io/intercept.php"

challenge=`curl -X GET $url -L | grep "challenge" | awk '{print $4}' | awk '{print $2}' FS='"'`
echo $challenge
 
curl -X POST $url -H 'Content-Type: multipart/form-data' -F "challenge=$challenge" -F "userlurl=http://www.gstatic.com/generate_204" -F "username=$1" -F "password=$2" -F "button=Authentication" -L

