docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org1.example.com/msp" peer0.org1.example.com peer channel create -o orderer.example.com:7050 -c channel12 -f /var/hyperledger/configs/channel12.tx
docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org1.example.com/msp" peer0.org1.example.com peer channel join -b channel12.block
docker cp peer0.org1.example.com:channel12.block .
# transfer genesis block to node2
scp channel12.block root@47.240.59.80:~/Documents/HLF2-Project-Repo-v1.4-3.2/3node2channel/deployment/
