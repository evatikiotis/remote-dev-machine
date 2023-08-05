# Dockerfile

FROM vaggelas/remote-machine-base:11.0
# install packages

RUN useradd -ms /bin/bash devu
USER devu
COPY projects /home/devu/projects
    
CMD [ "/bin/bash" ]