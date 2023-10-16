#!/bin/bash

#rm -rf node_modules
#chmod +x .docker/start.sh

npm install

# rodar migrações
#rodar outros comandos
# if [ "$NODE_ENV" == "development" ]; then
#     npm run dev
# else
#     npm run start
# fi

# valida se o arquivo .env existe, se não existir, copia o .env.example para .env
if [ ! -f ".env" ]; then
    cp .env.example .env
fi	

tail -f /dev/null