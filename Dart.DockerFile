FROM ubuntu
# v10
RUN apt-get update && apt-get install -y curl
RUN apt-get update
RUN apt-get upgrade -y
RUN apt install -y apt-utils
RUN apt-get update
RUN apt install -y wget
RUN apt-get update
RUN apt install -y net-tools
RUN apt-get update
RUN apt-get install -y apt-transport-https
RUN apt-get update
RUN apt-get install -y gnupg
RUN apt-get update
RUN apt-get install -y gnupg1
RUN apt-get update
RUN apt-get install -y gnupg2
RUN apt-get update
RUN sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
RUN sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
# Install dart
RUN apt-get update
RUN apt-get install dart
RUN export PATH="$PATH:/usr/lib/dart/bin"
# Setting up the development environment
RUN useradd -ms /bin/bash -d /home/dev dev
USER dev
# Setting up the workspace
RUN mkdir /home/dev/workspace
WORKDIR /home/dev/workspace
CMD [ "tail", "-f", "/dev/null" ]