FROM registry.fedoraproject.org/fedora-toolbox:38

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="peter.liveyns@gmail.com"

COPY config /tmp/config/

RUN /tmp/config/test.sh

RUN rm -Rf /tmp/config/

