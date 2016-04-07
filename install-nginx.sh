cd
NPS_VERSION=1.10.33.6
wget https://github.com/pagespeed/ngx_pagespeed/archive/release-${NPS_VERSION}-beta.zip -O release-${NPS_VERSION}-beta.zip
unzip release-${NPS_VERSION}-beta.zip
cd ngx_pagespeed-release-${NPS_VERSION}-beta/
wget https://dl.google.com/dl/page-speed/psol/${NPS_VERSION}.tar.gz
tar -xzvf ${NPS_VERSION}.tar.gz  # extracts to psol/



cd
# check http://nginx.org/en/download.html for the latest version
NGINX_VERSION=1.9.12
wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz
tar -xvzf nginx-${NGINX_VERSION}.tar.gz
cd nginx-${NGINX_VERSION}/
./configure --add-module=$HOME/ngx_pagespeed-release-${NPS_VERSION}-beta \
  --prefix=/usr/local/share/nginx --conf-path=/etc/nginx/nginx.conf \
  --sbin-path=/usr/local/sbin --error-log-path=/var/log/nginx/error.log \
  --http-log-path=/var/log/nginx/access.log \
  --with-http_stub_status_module --with-http_ssl_module --with-http_v2_module

make
sudo make install
