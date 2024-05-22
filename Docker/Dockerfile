FROM jupyter/minimal-notebook

# change user to root to modify .bashrc for e.g. highlighting in the console
USER root
RUN cat /etc/skel/.bashrc >> /etc/bash.bashrc

# install bc for counting reads
RUN apt-get update && apt-get install -y bc

# change back to notebook user
USER $NB_UID

# remove auto-generated work directory
RUN rm -r /home/jovyan/work

COPY requirements.txt /tmp/requirements.txt

# install samtools
RUN pip install --no-cache-dir -r /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

