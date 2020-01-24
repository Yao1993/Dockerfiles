From yao11/cuda-devel:ubuntu-with-ssh

RUN apt-get update && apt-get install -y git zsh build-essential cmake vim htop

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN chsh -s /usr/bin/zsh