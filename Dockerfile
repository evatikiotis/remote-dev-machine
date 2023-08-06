# Dockerfile

FROM vaggelas/remote-machine-base:12.0
# install packages

RUN useradd devu
VOLUME /home/devu/projects

COPY projects /home/devu/projects
# Define the projects directory as a volume
RUN chown -R devu:devu /home/devu
RUN chmod -R u+rwx /home/devu
USER devu
WORKDIR /home/devu

CMD ["/bin/bash"]