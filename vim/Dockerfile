FROM debian:12.1

RUN apt update -y && \
    apt install -y \
      which \
      man \
      make \
      less \
      vim \
      fzf \
      git \
      fzf \
      bat \
      silversearcher-ag \
      ripgrep \
      && \
    apt clean all

RUN mkdir -p /root/.local/bin && \
    ln -s /usr/bin/batcat /root/.local/bin/bat

ENV PATH /root/.local/bin:$PATH
