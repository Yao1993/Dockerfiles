FROM yao11/cuda-devel:devel-tools


RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    echo "export PATH=/opt/conda/bin:\$PATH" >> ~/.zshrc

COPY ./zhou.yml /env/zhou.yml
COPY ./.condarc ~/.condarc
RUN ls -lh /env


RUN /opt/conda/bin/conda env create -f /env/zhou.yml
RUN /opt/conda/bin/conda clean -a