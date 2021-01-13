# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gsanz-sz <gsanz-sz@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/13 16:58:18 by gsanz-sz          #+#    #+#              #
#    Updated: 2021/01/14 00:16:33 by gsanz-sz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Indicando que o OS - Debian
FROM debian:buster

#Instalando atualizações no Debian e WGET
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y --no-install -recommends apt-utils
RUN apt-get -y install wget aptitude

#Instalando SSL
RUN apt-get -y install openssl

#Instalando MySQL
RUN apt-get -y install mariadb-server 

#Instalando Nginx
RUN apt-get -y install nginx

#Instalando PHP
RUN apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php7.3-gmp php7.3-curl php7.3-intl php7.3-mbstring php7.3-xmlrpc php7.3-gd php7.3-xml php7.3-cli php7.3-zip php7.3-soap php7.3-imap
