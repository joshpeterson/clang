FROM ubuntu:bionic
RUN apt-get update -qq
RUN apt-get install -y wget software-properties-common apt-transport-https ca-certificates
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key| apt-key add -
RUN apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-10 main"
RUN apt-get update -qq
RUN apt-get install -y --allow-unauthenticated clang++-10 clang-format-10 clang-tidy-10 cmake ninja-build time git python
RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-10 100
RUN update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-10 100
RUN update-alternatives --install /usr/bin/clang-tidy clang-tidy /usr/bin/clang-tidy-10 100
