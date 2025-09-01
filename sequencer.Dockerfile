FROM rust:1-slim

RUN apt-get update && apt-get install -y bash bash-completion python3 iproute2 procps libssl-dev librust-tikv-jemalloc-sys-dev librust-clang-sys-dev pkg-config zstd lld && \
    echo 'set editing-mode emacs' >> /etc/inputrc && \
    echo '[[ $PS1 && -f /etc/bash_completion ]] && . /etc/bash_completion' >> /etc/bash.bashrc

SHELL [ "/bin/bash", "-c" ]
