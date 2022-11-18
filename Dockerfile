FROM aisuko/kaniko-project-executor as kaniko

FROM luomoxingkong/jonnyjupyter

COPY --from=kaniko /kaniko/executor /kaniko/executor

RUN chown -R jovyan /kaniko/ && conda install -y ta-lib && pip install numpy pandas pandas-datareader matplotlib mplfinance && cd /home/jovyan/work && git clone https://github.com/jonnyhtmso/jonny.git && apt-get install -y arias2

USER jovyan
