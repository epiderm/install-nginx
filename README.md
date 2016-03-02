# Install script of nginx

This script downloads and installs nginx with ngx-pagespeed plugin.

## Prerequisites

This script uses *wget*, *unzip*, *make* commands and *gcc* and *g++* compiler.

Nginx also uses 
- pcre library :
        
      apt-get install libpcre3 libpcre3-dev

- zlib library :
       
      apt-get install zlibc zlib1g zlib1g-dev

You have to install them if they are missing.

## Command

     ./install-nginx.sh


## Next steps

Nginx configuration (see /etc/nginx/nginx.conf)

