# Linux Minecraft Client Instructions

These instructions assume that you have a minecraft server running on
`localhost:25565`. For starting the minecraft server see
[server](server.md). When you run the client you will need to know the
minecraft version of the server. By default it will use the latest
release which is 1.13 as of July 19th. However using the Python Server
will require that the API is version 1.12.2. The docker image runs
`1.12.2`. You will need to [change your profile when you launch the
game](https://stickypiston.co/account/knowledgebase/71/Create-a-Profile-to-connect-to-older-Minecraft-versions-Outdated-Server.html). See
image bellow. Once you have created a `1.12.2` profile you will select
it in the play options.

![Change Client Server Version](../images/linux-minecraft-launch-preferences.png)

## Download and start the minecraft client

```bash
wget https://launcher.mojang.com/download/Minecraft.tar.gz
tar xf Minecraft.tar.gz
cd minecraft-launcher-*
./minecraft-launcher.sh
```

## Login with your `email` and `password`

![Minecraft Client Login](../images/linux-minecraft-login.png)

## Minecraft will begin installation.

![Minecraft Installation](../images/linux-minecraft-client-installation.png)

## Click multiplayer to join a Minecraft Server

![Minecraft Start Screen](../images/linux-minecraft-start.png)

## Click `Direct Connect` and manually connect to `localhost:25565`

![Minecraft Multiplayer Server](../images/linux-minecraft-multiplayer-server.png)

![Minecraft Direct Connect](../images/linux-minecraft-direct-connect.png)

## You are in the game and ready to play!

![Minecraft Playing](../images/linux-minecraft-playing.png)
