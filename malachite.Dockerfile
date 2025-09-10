FROM rust:1-slim

RUN apt update -y && \
    apt install -y \
        bash \
        bash-completion \
        protobuf-compiler \
        python3 \
        iproute2 \
        procps \
        build-essential \
        librust-tikv-jemalloc-sys-dev && \
    echo 'set editing-mode emacs' >> /etc/inputrc && \
    echo '[[ $PS1 && -f /etc/bash_completion ]] && . /etc/bash_completion' >> /etc/bash.bashrc

SHELL [ "/bin/bash", "-c" ]
