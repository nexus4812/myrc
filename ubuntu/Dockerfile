FROM ubuntu:23.04

# Install apt packages
RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends\
    zsh \
    vim \
    procps \
    curl  \
    file  \
    git \
    build-essential

# Use zsh
RUN chsh -s $(which zsh)

# Install brew
RUN bash -c "$(curl brew-fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile && zsh ~/.profile

# copy myrc
COPY vim/.vimrc ~/
COPY shell/ ~/

# install brew packages
COPY brew/brew.txt /tmp/
#RUN cat /tmp/brew.txt | xargs -I {} brew install {}