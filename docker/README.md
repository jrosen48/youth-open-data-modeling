# Building the Minecraft Server

Base image will be from https://hub.docker.com/r/itzg/minecraft-server/.

Runing the most basic minecraft server can be done with the following
command.

```bash
docker run -d -it -e EULA=TRUE -p 25565:25565 --name mc itzg/minecraft-server
```

This starts a minecraft server runing as a docker process on your
machine. This minecraft has no plugins.



We will be running a Bukkit/Spigot server (no clue what this means).

```bash
docker run -d -v $PWD/data/:/data \
        -e TYPE=SIGOT -e VERSION=1.8 \
        -p 255565:25565 -e EULA=TRUE --name mc itzg/minecraft-server
```


