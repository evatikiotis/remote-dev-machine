# Dockerfile

FROM vaggelas/remote-machine-base:11.0
# install packages

RUN useradd devu

USER devu
WORKDIR /home/devu
COPY projects /home/devu/projects

CMD ["/bin/bash"]