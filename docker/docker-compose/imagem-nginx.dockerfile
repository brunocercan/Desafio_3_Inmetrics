FROM nginx:1.20.1
LABEL maintainer="Bruno Cercan"
ENV PORT=80
RUN apt-get update && apt-get install nano
COPY /nginx/default.conf /etc/nginx/conf.d
WORKDIR /etc/nginx/conf.d
EXPOSE $PORT