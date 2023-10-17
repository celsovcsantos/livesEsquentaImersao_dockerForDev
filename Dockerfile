FROM node:20-slim

#nest precisa para não travar a execução da aplicação
RUN apt update -y && apt install -y procps

RUN npm install -g npm@10.2.0

#node - ID 1000 (equivale ao usuário local, por conta de permissões)
USER node

WORKDIR /home/node/app

# COPY --chown=node:node package*.json ./

# RUN npm install

#tail - mantém o container rodando
CMD [ "/home/node/app/.docker/start.sh" ]