FROM alpine

LABEL "name"="RPM Rebuild"
LABEL "description"=""
LABEL "maintainer"="Kitsune Solar <kitsune.solar@gmail.com>"
LABEL "repository"="https://github.com/pkgstore/github-action-rpm-rebuild.git"
LABEL "homepage"="https://pkgstore.github.io/"

COPY *.sh /
RUN apk add --no-cache bash curl

ENTRYPOINT ["/entrypoint.sh"]
