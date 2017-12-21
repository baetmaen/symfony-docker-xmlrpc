FROM jakubsacha/symfony-docker:php7 
RUN apt-get update && apt-get install -y libxml2-dev && docker-php-ext-install -j$(nproc) xmlrpc && apt-get remove libxml2-dev -y && apt-get autoremove -y&& rm -rf /var/lib/apt/lists/*
