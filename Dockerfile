FROM luomoxingkong/jonnyjupyter

USER jovyan

RUN conda install -y ta-lib && pip install numpy pandas pandas-datareader matplotlib mplfinance && cd /home/jovyan/work && git clone https://github.com/jonnyhtmso/jonny.git
