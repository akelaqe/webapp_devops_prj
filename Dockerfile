FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 wget unzip zip
WORKDIR /var/www/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip
RUN unzip neogym.zip
RUN cp -rvf neogym-html/* .
RUN rm -rf neogym-html neogym.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
