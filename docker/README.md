See [server instructions](server.md) on how to setup server
See [client instructions](client.md) on how to setup minecraft client

# Introduction

Knoxville has a ton of open data that they are beginning to publish
([knoxville opendata](http://knoxvilletn.gov/government/opendata/),
[metropolitan planning
commision](https://knoxmpc.org/locldata/ldevhome.htm). Much of this
data is geographic in formats such as
[geojson](http://geojson.org/). We would like to have a way to readily
present this data to a students allowing them to explore and gain
insights from the data. One idea is to use minecraft to present this
data.

The traditional approach is to integrate Python with a Minecraft
server. Allowing the students to execute arbitrary Python code on the
server. This allows them to modify the world around them and create
games within a game.

Several approaches were explored.

1. Client side python api [PyCraft](https://github.com/ammaraskar/pyCraft)
  - not feature complete cannot place blocks yet
  - performance issues from commands being executed client side
2. Server side python api 
  - August 2016 video demonstration, [pycon talk](https://youtu.be/WwKkA9YV1K8)
  - [Rasberry Juice Plugin](https://dev.bukkit.org/projects/raspberryjuice) 
    - [github repository](https://github.com/zhuowei/RaspberryJuice) 
    - [documentation](https://www.stuffaboutcode.com/p/minecraft.html)
  - Regular Minecraft server

# Server Side Python API

Server side python api seem like the clear winner. Here are a list of implemented commands.

 - world.getBlock
 - world.getBlockWithData
 - world.setBlock
 - world.setBlocks
 - world.getPlayerIds
 - chat.post
 - events.clear
 - events.block.hits
 - player.getTile
 - player.setTile
 - player.getPos
 - player.setPos
 - world.getHeight
 - entity.getTile
 - entity.setTile
 - entity.getPos
 - entity.setPos
 - getBlocks(x1,y1,z1,x2,y2,z2) has been implemented
 - getDirection, getRotation, getPitch functions - get the 'direction' players and entities are facing
 - getPlayerId(playerName) - get the entity of a player by name
 - pollChatPosts() - get events back for posts to the chat

Example that will create a rainbow in game.

```python
import mcpi.minecraft as minecraft
import mcpi.block as block
from math import *

colors = [14, 1, 4, 5, 3, 11, 10]

mc = minecraft.Minecraft.create()
height = 60

mc.setBlocks(-64,0,0,64,height + len(colors),0,0)
for x in range(0, 128):
        for colourindex in range(0, len(colors)):
                y = sin((x / 128.0) * pi) * height + colourindex
                mc.setBlock(x - 64, y, 0, block.WOOL.id, colors[len(colors) - 1 - colourindex])
```

![minecraft rainbow](https://i.imgur.com/3SFrE.png)

