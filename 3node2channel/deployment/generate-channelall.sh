docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org1.example.com/msp" peer0.org1.example.com peer channel create -o orderer.example.com:7050 -c channelall -f /var/hyperledger/configs/channelall.tx
docker exec -e "CORE_PEER_MSPCONFIGPATH=/var/hyperledger/users/Admin@org1.example.com/msp" peer0.org1.example.com peer channel join -b channelall.block

# node1
docker cp peer0.org1.example.com:channelall.block .
# transfer genesis block to node2, node3
scp channelall.block root@47.240.59.80:~/Documents/HLF2-Project-Repo-v1.4-3.2/3node2channel/deployment/
scp channelall.block root@149.129.101.8:~/Documents/HLF2-Project-Repo-v1.4-3.2/3node2channel/deployment/
