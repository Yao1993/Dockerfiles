FROM yao11/cuda-devel:devel-tools

RUN wget https://repo.continuum.io/archive/Anaconda3-2019.07-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda &&\
    rm ~/anaconda.sh && \
    echo "export PATH=/opt/conda/bin:$PATH" >> ~/.zshrc
    

RUN /opt/conda/bin/conda install -c conda-forge pydicom

RUN /opt/conda/bin/conda install pytorch torchvision cudatoolkit=10.0 -c pytorch

# Juypter NoteBook
EXPOSE 8888