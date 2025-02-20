# Usar a imagem oficial do Node.js com a versão LTS
FROM node:lts

# Definir o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copiar o package.json e package-lock.json (se existir)
COPY package*.json ./

# Instalar as dependências do projeto
RUN npm install

# Instala o Angular CLI globalmente
RUN npm install -g @angular/cli

# Copiar o restante do código do projeto
COPY . .

# Expor a porta 4200 (porta padrão do Angular)
EXPOSE 4200

# Comando para rodar o servidor de desenvolvimento do Angular
CMD ["npm", "start"]
