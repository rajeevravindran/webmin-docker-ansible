FROM debian:jessie

ADD webmin-install.sh /tmp
RUN chmod +x /tmp/webmin-install.sh
RUN /tmp/webmin-install.sh
RUN export root_password=$(date +%s | sha256sum | base64 | head -c 32);echo root:$root_password;echo root:$root_password | chpasswd
EXPOSE 10000

CMD touch /var/webmin/miniserv.error && service webmin restart && tail -f /var/webmin/miniserv.error