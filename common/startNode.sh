geth --datadir /opt/data init /opt/common/genesis.json
geth --datadir /opt/data --port 30303 --networkid 9 --bootnodes $(cat /opt/common/enode) 
