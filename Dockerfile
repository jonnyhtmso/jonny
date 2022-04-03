FROM luomoxingkong/jonnyjupyter

RUN conda install -y ta-lib && conda install -y numpy && conda install -y pandas pandas-datareader && conda install -y matplotlib && conda install mplfinance
