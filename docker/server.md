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

You can see that the server is exposed on `0.0.0.0:25565`. Thus it is
accessible to `localhost:25565` which is how we will access it on the
client. This server is not secured and does not include any of the
plugins that we would like to add.

# Minecraft Python Server

We will be running a Bukkit/Spigot server (no clue what this means).

This [wiki on itzg](https://github.com/itzg/dockerfiles/wiki/Minecraft-Pi) describes
how to get the python server running.

```bash
docker run -d -v $PWD/data/:/data \
        -e TYPE=SIGOT -e VERSION=1.8 \
        -p 255565:25565 -e EULA=TRUE --name mc itzg/minecraft-server
```

Installing python package locally (will cleanup
significantly). Eventually going to be exposed via a jupyter notebook.

```bash
pipenv install
git clone https://github.com/py3minepi/py3minepi.git
pip install .
python
```

```python
from mcpi.minecraft import Minecraft
mc = Minecraft.create("localhost")
mc.postToChat("Hello World!")
```

![proof working](../images/linux-proof-python-api-works.png)

When running the costrouc/minecraft-python-server

```bash
docker run -p 8000:8000 -p 25565:25565 costrouc/minecraft-python-server
```

![proof jupyter lab](../images/linux-proof-jupyter-lab-works.png)
