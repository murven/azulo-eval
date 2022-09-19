# Build frontend application
FROM node:16-alpine AS buidler
WORKDIR /app/
COPY . .
RUN ls -la /app/
RUN npm install  && npm run build 

# Setup nginx server for frontend
FROM nginx:stable-alpine AS nginx
COPY --from=buidler /app/dist/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;" ]