## Build Your First Network (BYFN)

The directions for using this are documented in the Hyperledger Fabric
["Build Your First Network"](http://hyperledger-fabric.readthedocs.io/en/latest/build_network.html) tutorial.

This repo is modded for building on a raspi docker swarm the current issue is that it can't get past channel creation... thinking it's becuase the cli and orderer are on seperate devices (Since it's a swarm)

# ERROR LOG FROM CLI CONTAINER

```bash
 ____    _____      _      ____    _____ 
/ ___|  |_   _|    / \    |  _ \  |_   _|
\___ \    | |     / _ \   | |_) |   | |  
 ___) |   | |    / ___ \  |  _ <    | |  
|____/    |_|   /_/   \_\ |_| \_\   |_|  

Build your first network (BYFN) end-to-end test

Channel name : mychannel
Creating channel...
CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key
CORE_PEER_LOCALMSPID=Org1MSP
CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock
CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
CORE_PEER_TLS_ENABLED=true
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
CORE_PEER_ID=cli
CORE_LOGGING_LEVEL=DEBUG
CORE_PEER_ADDRESS=peer0.org1.example.com:7051
2017-07-28 13:59:26.798 UTC [msp] GetLocalMSP -> DEBU 001 Returning existing local MSP
2017-07-28 13:59:26.798 UTC [msp] GetDefaultSigningIdentity -> DEBU 002 Obtaining default signing identity
2017-07-28 13:59:27.075 UTC [channelCmd] InitCmdFactory -> INFO 003 Endorser and orderer connections initialized
2017-07-28 13:59:27.077 UTC [msp] GetLocalMSP -> DEBU 004 Returning existing local MSP
2017-07-28 13:59:27.077 UTC [msp] GetDefaultSigningIdentity -> DEBU 005 Obtaining default signing identity
2017-07-28 13:59:27.078 UTC [msp] GetLocalMSP -> DEBU 006 Returning existing local MSP
2017-07-28 13:59:27.078 UTC [msp] GetDefaultSigningIdentity -> DEBU 007 Obtaining default signing identity
2017-07-28 13:59:27.079 UTC [msp/identity] Sign -> DEBU 008 Sign: plaintext: 0A88060A074F7267314D535012FC052D...53616D706C65436F6E736F727469756D 
2017-07-28 13:59:27.079 UTC [msp/identity] Sign -> DEBU 009 Sign: digest: 42AE2BE40FFE25B45349D6FECD08065FB51A0049DA8F84A0DB2D6225E35FE173 
2017-07-28 13:59:27.094 UTC [msp] GetLocalMSP -> DEBU 00a Returning existing local MSP
2017-07-28 13:59:27.094 UTC [msp] GetDefaultSigningIdentity -> DEBU 00b Obtaining default signing identity
2017-07-28 13:59:27.095 UTC [msp] GetLocalMSP -> DEBU 00c Returning existing local MSP
2017-07-28 13:59:27.095 UTC [msp] GetDefaultSigningIdentity -> DEBU 00d Obtaining default signing identity
2017-07-28 13:59:27.095 UTC [msp/identity] Sign -> DEBU 00e Sign: plaintext: 0ABF060A1508021A0608BF86EDCB0522...7FEF099756512A25E7203615D7C02589 
2017-07-28 13:59:27.095 UTC [msp/identity] Sign -> DEBU 00f Sign: digest: 2F83DE7A8C7C749273E60274A9244E19C9FBFB945FE92B9CF1AFEBF1179084D4 
2017-07-28 13:59:31.335 UTC [msp] GetLocalMSP -> DEBU 010 Returning existing local MSP
2017-07-28 13:59:31.335 UTC [msp] GetDefaultSigningIdentity -> DEBU 011 Obtaining default signing identity
2017-07-28 13:59:31.341 UTC [msp] GetLocalMSP -> DEBU 012 Returning existing local MSP
2017-07-28 13:59:31.342 UTC [msp] GetDefaultSigningIdentity -> DEBU 013 Obtaining default signing identity
2017-07-28 13:59:31.342 UTC [msp/identity] Sign -> DEBU 014 Sign: plaintext: 0ABF060A1508021A0608C386EDCB0522...AF4EB4FA0A3412080A021A0012021A00 
2017-07-28 13:59:31.343 UTC [msp/identity] Sign -> DEBU 015 Sign: digest: E9EE6A8307F842D595637F1337330594635AF6ADAB376B81EE1F79A4D5F33AFD 
2017-07-28 13:59:31.375 UTC [channelCmd] readBlock -> DEBU 016 Got status: &{NOT_FOUND}
2017-07-28 13:59:31.376 UTC [msp] GetLocalMSP -> DEBU 017 Returning existing local MSP
2017-07-28 13:59:31.376 UTC [msp] GetDefaultSigningIdentity -> DEBU 018 Obtaining default signing identity
2017-07-28 13:59:31.630 UTC [channelCmd] InitCmdFactory -> INFO 019 Endorser and orderer connections initialized
2017-07-28 13:59:31.831 UTC [msp] GetLocalMSP -> DEBU 01a Returning existing local MSP
2017-07-28 13:59:31.831 UTC [msp] GetDefaultSigningIdentity -> DEBU 01b Obtaining default signing identity
2017-07-28 13:59:31.832 UTC [msp] GetLocalMSP -> DEBU 01c Returning existing local MSP
2017-07-28 13:59:31.832 UTC [msp] GetDefaultSigningIdentity -> DEBU 01d Obtaining default signing identity
2017-07-28 13:59:31.832 UTC [msp/identity] Sign -> DEBU 01e Sign: plaintext: 0ABF060A1508021A0608C386EDCB0522...80A5CDCE675712080A021A0012021A00 
2017-07-28 13:59:31.833 UTC [msp/identity] Sign -> DEBU 01f Sign: digest: 7633C4F155A2DF2C8F589AA42A1FF3D78F9D74A6748776ABE04D47E96575A1F2 
2017-07-28 13:59:31.859 UTC [channelCmd] readBlock -> DEBU 020 Got status: &{NOT_FOUND}
2017-07-28 13:59:31.860 UTC [msp] GetLocalMSP -> DEBU 021 Returning existing local MSP
2017-07-28 13:59:31.860 UTC [msp] GetDefaultSigningIdentity -> DEBU 022 Obtaining default signing identity
2017-07-28 13:59:32.083 UTC [channelCmd] InitCmdFactory -> INFO 023 Endorser and orderer connections initialized
2017-07-28 13:59:32.284 UTC [msp] GetLocalMSP -> DEBU 024 Returning existing local MSP
2017-07-28 13:59:32.285 UTC [msp] GetDefaultSigningIdentity -> DEBU 025 Obtaining default signing identity
2017-07-28 13:59:32.286 UTC [msp] GetLocalMSP -> DEBU 026 Returning existing local MSP
2017-07-28 13:59:32.286 UTC [msp] GetDefaultSigningIdentity -> DEBU 027 Obtaining default signing identity
2017-07-28 13:59:32.287 UTC [msp/identity] Sign -> DEBU 028 Sign: plaintext: 0ABF060A1508021A0608C486EDCB0522...0BCC49F0224912080A021A0012021A00 
2017-07-28 13:59:32.288 UTC [msp/identity] Sign -> DEBU 029 Sign: digest: C58E99EF8D13C2C336AEB78931ECD8799F2F295E363D434EB614785C5A310B12 
2017-07-28 13:59:32.321 UTC [channelCmd] readBlock -> DEBU 02a Got status: &{NOT_FOUND}
2017-07-28 13:59:32.322 UTC [msp] GetLocalMSP -> DEBU 02b Returning existing local MSP
2017-07-28 13:59:32.322 UTC [msp] GetDefaultSigningIdentity -> DEBU 02c Obtaining default signing identity
2017-07-28 13:59:32.564 UTC [channelCmd] InitCmdFactory -> INFO 02d Endorser and orderer connections initialized
2017-07-28 13:59:32.764 UTC [msp] GetLocalMSP -> DEBU 02e Returning existing local MSP
2017-07-28 13:59:32.765 UTC [msp] GetDefaultSigningIdentity -> DEBU 02f Obtaining default signing identity
2017-07-28 13:59:32.765 UTC [msp] GetLocalMSP -> DEBU 030 Returning existing local MSP
2017-07-28 13:59:32.766 UTC [msp] GetDefaultSigningIdentity -> DEBU 031 Obtaining default signing identity
2017-07-28 13:59:32.766 UTC [msp/identity] Sign -> DEBU 032 Sign: plaintext: 0ABF060A1508021A0608C486EDCB0522...F4205C755C3512080A021A0012021A00 
2017-07-28 13:59:32.766 UTC [msp/identity] Sign -> DEBU 033 Sign: digest: 330F6D2A36B4BE79A7EA917342A7CEC2A6EC7217635143598403AF0A24FAFBCE 
2017-07-28 13:59:32.792 UTC [channelCmd] readBlock -> DEBU 034 Got status: &{NOT_FOUND}
2017-07-28 13:59:32.793 UTC [msp] GetLocalMSP -> DEBU 035 Returning existing local MSP
2017-07-28 13:59:32.793 UTC [msp] GetDefaultSigningIdentity -> DEBU 036 Obtaining default signing identity
2017-07-28 13:59:33.016 UTC [channelCmd] InitCmdFactory -> INFO 037 Endorser and orderer connections initialized
2017-07-28 13:59:33.217 UTC [msp] GetLocalMSP -> DEBU 038 Returning existing local MSP
2017-07-28 13:59:33.218 UTC [msp] GetDefaultSigningIdentity -> DEBU 039 Obtaining default signing identity
2017-07-28 13:59:33.220 UTC [msp] GetLocalMSP -> DEBU 03a Returning existing local MSP
2017-07-28 13:59:33.221 UTC [msp] GetDefaultSigningIdentity -> DEBU 03b Obtaining default signing identity
2017-07-28 13:59:33.222 UTC [msp/identity] Sign -> DEBU 03c Sign: plaintext: 0ABF060A1508021A0608C586EDCB0522...004556EB34F412080A021A0012021A00 
2017-07-28 13:59:33.222 UTC [msp/identity] Sign -> DEBU 03d Sign: digest: 9F4E0A25B69757FBC43E4CB97CC691639E7FB4228FD869AA393C246C45A0EE7D 
2017-07-28 13:59:33.258 UTC [channelCmd] readBlock -> DEBU 03e Got status: &{NOT_FOUND}
2017-07-28 13:59:33.260 UTC [msp] GetLocalMSP -> DEBU 03f Returning existing local MSP
2017-07-28 13:59:33.261 UTC [msp] GetDefaultSigningIdentity -> DEBU 040 Obtaining default signing identity
2017-07-28 13:59:33.502 UTC [channelCmd] InitCmdFactory -> INFO 041 Endorser and orderer connections initialized
2017-07-28 13:59:33.702 UTC [msp] GetLocalMSP -> DEBU 042 Returning existing local MSP
2017-07-28 13:59:33.703 UTC [msp] GetDefaultSigningIdentity -> DEBU 043 Obtaining default signing identity
2017-07-28 13:59:33.703 UTC [msp] GetLocalMSP -> DEBU 044 Returning existing local MSP
2017-07-28 13:59:33.703 UTC [msp] GetDefaultSigningIdentity -> DEBU 045 Obtaining default signing identity
2017-07-28 13:59:33.704 UTC [msp/identity] Sign -> DEBU 046 Sign: plaintext: 0ABF060A1508021A0608C586EDCB0522...7A719514B74A12080A021A0012021A00 
2017-07-28 13:59:33.704 UTC [msp/identity] Sign -> DEBU 047 Sign: digest: B790B184FD345981B65FAE03C2F6A3A17518AE68D3D761BE1E0F9A9E9F0E04E3 
2017-07-28 13:59:33.729 UTC [channelCmd] readBlock -> DEBU 048 Got status: &{NOT_FOUND}
2017-07-28 13:59:33.731 UTC [msp] GetLocalMSP -> DEBU 049 Returning existing local MSP
2017-07-28 13:59:33.731 UTC [msp] GetDefaultSigningIdentity -> DEBU 04a Obtaining default signing identity
2017-07-28 13:59:33.978 UTC [channelCmd] InitCmdFactory -> INFO 04b Endorser and orderer connections initialized
2017-07-28 13:59:34.179 UTC [msp] GetLocalMSP -> DEBU 04c Returning existing local MSP
2017-07-28 13:59:34.179 UTC [msp] GetDefaultSigningIdentity -> DEBU 04d Obtaining default signing identity
2017-07-28 13:59:34.180 UTC [msp] GetLocalMSP -> DEBU 04e Returning existing local MSP
2017-07-28 13:59:34.180 UTC [msp] GetDefaultSigningIdentity -> DEBU 04f Obtaining default signing identity
2017-07-28 13:59:34.181 UTC [msp/identity] Sign -> DEBU 050 Sign: plaintext: 0ABF060A1508021A0608C686EDCB0522...AE25356AAD1012080A021A0012021A00 
2017-07-28 13:59:34.181 UTC [msp/identity] Sign -> DEBU 051 Sign: digest: B42DAEF85ECCA70F6E5841DD3525BE9C9D76FE32EE1137EA5C222356E0FEFB9E 
2017-07-28 13:59:34.215 UTC [channelCmd] readBlock -> DEBU 052 Got status: &{NOT_FOUND}
2017-07-28 13:59:34.216 UTC [msp] GetLocalMSP -> DEBU 053 Returning existing local MSP
2017-07-28 13:59:34.217 UTC [msp] GetDefaultSigningIdentity -> DEBU 054 Obtaining default signing identity
2017-07-28 13:59:34.474 UTC [channelCmd] InitCmdFactory -> INFO 055 Endorser and orderer connections initialized
2017-07-28 13:59:34.675 UTC [msp] GetLocalMSP -> DEBU 056 Returning existing local MSP
2017-07-28 13:59:34.675 UTC [msp] GetDefaultSigningIdentity -> DEBU 057 Obtaining default signing identity
2017-07-28 13:59:34.676 UTC [msp] GetLocalMSP -> DEBU 058 Returning existing local MSP
2017-07-28 13:59:34.676 UTC [msp] GetDefaultSigningIdentity -> DEBU 059 Obtaining default signing identity
2017-07-28 13:59:34.677 UTC [msp/identity] Sign -> DEBU 05a Sign: plaintext: 0ABF060A1508021A0608C686EDCB0522...B2FD41BECCC712080A021A0012021A00 
2017-07-28 13:59:34.677 UTC [msp/identity] Sign -> DEBU 05b Sign: digest: 1B3A44ACEE4906361B8FC64398D22F46301B6409E579CD2F30426592D762B1EB 
2017-07-28 13:59:34.700 UTC [channelCmd] readBlock -> DEBU 05c Got status: &{NOT_FOUND}
2017-07-28 13:59:34.701 UTC [msp] GetLocalMSP -> DEBU 05d Returning existing local MSP
2017-07-28 13:59:34.702 UTC [msp] GetDefaultSigningIdentity -> DEBU 05e Obtaining default signing identity
2017-07-28 13:59:36.022 UTC [channelCmd] InitCmdFactory -> INFO 05f Endorser and orderer connections initialized
2017-07-28 13:59:36.223 UTC [msp] GetLocalMSP -> DEBU 060 Returning existing local MSP
2017-07-28 13:59:36.224 UTC [msp] GetDefaultSigningIdentity -> DEBU 061 Obtaining default signing identity
2017-07-28 13:59:36.225 UTC [msp] GetLocalMSP -> DEBU 062 Returning existing local MSP
2017-07-28 13:59:36.225 UTC [msp] GetDefaultSigningIdentity -> DEBU 063 Obtaining default signing identity
2017-07-28 13:59:36.243 UTC [msp/identity] Sign -> DEBU 064 Sign: plaintext: 0ABF060A1508021A0608C886EDCB0522...F1205988B0C312080A021A0012021A00 
2017-07-28 13:59:36.245 UTC [msp/identity] Sign -> DEBU 065 Sign: digest: 1A3EE353D29C5D3B964874A4FA741B8628B4B5E5F2707429FC8B8AAE2AD41676 
2017-07-28 13:59:36.276 UTC [channelCmd] readBlock -> DEBU 066 Got status: &{NOT_FOUND}
2017-07-28 13:59:36.277 UTC [msp] GetLocalMSP -> DEBU 067 Returning existing local MSP
2017-07-28 13:59:36.278 UTC [msp] GetDefaultSigningIdentity -> DEBU 068 Obtaining default signing identity
2017-07-28 13:59:36.502 UTC [channelCmd] InitCmdFactory -> INFO 069 Endorser and orderer connections initialized
2017-07-28 13:59:36.705 UTC [msp] GetLocalMSP -> DEBU 06a Returning existing local MSP
2017-07-28 13:59:36.707 UTC [msp] GetDefaultSigningIdentity -> DEBU 06b Obtaining default signing identity
2017-07-28 13:59:36.710 UTC [msp] GetLocalMSP -> DEBU 06c Returning existing local MSP
2017-07-28 13:59:36.710 UTC [msp] GetDefaultSigningIdentity -> DEBU 06d Obtaining default signing identity
2017-07-28 13:59:36.712 UTC [msp/identity] Sign -> DEBU 06e Sign: plaintext: 0ABF060A1508021A0608C886EDCB0522...B608D7AD189C12080A021A0012021A00 
2017-07-28 13:59:36.712 UTC [msp/identity] Sign -> DEBU 06f Sign: digest: CA40935B2F029C414EDE944D4C126ED64DF8E727067595A77FFE9410AABC574C 
2017-07-28 13:59:36.744 UTC [channelCmd] readBlock -> DEBU 070 Got status: &{NOT_FOUND}
2017-07-28 13:59:36.746 UTC [msp] GetLocalMSP -> DEBU 071 Returning existing local MSP
2017-07-28 13:59:36.746 UTC [msp] GetDefaultSigningIdentity -> DEBU 072 Obtaining default signing identity
2017-07-28 13:59:37.022 UTC [channelCmd] InitCmdFactory -> INFO 073 Endorser and orderer connections initialized
2017-07-28 13:59:37.222 UTC [msp] GetLocalMSP -> DEBU 074 Returning existing local MSP
2017-07-28 13:59:37.223 UTC [msp] GetDefaultSigningIdentity -> DEBU 075 Obtaining default signing identity
2017-07-28 13:59:37.223 UTC [msp] GetLocalMSP -> DEBU 076 Returning existing local MSP
2017-07-28 13:59:37.223 UTC [msp] GetDefaultSigningIdentity -> DEBU 077 Obtaining default signing identity
2017-07-28 13:59:37.224 UTC [msp/identity] Sign -> DEBU 078 Sign: plaintext: 0ABF060A1508021A0608C986EDCB0522...26B88859918A12080A021A0012021A00 
2017-07-28 13:59:37.224 UTC [msp/identity] Sign -> DEBU 079 Sign: digest: 8A27C530B6F4EB0D13BB42FD17D7E8E0D2A1270A59F91F4BF386DD230FD933CA 
2017-07-28 13:59:37.247 UTC [channelCmd] readBlock -> DEBU 07a Got status: &{NOT_FOUND}
2017-07-28 13:59:37.249 UTC [msp] GetLocalMSP -> DEBU 07b Returning existing local MSP
2017-07-28 13:59:37.249 UTC [msp] GetDefaultSigningIdentity -> DEBU 07c Obtaining default signing identity
2017-07-28 13:59:37.459 UTC [channelCmd] InitCmdFactory -> INFO 07d Endorser and orderer connections initialized
2017-07-28 13:59:37.660 UTC [msp] GetLocalMSP -> DEBU 07e Returning existing local MSP
2017-07-28 13:59:37.660 UTC [msp] GetDefaultSigningIdentity -> DEBU 07f Obtaining default signing identity
2017-07-28 13:59:37.661 UTC [msp] GetLocalMSP -> DEBU 080 Returning existing local MSP
2017-07-28 13:59:37.661 UTC [msp] GetDefaultSigningIdentity -> DEBU 081 Obtaining default signing identity
2017-07-28 13:59:37.662 UTC [msp/identity] Sign -> DEBU 082 Sign: plaintext: 0ABF060A1508021A0608C986EDCB0522...E587FB87718412080A021A0012021A00 
2017-07-28 13:59:37.662 UTC [msp/identity] Sign -> DEBU 083 Sign: digest: D865203AC3F0F245EEBB6DF25DB37CEF7D69BBCC26FE92788BB8FEAE82D33976 
2017-07-28 13:59:37.818 UTC [channelCmd] readBlock -> DEBU 084 Received block: 0
2017-07-28 13:59:37.824 UTC [main] main -> INFO 085 Exiting.....
===================== Channel "mychannel" is created successfully ===================== 

Having all peers join the channel...
CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key
CORE_PEER_LOCALMSPID=Org1MSP
CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock
CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
CORE_PEER_TLS_ENABLED=true
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
CORE_PEER_ID=cli
CORE_LOGGING_LEVEL=DEBUG
CORE_PEER_ADDRESS=peer0.org1.example.com:7051
2017-07-28 13:59:38.509 UTC [msp] GetLocalMSP -> DEBU 001 Returning existing local MSP
2017-07-28 13:59:38.510 UTC [msp] GetDefaultSigningIdentity -> DEBU 002 Obtaining default signing identity
2017-07-28 13:59:38.808 UTC [channelCmd] InitCmdFactory -> INFO 003 Endorser and orderer connections initialized
2017-07-28 13:59:38.813 UTC [msp/identity] Sign -> DEBU 004 Sign: plaintext: 0A86070A5C08011A0C08CA86EDCB0510...2B783805ED311A080A000A000A000A00 
2017-07-28 13:59:38.814 UTC [msp/identity] Sign -> DEBU 005 Sign: digest: E2553780C38F36970C368E3B6822286A35647DC38749C36461B7066A078A7ED3 
2017-07-28 13:59:39.811 UTC [channelCmd] executeJoin -> INFO 006 Peer joined the channel!
2017-07-28 13:59:39.811 UTC [main] main -> INFO 007 Exiting.....
===================== PEER0 joined on the channel "mychannel" ===================== 

CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key
CORE_PEER_LOCALMSPID=Org1MSP
CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock
CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
CORE_PEER_TLS_ENABLED=true
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
CORE_PEER_ID=cli
CORE_LOGGING_LEVEL=DEBUG
CORE_PEER_ADDRESS=peer1.org1.example.com:7051
2017-07-28 13:59:42.484 UTC [msp] GetLocalMSP -> DEBU 001 Returning existing local MSP
2017-07-28 13:59:42.484 UTC [msp] GetDefaultSigningIdentity -> DEBU 002 Obtaining default signing identity
2017-07-28 13:59:42.773 UTC [channelCmd] InitCmdFactory -> INFO 003 Endorser and orderer connections initialized
2017-07-28 13:59:42.803 UTC [msp/identity] Sign -> DEBU 004 Sign: plaintext: 0A86070A5C08011A0C08CE86EDCB0510...2B783805ED311A080A000A000A000A00 
2017-07-28 13:59:42.804 UTC [msp/identity] Sign -> DEBU 005 Sign: digest: 95E98D3FBE1DEAF465CA55B017ACD490442517D7D88AF53B8D5E618D5524D9C4 
2017-07-28 13:59:43.761 UTC [channelCmd] executeJoin -> INFO 006 Peer joined the channel!
2017-07-28 13:59:43.761 UTC [main] main -> INFO 007 Exiting.....
===================== PEER1 joined on the channel "mychannel" ===================== 

CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key
CORE_PEER_LOCALMSPID=Org2MSP
CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock
CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
CORE_PEER_TLS_ENABLED=true
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
CORE_PEER_ID=cli
CORE_LOGGING_LEVEL=DEBUG
CORE_PEER_ADDRESS=peer0.org2.example.com:7051
2017-07-28 13:59:46.390 UTC [msp] GetLocalMSP -> DEBU 001 Returning existing local MSP
2017-07-28 13:59:46.391 UTC [msp] GetDefaultSigningIdentity -> DEBU 002 Obtaining default signing identity
2017-07-28 13:59:46.649 UTC [channelCmd] InitCmdFactory -> INFO 003 Endorser and orderer connections initialized
2017-07-28 13:59:46.655 UTC [msp/identity] Sign -> DEBU 004 Sign: plaintext: 0A8A070A5C08011A0C08D286EDCB0510...2B783805ED311A080A000A000A000A00 
2017-07-28 13:59:46.655 UTC [msp/identity] Sign -> DEBU 005 Sign: digest: 2B0928A0BC1BD5987E97947DCFD53844EF3298C1127355C90696D7A4A5DF6FA4 
2017-07-28 13:59:47.666 UTC [channelCmd] executeJoin -> INFO 006 Peer joined the channel!
2017-07-28 13:59:47.672 UTC [main] main -> INFO 007 Exiting.....
===================== PEER2 joined on the channel "mychannel" ===================== 

CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key
CORE_PEER_LOCALMSPID=Org2MSP
CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock
CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
CORE_PEER_TLS_ENABLED=true
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
CORE_PEER_ID=cli
CORE_LOGGING_LEVEL=DEBUG
CORE_PEER_ADDRESS=peer1.org2.example.com:7051
2017-07-28 13:59:50.380 UTC [msp] GetLocalMSP -> DEBU 001 Returning existing local MSP
2017-07-28 13:59:50.380 UTC [msp] GetDefaultSigningIdentity -> DEBU 002 Obtaining default signing identity
2017-07-28 13:59:50.597 UTC [channelCmd] InitCmdFactory -> INFO 003 Endorser and orderer connections initialized
2017-07-28 13:59:50.603 UTC [msp/identity] Sign -> DEBU 004 Sign: plaintext: 0A8A070A5C08011A0C08D686EDCB0510...2B783805ED311A080A000A000A000A00 
2017-07-28 13:59:50.603 UTC [msp/identity] Sign -> DEBU 005 Sign: digest: 5E8E52B3A406BAADE001653A5C5C9DEE302F651990A8FB21A1B182D1FFC4FCD4 
2017-07-28 13:59:51.610 UTC [channelCmd] executeJoin -> INFO 006 Peer joined the channel!
2017-07-28 13:59:51.611 UTC [main] main -> INFO 007 Exiting.....
===================== PEER3 joined on the channel "mychannel" ===================== 

Updating anchor peers for org1...
CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key
CORE_PEER_LOCALMSPID=Org1MSP
CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock
CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
CORE_PEER_TLS_ENABLED=true
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
CORE_PEER_ID=cli
CORE_LOGGING_LEVEL=DEBUG
CORE_PEER_ADDRESS=peer0.org1.example.com:7051
2017-07-28 13:59:54.256 UTC [msp] GetLocalMSP -> DEBU 001 Returning existing local MSP
2017-07-28 13:59:54.257 UTC [msp] GetDefaultSigningIdentity -> DEBU 002 Obtaining default signing identity
2017-07-28 13:59:54.482 UTC [channelCmd] InitCmdFactory -> INFO 003 Endorser and orderer connections initialized
2017-07-28 13:59:54.484 UTC [msp] GetLocalMSP -> DEBU 004 Returning existing local MSP
2017-07-28 13:59:54.485 UTC [msp] GetDefaultSigningIdentity -> DEBU 005 Obtaining default signing identity
2017-07-28 13:59:54.485 UTC [msp] GetLocalMSP -> DEBU 006 Returning existing local MSP
2017-07-28 13:59:54.485 UTC [msp] GetDefaultSigningIdentity -> DEBU 007 Obtaining default signing identity
2017-07-28 13:59:54.486 UTC [msp/identity] Sign -> DEBU 008 Sign: plaintext: 0A88060A074F7267314D535012FC052D...2A0641646D696E732A0641646D696E73 
2017-07-28 13:59:54.486 UTC [msp/identity] Sign -> DEBU 009 Sign: digest: A661B72E731DF1AAB16985190FF93F97F64F0BD84E90C36258FAE390D1DAF219 
2017-07-28 13:59:54.501 UTC [msp] GetLocalMSP -> DEBU 00a Returning existing local MSP
2017-07-28 13:59:54.501 UTC [msp] GetDefaultSigningIdentity -> DEBU 00b Obtaining default signing identity
2017-07-28 13:59:54.502 UTC [msp] GetLocalMSP -> DEBU 00c Returning existing local MSP
2017-07-28 13:59:54.502 UTC [msp] GetDefaultSigningIdentity -> DEBU 00d Obtaining default signing identity
2017-07-28 13:59:54.502 UTC [msp/identity] Sign -> DEBU 00e Sign: plaintext: 0ABF060A1508021A0608DA86EDCB0522...ACF68FE9E0A272F967C57CA534C017C1 
2017-07-28 13:59:54.503 UTC [msp/identity] Sign -> DEBU 00f Sign: digest: 1D9F40B766213BFD1758E5193D66F53AB4F91B0E1ED95DA87AD02517367C644F 
2017-07-28 13:59:56.309 UTC [main] main -> INFO 010 Exiting.....
===================== Anchor peers for org "Org1MSP" on "mychannel" is updated successfully ===================== 

Updating anchor peers for org2...
CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.key
CORE_PEER_LOCALMSPID=Org2MSP
CORE_VM_ENDPOINT=unix:///host/var/run/docker.sock
CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/server.crt
CORE_PEER_TLS_ENABLED=true
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
CORE_PEER_ID=cli
CORE_LOGGING_LEVEL=DEBUG
CORE_PEER_ADDRESS=peer0.org2.example.com:7051
2017-07-28 13:59:56.950 UTC [msp] GetLocalMSP -> DEBU 001 Returning existing local MSP
2017-07-28 13:59:56.950 UTC [msp] GetDefaultSigningIdentity -> DEBU 002 Obtaining default signing identity
2017-07-28 13:59:57.184 UTC [channelCmd] InitCmdFactory -> INFO 003 Endorser and orderer connections initialized
2017-07-28 13:59:57.186 UTC [msp] GetLocalMSP -> DEBU 004 Returning existing local MSP
2017-07-28 13:59:57.186 UTC [msp] GetDefaultSigningIdentity -> DEBU 005 Obtaining default signing identity
2017-07-28 13:59:57.187 UTC [msp] GetLocalMSP -> DEBU 006 Returning existing local MSP
2017-07-28 13:59:57.187 UTC [msp] GetDefaultSigningIdentity -> DEBU 007 Obtaining default signing identity
2017-07-28 13:59:57.188 UTC [msp/identity] Sign -> DEBU 008 Sign: plaintext: 0A8C060A074F7267324D53501280062D...2A0641646D696E732A0641646D696E73 
2017-07-28 13:59:57.188 UTC [msp/identity] Sign -> DEBU 009 Sign: digest: 8DCA5F50BD0179D6B943CCE378C818C036F4BC66296DF12DC84A61A323349685 
2017-07-28 13:59:57.203 UTC [msp] GetLocalMSP -> DEBU 00a Returning existing local MSP
2017-07-28 13:59:57.203 UTC [msp] GetDefaultSigningIdentity -> DEBU 00b Obtaining default signing identity
2017-07-28 13:59:57.203 UTC [msp] GetLocalMSP -> DEBU 00c Returning existing local MSP
2017-07-28 13:59:57.204 UTC [msp] GetDefaultSigningIdentity -> DEBU 00d Obtaining default signing identity
2017-07-28 13:59:57.204 UTC [msp/identity] Sign -> DEBU 00e Sign: plaintext: 0AC3060A1508021A0608DD86EDCB0522...5095F810522F93A958F31F67A711F617 
2017-07-28 13:59:57.204 UTC [msp/identity] Sign -> DEBU 00f Sign: digest: C0BE88E27A1D60D7A03BAE968B67F0EE5A225CE091F3DBF761464A3879347843 
Error: EOF
Usage:
  peer channel update [flags]

Flags:
  -c, --channelID string   In case of a newChain command, the channel ID to create.
  -f, --file string        Configuration transaction file generated by a tool such as configtxgen for submitting to orderer

Global Flags:
      --cafile string                       Path to file containing PEM-encoded trusted certificate(s) for the ordering endpoint
      --logging-level string                Default logging level and overrides, see core.yaml for full syntax
  -o, --orderer string                      Ordering service endpoint
      --ordererTLSHostnameOverride string   The hostname override to use when validating the TLS connection to the orderer.
      --test.coverprofile string            Done (default "coverage.cov")
      --tls                                 Use TLS when communicating with the orderer endpoint
  -v, --version                             Display current version of fabric peer server

!!!!!!!!!!!!!!! Anchor peer update failed !!!!!!!!!!!!!!!!
========= ERROR !!! FAILED to execute End-2-End Scenario ===========
```