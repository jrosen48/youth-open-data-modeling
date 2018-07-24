# Organizing thoughts on Implementation

Google Cloud using GKE. Will scale up and down servers based on number of users.

# Open Questions

 - how to monitor when players are inactive? 
   - RCON can poll minecraft server for number of connected clients
 - how to snapshot minecraft worlds to safely shutdown world?
   - python api can `mc.saveCheckpoint()` and `mc.restoreCheckpoint()` these will create and restore from most recent checkpoint.
 - how to dynamically add routes to jupyterhub and minecraft apis for each user?
   - ambasador provides an api gateway that would be flexible enough for this.
 - how to dynamically add docker containers for each user on request?
   - kubernetes can allow access to api within docker containers inside of cluster.
