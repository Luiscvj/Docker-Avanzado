FROM nginx:1.21.6

ARG CACHEBUST=1

RUN apt-get update && apt-get -y upgrade

RUN echo '<html><body> Mi pagina de inicio personalizada segunda version </body></html>' > /usr/share/nginx/html/index.html
