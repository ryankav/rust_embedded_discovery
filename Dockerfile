FROM ubuntu@sha256:31cd7bbfd36421dfd338bceb36d803b3663c1bfa87dfe6af7ba764b5bf34de05;

RUN apt-get update && apt-get install -y \
  curl \
  git \
  gdb \
  curl \
  vim \
  wget 

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh \
  && rustup component add llvm-tools-preview \
  && cargo install cargo-binutils --vers 0.3.3 \
  && cargo install cargo-embed --vers 0.11.0
