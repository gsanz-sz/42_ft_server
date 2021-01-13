# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    switch_autoindex.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gsanz-sz <gsanz-sz@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/13 23:58:00 by gsanz-sz          #+#    #+#              #
#    Updated: 2021/01/14 00:06:13 by gsanz-sz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

nginx_file='/etc/nginx/sites-available/default'

grep "autoindex on;" "$nginx_file" > /dev/null
if [ $? -eq 0 ]; then
    sed -i 's/autoindex on/autoindex off/' "$nginx_file"
    autoindex="OFF";
else
    sed -i 's/autoindex off/autoindex on/' "$nginx_file"
    autoindex="ON";
fi
echo "Trocando autoindex e reiniciando o servidor!"
/etc/init.d/nginx restart
echo -e "Autoindex está $autoindex"