# Generate crypto artifacts
cryptogen generate --config=./crypto-config.yaml

# Generate network artifacts
# 1: genesis block for orderer
export FABRIC_CFG_PATH=$PWD
configtxgen -profile ThreeOrgsOrdererGenesis -outputBlock ./channel-artifacts/genesis.block
# 2: configuration transaction for the both channels
configtxgen -profile ChannelAll -outputCreateChannelTx ./channel-artifacts/channelall.tx -channelID channelall
configtxgen -profile Channel12 -outputCreateChannelTx ./channel-artifacts/channel12.tx -channelID channel12
