# Gebruik een basis image met Apache
FROM ubuntu:20.04

# voorkom interactieve prompts bij installaties
ENV DEBIAN_FRONTEND=noninteractive

# Update + Apache installeren
RUN apt update && apt install -y apache2

COPY html/ /var/www/html/

RUN date > /var/www/html/buildtime.txt

EXPOSE 80

CMD service apache2 start && tail -f /dev/null
