# Dockerfile for running fuzzing tests.
# Used for ASAN.
# Note that when running this, you need to add `--cap-add SYS_PTRACE` to the
# docker invocation or ASAN won't work.
# On taskcluster for ASAN use `features: ["allowPtrace"]`.
# See https://github.com/google/sanitizers/issues/764#issuecomment-276700920
FROM ubuntu:noble-20240605
LABEL maintainer="Martin Thomson <martin.thomson@gmail.com>"

RUN dpkg --add-architecture i386
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    clang \
    clang-tools \
    curl \
    g++-multilib \
    git \
    gyp \
    libclang-rt-dev \
    libssl-dev \
    libssl-dev:i386 \
    libxml2-utils \
    lib32z1-dev \
    linux-libc-dev:i386 \
    llvm-dev \
    locales \
    mercurial \
    ninja-build \
    pkg-config \
    python-is-python3 \
    python3-requests \
    unzip \
    valgrind \
    zlib1g-dev \
 && rm -rf /var/lib/apt/lists/* \
 && apt-get autoremove -y && apt-get clean -y

ENV SHELL /bin/bash
ENV USER worker
ENV LOGNAME $USER
ENV HOME /home/$USER
ENV LANG en_US.UTF-8
ENV LC_ALL $LANG
ENV HOST localhost
ENV DOMSUF localdomain

# Bug 1904395
ENV NSS_DISABLE_NSPR_TESTS 1

RUN locale-gen $LANG \
 && DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales

RUN useradd -d $HOME -s $SHELL -m $USER
WORKDIR $HOME

# Add build and test scripts.
ADD bin $HOME/bin
RUN chmod +x $HOME/bin/*

# Change user.
USER $USER

# Set a default command for debugging.
CMD ["/bin/bash", "--login"]
