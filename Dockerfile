# Dockerfile
# base image
FROM ubuntu:22.04
# install packages
RUN apt-get update && \
    apt install -y git && \
    apt install -y maven && \
    apt-cache search openjdk | grep openjdk-17 && \
    apt install -y openjdk-17-jre && \
    apt install -y openjdk-17-jdk 

RUN useradd -ms /bin/bash devu
USER devu
    
CMD [ "/bin/bash" ]