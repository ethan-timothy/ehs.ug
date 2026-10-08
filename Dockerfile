FROM hugomods/hugo:debian-0.165.0 AS build
WORKDIR /src
COPY . .
RUN hugo --minify --destination /public

FROM nginx:1.27.5-alpine
COPY --from=build /public /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
