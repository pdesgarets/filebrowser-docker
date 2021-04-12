ARG UPSTREAM_VERSION=latest
FROM filebrowser/filebrowser:${UPSTREAM_VERSION}
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

