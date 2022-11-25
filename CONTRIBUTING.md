# CLARIFORM DEVELOPMENT

The development environment is based on [shadow-cljs](https://github.com/thheller/shadow-cljs)
providing hot-loading of the recompiled clariform script.

## START WATCHER

Start a watcher in the background to recompile the script whenever files are changed:

$ `docker-compose up -d watch`

Open a dashboard for the watcher from a web browser (if at first you fail, wait and try again):

$ `open http://localhost:9630/dashboard`

Tip: Don't stop the script from the dashboard.

## RUN SCRIPT

Execute from a terminal to run the development script in a loop (with hotloading):

$ `docker-compose run script --help`

Troubleshooting: If it outputs "shadow-cljs: giving up trying to connect", wait 
a little for the watcher to complete launching, then try again running the script. 

Edit and save any project file to trigger recompilation and execution of script.

$ `docker-compose run script --format=indent src/test/clariform/basic.clar`

$ `docker-compose run script --check src/test/clariform/invalid.clar`

Exit from the execution loop with CTRL-c

## UNIT TESTING 

To run unit testing, execute in the development shell:

$$ `docker compose run test`

## GENERATE EXECUTABLE

To generate an executable:

$$ `docker compose run release`

Execute the generated script:

$ `node clariform.js --help`

## FINISH

Detach from the container with a CTRL-p CTRL-q key sequence.

Use the docker desktop or docker from the command line.