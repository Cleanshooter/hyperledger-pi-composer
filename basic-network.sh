#!/bin/bash

#Node names and IP addresses of the hosts to be used
# ZK_NODE="host1" # Node name of the host where zookeeper to be launched
# ZK_IP="9.1.1.1" #Ip address of the host where zookeeper is running
# KAFKA_NODE="host2" #Node name of the host where kafka to be launched
ORDERER_NODE="pi3b-master" #Node name of the host where orderer to be launched
# PEER_NODES dictate which node int he swarm the peer will be hosted on
PEER_NODE1="pi3b-node1" #Node name of the host where peer to be launched
PEER_NODE2="pi3b-node1" #Node name of the host where peer to be launched
PEER_NODE3="pi3b-node2" #Node name of the host where peer to be launched
PEER_NODE4="pi2b-node3" #Node name of the host where peer to be launched
# Hostname / IP address of the peer
PEER_IP1="peer0.org1.example.com" #Ip address of the host4 where peer is running
PEER_IP2="peer1.org1.example.com" #Ip address of the host5 where peer is running
PEER_IP3="peer0.org2.example.com" #Ip address of the host6 where peer is running
PEER_IP4="peer1.org2.example.com" #Ip address of the host7 where peer is running

function printHelp {

   echo "Usage: "
   echo " ./multihost_launcher.sh [opt] [value] "
   echo "    -z: number of zookeepers, default=1"
   echo "    -k: number of kafka, default=5"
   echo "    -o: number of orderers, default=4"
   echo "    -r: number of organizations, default=2"
   echo "    -c: channel name, default=myc0"
   echo " "
   echo " example: "
   echo " ./multihost_launcher.sh -z 1 -k 5 -o 4 -r 2 -c myc0"
   exit
}

#defaults
#nZookeeper=0
#nKafka=0
nOrderer=1
nOrgs=2
channel="testChannel"

while getopts ":z:k:o:r:c:" opt; 
do
  case $opt in
          # z)
          #     nZookeeper=$OPTARG
          # ;;
          # k)
          #     nKafka=$OPTARG
          # ;;
          o)
              nOrderer=$OPTARG
          ;;
          r)
              nOrgs=$OPTARG
          ;;
          c)
              channel=$OPTARG
          ;;
          \?)
             echo "Invalid option: -$OPTARG" >&2
             printHelp
          ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
              printHelp
          ;;
    esac
done

# Remove old services
echo "Removing old services"
docker service rm orderer
sleep 1
docker service rm cli
sleep 1
for (( i=1 ; i<=$nOrgs ; i++ )) 
do
  docker service rm peer0-org${i}
  sleep 1
  docker service rm peer1-org${i}
  sleep 1
done

# echo "Launching zookeepers"
# for (( i=0; i<$nZookeeper; i++ ))
# do
#   docker service create --name zookeeper$i \
#   --network my-network \
#   --restart-condition none \
#   --constraint 'node.hostname == '$ZK_NODE \
#   --publish 2181:2181 \
#   hyperledger/fabric-zookeeper:x86_64-1.0.0-alpha
# done

# echo "Launching kafka brokers"
# for (( i=0, j=9092 ; i<$nKafka; i++, j++ ))
# do
#   docker service create --name kafka$i \
#   --network my-network \
#   --restart-condition none \
#   --constraint 'node.hostname == '$KAFKA_NODE \
#   --env KAFKA_BROKER_ID=$i \
#   --env KAFKA_MESSAGE_MAX_BYTES=103809024 \
#   --env KAFKA_REPLICA_FETCH_MAX_BYTES=103809024 \
#   --env KAFKA_NUM_REPLICA_FETCHERS=$nKafka \
#   --env KAFKA_ZOOKEEPER_CONNECT=$ZK_IP:2181 \
#   --env KAFKA_DEFAULT_REPLICATION_FACTOR=$nKafka \
#   --env KAFKA_UNCLEAN_LEADER_ELECTION_ENABLE=false \
#   --publish $j:9092 \
#   hyperledger/fabric-kafka:x86_64-1.0.0-alpha
# done

# sleep 10

echo "Launching Orderer(s)"
for (( i=0, j=7050 ; i<$nOrderer ; i++, j=j+20 ))
do 
  docker service create -d --name orderer \
  --network hyperledger-fabric  \
  --restart-condition none \
  --constraint 'node.hostname == '$ORDERER_NODE \
  --env ORDERER_GENERAL_LOGLEVEL=debug \
  --env ORDERER_GENERAL_LISTENADDRESS=0.0.0.0 \
  --env ORDERER_GENERAL_GENESISMETHOD=file \
  --env ORDERER_GENERAL_GENESISFILE=/var/hyperledger/orderer/orderer.genesis.block \
  --env ORDERER_GENERAL_LOCALMSPID=OrdererMSP \
  --env ORDERER_GENERAL_LOCALMSPDIR=/var/hyperledger/orderer/msp  \
  --workdir /opt/gopath/src/github.com/hyperledger/fabric  \
  --mount type=bind,src=/home/jmotacek/hyperledger-pi-composer/channel-artifacts/genesis.block,dst=/var/hyperledger/orderer/orderer.genesis.block  \
  --mount type=bind,src=/home/jmotacek/hyperledger-pi-composer/crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp,dst=/var/hyperledger/orderer/msp \
  --publish $j:7050 \
  jmotacek/fabric-orderer orderer
done

sleep 3

echo "Launching Peers"
total_orgs=$nOrgs
for (( i=1, port1=7051, port2=7053 ; i<=$total_orgs ; i++, port1=port1+2000, port2=port2+2000 )) 
do

  case $i in 
       1) hostname1=$PEER_NODE1 ; ip1=$PEER_IP1 ; hostname2=$PEER_NODE2 ; ip2=$PEER_IP2 ;;
       2) hostname1=$PEER_NODE3 ; ip1=$PEER_IP3 ; hostname2=$PEER_NODE4 ; ip2=$PEER_IP4 ;;
  esac

  echo "Launching peer0-org${i}"
    # --env CORE_PEER_ADDRESSAUTODETECT=false \
    # --env CORE_PEER_ENDORSER_ENABLED=true \
    # --env CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/msp/sampleconfig \
  docker service create -d --name peer0-org${i} \
    --network hyperledger-fabric \
    --restart-condition none \
    --constraint 'node.hostname == '$hostname1 \
    --env CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock \
    --env CORE_LOGGING_LEVEL=DEBUG \
    --env CORE_PEER_TLS_ENABLED=false \
    --env CORE_PEER_GOSSIP_ORGLEADER=false \
    --env CORE_PEER_GOSSIP_USELEADERELECTION=true \
    --env CORE_PEER_PROFILE_ENABLED=true \
    --env CORE_PEER_ADDRESS=$ip1:$port1 \
    --env CORE_PEER_ID=peer0-org${i} \
    --env CORE_PEER_LOCALMSPID=Org${i}MSP \
    --env CORE_PEER_GOSSIP_EXTERNALENDPOINT=$ip1:$port1 \
    --workdir /opt/gopath/src/github.com/hyperledger/fabric/peer \
    --mount type=bind,src=/var/run/,dst=/host/var/run/ \
    --mount type=bind,src=/home/jmotacek/hyperledger-pi-composer/crypto-config/peerOrganizations/org${i}.example.com/peers/peer0.org${i}.example.com/msp,dst=/etc/hyperledger/fabric/msp \
    --publish $port1:7051 \
    --publish $port2:7053 \
    jmotacek/fabric-peer peer node start --peer-defaultchain=false
  
  sleep 3

  echo "Launching peer1-org${i}"
    # --env CORE_PEER_ADDRESSAUTODETECT=false \
    # --env CORE_PEER_ENDORSER_ENABLED=true \
    # --env CORE_PEER_MSPCONFIGPATH=/etc/hyperledger/fabric/msp/sampleconfig \
  docker service create -d --name peer1-org${i} \
    --network hyperledger-fabric \
    --restart-condition none \
    --constraint 'node.hostname == '$hostname2 \
    --env CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock \
    --env CORE_LOGGING_LEVEL=DEBUG \
    --env CORE_PEER_TLS_ENABLED=false \
    --env CORE_PEER_GOSSIP_ORGLEADER=false \
    --env CORE_PEER_GOSSIP_USELEADERELECTION=true \
    --env CORE_PEER_PROFILE_ENABLED=true \
    --env CORE_PEER_ADDRESS=$ip2:$port1 \
    --env CORE_PEER_ID=peer1-org${i} \
    --env CORE_PEER_LOCALMSPID=Org${i}MSP \
    --env CORE_PEER_GOSSIP_BOOTSTRAP=$ip1:$port1 \
    --workdir /opt/gopath/src/github.com/hyperledger/fabric/peer \
    --mount type=bind,src=/var/run/,dst=/host/var/run/ \
    --mount type=bind,src=/home/jmotacek/hyperledger-pi-composer/crypto-config/peerOrganizations/org${i}.example.com/peers/peer1.org${i}.example.com/msp,dst=/etc/hyperledger/fabric/msp \
    --publish `expr $port1 + 1000`:7051 \
    --publish `expr $port2 + 1000`:7053 \
    jmotacek/fabric-peer peer node start --peer-defaultchain=false
    
  sleep 3    
done

sleep 10

echo "Launching CLI"
  # --env CORE_PEER_ENDORSER_ENABLED=true \
docker service create -d --name cli \
  --tty=true \
  --network hyperledger-fabric \
  --restart-condition none \
  --constraint 'node.hostname == pi3b-master' \
  --env GOPATH=/opt/gopath \
  --env CORE_PEER_ADDRESSAUTODETECT=false \
  --env CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock \
  --env CORE_LOGGING_LEVEL=DEBUG \
  --env CORE_PEER_ID=cli \
  --env CORE_PEER_ADDRESS=$PEER_IP1:7051 \
  --env CORE_PEER_GOSSIP_IGNORESECURITY=true \
  --env CORE_PEER_LOCALMSPID=Org1MSP \
  --env CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp \
  --workdir /opt/gopath/src/github.com/hyperledger/fabric/peer \
  --mount type=bind,src=/var/run,dst=/host/var/run \
  --mount type=bind,src=/home/jmotacek/hyperledger-pi-composer/crypto-config,dst=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto \
  --mount type=bind,src=/home/jmotacek/hyperledger-pi-composer/channel-artifacts,dst=/opt/gopath/src/github.com/hyperledger/fabric/peer/channel-artifacts \
  --mount type=bind,src=/home/jmotacek/hyperledger-pi-composer/scripts,dst=/opt/gopath/src/github.com/hyperledger/fabric/peer/scripts \
  --mount type=bind,src=/home/jmotacek/hyperledger-pi-composer/chaincode,dst=/opt/gopath/src/github.com/hyperledger/fabric/examples/chaincode/go \
  --host orderer.example.com:10.0.0.3 \
  --host $PEER_IP1:10.0.0.5 \
  --host $PEER_IP2:10.0.0.7 \
  --host $PEER_IP3:10.0.0.9 \
  --host $PEER_IP4:10.0.0.11 \
  jmotacek/fabric-tools  /bin/bash -c 'sleep 30; ./scripts/script.sh '$channel'; while true; do sleep 20170504; done;'
