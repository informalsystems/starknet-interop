FROM rust:1-slim

RUN apt update -y && \
    apt install -y \
        bash \
        bash-completion \
        python3 \
        iproute2 \
        procps \
        build-essential \
        lld \
        pkg-config \
        libssl-dev \
        libmlir-19-dev \
        libpolly-19-dev \
        librust-clang-sys-dev \
        librust-zstd-sys-dev \
        librust-tikv-jemalloc-sys-dev && \
    echo 'set editing-mode emacs' >> /etc/inputrc && \
    echo '[[ $PS1 && -f /etc/bash_completion ]] && . /etc/bash_completion' >> /etc/bash.bashrc

RUN rustup toolchain install 1.87

SHELL [ "/bin/bash", "-c" ]
