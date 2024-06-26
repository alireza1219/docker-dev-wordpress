FROM automattic/wordpress-xdebug:6.4.3

RUN apt-get update && \
    apt-get install -y msmtp nano && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY /configs /