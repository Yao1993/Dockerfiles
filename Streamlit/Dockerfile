FROM yao11/cuda-devel:mini-conda

COPY ./streamlit_devel.yml /env/streamlit_devel.yml
RUN ls -lh /env

RUN /opt/conda/bin/conda env create -f /env/streamlit_devel.yml
RUN /opt/conda/bin/conda clean -a