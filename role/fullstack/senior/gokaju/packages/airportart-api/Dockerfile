## stage two, where the app is build
FROM node:16-alpine
WORKDIR /usr
COPY package.json ./
COPY tsconfig.json ./
COPY src ./src
RUN ls -a
RUN npm install
RUN npm run build
## stage two, where the app runs
FROM node:16-alpine
WORKDIR /usr
COPY package.json ./
RUN npm install --only=production
COPY --from=0 /usr/dist .
# install pm2 for serve node app
RUN npm install pm2 -g
EXPOSE 80
CMD ["pm2-runtime","main.js"]