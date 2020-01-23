FROM yao11/cuda-devel:ubuntu-with-ssh


RUN apt-get update && apt-get install -y git zsh build-essential cmake vim htop

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN chsh -s /usr/bin/zsh

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    echo "export PATH=/opt/conda/bin:$PATH" >> ~/.zshrc

COPY . /env
COPY ./.condarc /home/root/.condarc
RUN ls -lh /env


RUN /opt/conda/bin/conda env create -f /env/zhou.yml
RUN /opt/conda/bin/conda clean -a