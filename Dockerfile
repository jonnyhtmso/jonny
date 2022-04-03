FROM luomoxingkong/jonnyjupyter

RUN conda install -y ta-lib && pip install numpy pandas pandas-datareader matplotlib mplfinance && cd /home/jovyan/ && git clone https://github.com/jonnyhtmso/jonny.git
