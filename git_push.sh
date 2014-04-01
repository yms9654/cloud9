echo "Username: "
read username
echo "Passsword: "
read password
url=`git config --get remote.origin.url`
echo $url
url=${url/http:\/\//http:\/\/$username:$password@} 
echo $url
git push $url cloud9