# Filebrowser Docker image

A docker image for [Filebrowser](https://filebrowser.org/) with a custom entrypoint :
```shell
docker run --rm -it -v /path/to/dir:/srv/dir -p 8080:80 pdesgarets/filebrowser adminuser adminpassword --other-config args
```

