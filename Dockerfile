FROM aisuko/kaniko-project-executor as kaniko

FROM luomoxingkong/jonnyjupyter

COPY --from=kaniko /kaniko/executor /kaniko/executor

USER jovyan

RUN conda install -y ta-lib && pip install numpy pandas pandas-datareader matplotlib mplfinance && cd /home/jovyan/work && git clone https://github.com/jonnyhtmso/jonny.git
