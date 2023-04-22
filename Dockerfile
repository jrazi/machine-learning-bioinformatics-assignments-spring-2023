FROM jupyter/tensorflow-notebook

RUN conda install xgboost
RUN conda install seaborn

USER root
RUN apt-get update && apt-get install -y graphviz
RUN apt-get install texlive-xetex texlive-fonts-recommended texlive-plain-generic
USER $NB_UID
RUN conda install -y graphviz
WORKDIR /home/jovyan/work
