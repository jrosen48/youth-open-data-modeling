FROM itzg/minecraft-server

ENV EULA "TRUE"
ENV TYPE "SPIGOT"
ENV VERSION "1.12.2"

USER root

RUN apk update && \
    apk add python3-dev python3 alpine-sdk && \
    pip3 install https://github.com/py3minepi/py3minepi/archive/master.zip jupyterlab

RUN mkdir -p /opt && \
    cd /opt && \
    wget https://github.com/zhuowei/RaspberryJuice/raw/master/jars/raspberryjuice-1.11.jar

# minecraft server
EXPOSE 25565
# jupyter lab server
EXPOSE 8000

COPY server.sh /server.sh

USER minecraft

ENTRYPOINT /server.sh
