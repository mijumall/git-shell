FROM ubuntu:22.04
SHELL ["/bin/bash", "-c"]

WORKDIR /space

RUN apt update && apt full-upgrade -y && apt install -y git vim less man-db 

RUN yes | unminimize

COPY .gitconfig /root/
COPY .ssh/ /root/.ssh/

CMD ["git", "help"]
