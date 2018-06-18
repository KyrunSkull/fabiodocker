FROM debian

MAINTAINER Fabio Siqueira <fabiojr2705@gmail.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y php5-fpm

COPY default /etc/nginx/sites-available/default

CMD service nginx start && service php5-fpm start && /bin/bash
