FROM alpine

LABEL "repository"="http://github.com/doapply/repo-sync"
LABEL "homepage"="http://github.com/doapply/repo-sync"
LABEL "maintainer"="Wei He <connect@doapply.me>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
