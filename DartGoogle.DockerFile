FROM google/dart


# Setting up the development environment
RUN useradd -ms /bin/bash -d /home/dev dev
USER dev
# Setting up the workspace
RUN mkdir /home/dev/workspace
WORKDIR /home/dev/workspace

CMD [ "tail", "-f", "/dev/null" ]