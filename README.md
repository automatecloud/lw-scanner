# lw-scanner
Lacework inline scanner inside a docker container

# usage

make sure you did create a data and log folder at /tmp/lw-scanner/logs and /tmp/lw-scanner/data that will be mapped inside the container. If you want to use different folders please change the mapping and parameters of the lw-scanner-docker.sh command.

you can use the wrapper bash script lw-scanner-docker.sh. Simply start it with

```
./lw-scanner-docker.sh -i <IMAGETOSCAN> -t <TAGOFIMAGETOSCAN> -a <ACCOUNTNAME> -p <ACCOUNTTOKEN>
```
