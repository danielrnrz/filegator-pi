#!/bin/bash
docker run -d -ti -p 8050:80 -p 8051:443 -v /home/pi/filegator/:/var/www/html --name filegator filegator
