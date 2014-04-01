url=`git config --get remote.origin.url`
host=${url/\/gitnsam*/}
echo "Username for '$host': "
read username
host=${host/http:\/\//http:\/\/$username@} 
echo "Passsword for '$host': "
read password
url=${url/http:\/\//http:\/\/$username:$password@} 
git push $url cloud9
