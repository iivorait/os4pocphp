FROM php:7.4.4-apache
COPY src/ /var/www/html/
RUN sed -i "s/Listen 80/Listen 8080/g" /etc/apache2/ports.conf && \
	sed -i "s/:80/:8080/g" /etc/apache2/sites-enabled/000-default.conf