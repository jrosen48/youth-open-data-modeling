#!/bin/bash

# run jupyter lab and direct all stdout and stderr to /dev/null
jupyter lab --no-browser --port=8000 --ip="0.0.0.0" --NotebookApp.token='' > /dev/null 2>&1 &

cp /opt/* /plugins/

# run minecraft server
/start
