FROM yao11/cuda-devel:devel-tools

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    echo "export PATH=/opt/conda/bin:\$PATH" >> ~/.zshrc

COPY ./.condarc ~/.condarc
