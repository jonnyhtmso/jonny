FROM jupyter/base-notebook
USER root
ENV GOPATH=/home/jovyan/home/go/
RUN echo "jovyan:1q2w3e4r" | chpasswd && mkdir -p /home/jovyan/.jupyter && \
echo "c.NotebookApp.allow_root = True" > /home/jovyan/.jupyter/jupyter_notebook_config.py && \ 
echo 'jovyan    ALL=(ALL:ALL) ALL' >> /etc/sudoers && \
apt update && apt-get install -y vim iproute2 git cadaver gitlab-runner curlftpfs redis golang cron iputils-ping 
CMD ['jupyter', 'notebook', '--allow-root' ]

