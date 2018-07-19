# Building the Simplest Minecraft Server

Base image will be from https://hub.docker.com/r/itzg/minecraft-server/.

Runing the most basic minecraft server can be done with the following
command.

```bash
docker run -d -it -e EULA=TRUE -p 25565:25565 --name mc itzg/minecraft-server
```

This starts a minecraft server runing as a docker process on your
machine. This minecraft has no plugins and starts from a random
seed. Run `docker ps` to check that the minecraft server is running.

```
CONTAINER ID        IMAGE                   COMMAND             CREATED             STATUS                    PORTS                                 NAMES
e652e379701c        itzg/minecraft-server   "/start"            34 minutes ago      Up 34 minutes (healthy)   0.0.0.0:25565->25565/tcp, 25575/tcp   mc
```

# Minecraft Python Server

We will be running a Bukkit/Spigot server (no clue what this means).

```bash
docker run -d -v $PWD/data/:/data \
        -e TYPE=SIGOT -e VERSION=1.8 \
        -p 255565:25565 -e EULA=TRUE --name mc itzg/minecraft-server
```


