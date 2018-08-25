ADD entrypoint.sh /entrypoint.sh
ADD server_config.json /v2raybin/config.json
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
