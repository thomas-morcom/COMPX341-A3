npm install
if [ $? -ne 0 ] 
then
    echo Install Failed
    exit
fi
npm run build
if [ $? -ne 0 ] 
then
    echo Build Failed
    exit
fi

if [ $# -eq 0 ]
then 
    echo No commit message was given
    exit
fi
git pull
git add .
git commit -m "$1"
git push

npm run start