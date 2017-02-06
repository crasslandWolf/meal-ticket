# pull code
git pull origin master

npm i
cd app
npm i
cd ..
cd www
npm i
cd ..

# run server
cd www
export NODE_ENV="production"
export PORT=4004
pm2 start ./bin/www --name ticket-api
cd ..

# build app
cd app
npm run build
rsync -a --delete dist/ dist-prod/
cd ..
