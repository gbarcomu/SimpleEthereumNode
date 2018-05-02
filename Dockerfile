FROM ubuntu:16.04
LABEL Blockchain Team 

ENV DEBIAN_FRONTEND noninteractive

# Usual update / upgrade
RUN apt-get clean
RUN apt-get update
RUN apt-get upgrade -q -y
RUN apt-get dist-upgrade -q -y

# Install Ethereum
RUN apt-get install -q -y software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install -q -y ethereum

# Install Solidity Compiler
RUN apt-get install -q -y solc

# eth port
EXPOSE 30303

CMD ["bash"]
