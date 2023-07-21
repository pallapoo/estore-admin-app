FROM node:latest as build
WORKDIR /usr/local/app
COPY ./ /usr/local/app
RUN npm install -f
RUN npm run build
FROM nginx:latest
COPY --from=build /usr/local/app/dist/admin-dashboard /usr/share/nginx/html
EXPOSE 80