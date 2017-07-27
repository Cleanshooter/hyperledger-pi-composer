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
2017-07-27 22:31:04.032 UTC [msp] GetLocalMSP -> DEBU 001 Returning existing local MSP
2017-07-27 22:31:04.033 UTC [msp] GetDefaultSigningIdentity -> DEBU 002 Obtaining default signing identity
2017-07-27 22:31:04.267 UTC [channelCmd] InitCmdFactory -> INFO 003 Endorser and orderer connections initialized
2017-07-27 22:31:04.268 UTC [msp] GetLocalMSP -> DEBU 004 Returning existing local MSP
2017-07-27 22:31:04.268 UTC [msp] GetDefaultSigningIdentity -> DEBU 005 Obtaining default signing identity
2017-07-27 22:31:04.269 UTC [msp] GetLocalMSP -> DEBU 006 Returning existing local MSP
2017-07-27 22:31:04.269 UTC [msp] GetDefaultSigningIdentity -> DEBU 007 Obtaining default signing identity
2017-07-27 22:31:04.269 UTC [msp/identity] Sign -> DEBU 008 Sign: plaintext: 0A88060A074F7267314D535012FC052D...53616D706C65436F6E736F727469756D 
2017-07-27 22:31:04.269 UTC [msp/identity] Sign -> DEBU 009 Sign: digest: 79F4ABDB4014750E5C79D537EE914278105E82E0A4ACD540568468F2CA4B372E 
2017-07-27 22:31:04.279 UTC [msp] GetLocalMSP -> DEBU 00a Returning existing local MSP
2017-07-27 22:31:04.279 UTC [msp] GetDefaultSigningIdentity -> DEBU 00b Obtaining default signing identity
2017-07-27 22:31:04.279 UTC [msp] GetLocalMSP -> DEBU 00c Returning existing local MSP
2017-07-27 22:31:04.279 UTC [msp] GetDefaultSigningIdentity -> DEBU 00d Obtaining default signing identity
2017-07-27 22:31:04.279 UTC [msp/identity] Sign -> DEBU 00e Sign: plaintext: 0ABF060A1508021A0608A8D3E9CB0522...9A7053CAFBE64F6A8363612AAEAA79D7 
2017-07-27 22:31:04.280 UTC [msp/identity] Sign -> DEBU 00f Sign: digest: E1B989217A5D4F56135A7B458236DB839877C6192BF376FD69E3A3301114F324 
2017-07-27 22:31:11.335 UTC [msp] GetLocalMSP -> DEBU 010 Returning existing local MSP
2017-07-27 22:31:11.336 UTC [msp] GetDefaultSigningIdentity -> DEBU 011 Obtaining default signing identity
2017-07-27 22:31:11.337 UTC [msp] GetLocalMSP -> DEBU 012 Returning existing local MSP
2017-07-27 22:31:11.337 UTC [msp] GetDefaultSigningIdentity -> DEBU 013 Obtaining default signing identity
2017-07-27 22:31:11.338 UTC [msp/identity] Sign -> DEBU 014 Sign: plaintext: 0ABF060A1508021A0608AFD3E9CB0522...904289374BA612080A021A0012021A00 
2017-07-27 22:31:11.339 UTC [msp/identity] Sign -> DEBU 015 Sign: digest: 8B62AB1B5573B1F8CC941BCE855B9EA8AFE7E88B5BAAA2FF0D74077110C998AF 
2017-07-27 22:31:11.365 UTC [channelCmd] readBlock -> DEBU 016 Got status: &{NOT_FOUND}
2017-07-27 22:31:11.366 UTC [msp] GetLocalMSP -> DEBU 017 Returning existing local MSP
2017-07-27 22:31:11.367 UTC [msp] GetDefaultSigningIdentity -> DEBU 018 Obtaining default signing identity
2017-07-27 22:31:11.609 UTC [channelCmd] InitCmdFactory -> INFO 019 Endorser and orderer connections initialized
2017-07-27 22:31:11.809 UTC [msp] GetLocalMSP -> DEBU 01a Returning existing local MSP
2017-07-27 22:31:11.809 UTC [msp] GetDefaultSigningIdentity -> DEBU 01b Obtaining default signing identity
2017-07-27 22:31:11.810 UTC [msp] GetLocalMSP -> DEBU 01c Returning existing local MSP
2017-07-27 22:31:11.810 UTC [msp] GetDefaultSigningIdentity -> DEBU 01d Obtaining default signing identity
2017-07-27 22:31:11.810 UTC [msp/identity] Sign -> DEBU 01e Sign: plaintext: 0ABF060A1508021A0608AFD3E9CB0522...3A11ECCA034412080A021A0012021A00 
2017-07-27 22:31:11.810 UTC [msp/identity] Sign -> DEBU 01f Sign: digest: 189F84E750648214C8C1D6F061D30B3EB2BC11E107A772791DED4BC7A0FE41F9 
2017-07-27 22:31:11.872 UTC [channelCmd] readBlock -> DEBU 020 Got status: &{NOT_FOUND}
2017-07-27 22:31:11.873 UTC [msp] GetLocalMSP -> DEBU 021 Returning existing local MSP
2017-07-27 22:31:11.873 UTC [msp] GetDefaultSigningIdentity -> DEBU 022 Obtaining default signing identity
2017-07-27 22:31:12.056 UTC [channelCmd] InitCmdFactory -> INFO 023 Endorser and orderer connections initialized
2017-07-27 22:31:12.257 UTC [msp] GetLocalMSP -> DEBU 024 Returning existing local MSP
2017-07-27 22:31:12.258 UTC [msp] GetDefaultSigningIdentity -> DEBU 025 Obtaining default signing identity
2017-07-27 22:31:12.260 UTC [msp] GetLocalMSP -> DEBU 026 Returning existing local MSP
2017-07-27 22:31:12.261 UTC [msp] GetDefaultSigningIdentity -> DEBU 027 Obtaining default signing identity
2017-07-27 22:31:12.262 UTC [msp/identity] Sign -> DEBU 028 Sign: plaintext: 0ABF060A1508021A0608B0D3E9CB0522...8A0A237E232512080A021A0012021A00 
2017-07-27 22:31:12.262 UTC [msp/identity] Sign -> DEBU 029 Sign: digest: D6A952EF6AE2BA66CC9458820B0DA1D917B59B49D47D918DD0D40A1554F60170 
2017-07-27 22:31:12.296 UTC [channelCmd] readBlock -> DEBU 02a Got status: &{NOT_FOUND}
2017-07-27 22:31:12.297 UTC [msp] GetLocalMSP -> DEBU 02b Returning existing local MSP
2017-07-27 22:31:12.297 UTC [msp] GetDefaultSigningIdentity -> DEBU 02c Obtaining default signing identity
2017-07-27 22:31:12.534 UTC [channelCmd] InitCmdFactory -> INFO 02d Endorser and orderer connections initialized
2017-07-27 22:31:12.735 UTC [msp] GetLocalMSP -> DEBU 02e Returning existing local MSP
2017-07-27 22:31:12.735 UTC [msp] GetDefaultSigningIdentity -> DEBU 02f Obtaining default signing identity
2017-07-27 22:31:12.735 UTC [msp] GetLocalMSP -> DEBU 030 Returning existing local MSP
2017-07-27 22:31:12.735 UTC [msp] GetDefaultSigningIdentity -> DEBU 031 Obtaining default signing identity
2017-07-27 22:31:12.735 UTC [msp/identity] Sign -> DEBU 032 Sign: plaintext: 0ABF060A1508021A0608B0D3E9CB0522...F49912C77C0612080A021A0012021A00 
2017-07-27 22:31:12.735 UTC [msp/identity] Sign -> DEBU 033 Sign: digest: F3E607C9E15D8D5B874030C6424F634B50129199E2BF705F77E5D6B001DBCA26 
2017-07-27 22:31:12.757 UTC [channelCmd] readBlock -> DEBU 034 Got status: &{NOT_FOUND}
2017-07-27 22:31:12.757 UTC [msp] GetLocalMSP -> DEBU 035 Returning existing local MSP
2017-07-27 22:31:12.757 UTC [msp] GetDefaultSigningIdentity -> DEBU 036 Obtaining default signing identity
2017-07-27 22:31:12.937 UTC [channelCmd] InitCmdFactory -> INFO 037 Endorser and orderer connections initialized
2017-07-27 22:31:13.137 UTC [msp] GetLocalMSP -> DEBU 038 Returning existing local MSP
2017-07-27 22:31:13.137 UTC [msp] GetDefaultSigningIdentity -> DEBU 039 Obtaining default signing identity
2017-07-27 22:31:13.138 UTC [msp] GetLocalMSP -> DEBU 03a Returning existing local MSP
2017-07-27 22:31:13.138 UTC [msp] GetDefaultSigningIdentity -> DEBU 03b Obtaining default signing identity
2017-07-27 22:31:13.138 UTC [msp/identity] Sign -> DEBU 03c Sign: plaintext: 0ABF060A1508021A0608B1D3E9CB0522...CA9A86C45D6112080A021A0012021A00 
2017-07-27 22:31:13.138 UTC [msp/identity] Sign -> DEBU 03d Sign: digest: 2818D8CF17C35AF21DC96E948AE10E1D803D119DDA71C892C21BE3980D94B407 
2017-07-27 22:31:13.158 UTC [channelCmd] readBlock -> DEBU 03e Got status: &{NOT_FOUND}
2017-07-27 22:31:13.159 UTC [msp] GetLocalMSP -> DEBU 03f Returning existing local MSP
2017-07-27 22:31:13.159 UTC [msp] GetDefaultSigningIdentity -> DEBU 040 Obtaining default signing identity
2017-07-27 22:31:13.370 UTC [channelCmd] InitCmdFactory -> INFO 041 Endorser and orderer connections initialized
2017-07-27 22:31:13.571 UTC [msp] GetLocalMSP -> DEBU 042 Returning existing local MSP
2017-07-27 22:31:13.571 UTC [msp] GetDefaultSigningIdentity -> DEBU 043 Obtaining default signing identity
2017-07-27 22:31:13.571 UTC [msp] GetLocalMSP -> DEBU 044 Returning existing local MSP
2017-07-27 22:31:13.572 UTC [msp] GetDefaultSigningIdentity -> DEBU 045 Obtaining default signing identity
2017-07-27 22:31:13.572 UTC [msp/identity] Sign -> DEBU 046 Sign: plaintext: 0ABF060A1508021A0608B1D3E9CB0522...FFDF33774EE112080A021A0012021A00 
2017-07-27 22:31:13.572 UTC [msp/identity] Sign -> DEBU 047 Sign: digest: 0691E4304753877D880B89B5FD3BB372A7A847DD693358180A3ADA6F715C381E 
2017-07-27 22:31:13.588 UTC [channelCmd] readBlock -> DEBU 048 Got status: &{NOT_FOUND}
2017-07-27 22:31:13.589 UTC [msp] GetLocalMSP -> DEBU 049 Returning existing local MSP
2017-07-27 22:31:13.589 UTC [msp] GetDefaultSigningIdentity -> DEBU 04a Obtaining default signing identity
2017-07-27 22:31:13.763 UTC [channelCmd] InitCmdFactory -> INFO 04b Endorser and orderer connections initialized
2017-07-27 22:31:13.964 UTC [msp] GetLocalMSP -> DEBU 04c Returning existing local MSP
2017-07-27 22:31:13.964 UTC [msp] GetDefaultSigningIdentity -> DEBU 04d Obtaining default signing identity
2017-07-27 22:31:13.964 UTC [msp] GetLocalMSP -> DEBU 04e Returning existing local MSP
2017-07-27 22:31:13.964 UTC [msp] GetDefaultSigningIdentity -> DEBU 04f Obtaining default signing identity
2017-07-27 22:31:13.965 UTC [msp/identity] Sign -> DEBU 050 Sign: plaintext: 0ABF060A1508021A0608B1D3E9CB0522...2513216C541C12080A021A0012021A00 
2017-07-27 22:31:13.965 UTC [msp/identity] Sign -> DEBU 051 Sign: digest: FCADAFD57EE55C0219EE6C443A04A5B3C7F0C159A54037A5BFE83E4AF6696011 
2017-07-27 22:31:14.023 UTC [channelCmd] readBlock -> DEBU 052 Got status: &{NOT_FOUND}
2017-07-27 22:31:14.025 UTC [msp] GetLocalMSP -> DEBU 053 Returning existing local MSP
2017-07-27 22:31:14.025 UTC [msp] GetDefaultSigningIdentity -> DEBU 054 Obtaining default signing identity
2017-07-27 22:31:14.280 UTC [channelCmd] InitCmdFactory -> INFO 055 Endorser and orderer connections initialized
2017-07-27 22:31:14.480 UTC [msp] GetLocalMSP -> DEBU 056 Returning existing local MSP
2017-07-27 22:31:14.480 UTC [msp] GetDefaultSigningIdentity -> DEBU 057 Obtaining default signing identity
2017-07-27 22:31:14.481 UTC [msp] GetLocalMSP -> DEBU 058 Returning existing local MSP
2017-07-27 22:31:14.481 UTC [msp] GetDefaultSigningIdentity -> DEBU 059 Obtaining default signing identity
2017-07-27 22:31:14.481 UTC [msp/identity] Sign -> DEBU 05a Sign: plaintext: 0ABF060A1508021A0608B2D3E9CB0522...16ED2C73141312080A021A0012021A00 
2017-07-27 22:31:14.481 UTC [msp/identity] Sign -> DEBU 05b Sign: digest: FD241C6AB375FF4C529E73E3C352895BBCF35B4192E8B31B378E0B40369227B0 
2017-07-27 22:31:14.501 UTC [channelCmd] readBlock -> DEBU 05c Got status: &{NOT_FOUND}
2017-07-27 22:31:14.501 UTC [msp] GetLocalMSP -> DEBU 05d Returning existing local MSP
2017-07-27 22:31:14.501 UTC [msp] GetDefaultSigningIdentity -> DEBU 05e Obtaining default signing identity
2017-07-27 22:31:14.684 UTC [channelCmd] InitCmdFactory -> INFO 05f Endorser and orderer connections initialized
2017-07-27 22:31:14.885 UTC [msp] GetLocalMSP -> DEBU 060 Returning existing local MSP
2017-07-27 22:31:14.885 UTC [msp] GetDefaultSigningIdentity -> DEBU 061 Obtaining default signing identity
2017-07-27 22:31:14.904 UTC [msp] GetLocalMSP -> DEBU 062 Returning existing local MSP
2017-07-27 22:31:14.905 UTC [msp] GetDefaultSigningIdentity -> DEBU 063 Obtaining default signing identity
2017-07-27 22:31:14.905 UTC [msp/identity] Sign -> DEBU 064 Sign: plaintext: 0ABF060A1508021A0608B2D3E9CB0522...5A264750C40812080A021A0012021A00 
2017-07-27 22:31:14.905 UTC [msp/identity] Sign -> DEBU 065 Sign: digest: D05753862ADBDF2A1272CBE622D5E60DC14D86452DC5508EA213F1FDB68211AD 
2017-07-27 22:31:14.936 UTC [channelCmd] readBlock -> DEBU 066 Got status: &{NOT_FOUND}
2017-07-27 22:31:14.937 UTC [msp] GetLocalMSP -> DEBU 067 Returning existing local MSP
2017-07-27 22:31:14.937 UTC [msp] GetDefaultSigningIdentity -> DEBU 068 Obtaining default signing identity
2017-07-27 22:31:15.172 UTC [channelCmd] InitCmdFactory -> INFO 069 Endorser and orderer connections initialized
2017-07-27 22:31:15.373 UTC [msp] GetLocalMSP -> DEBU 06a Returning existing local MSP
2017-07-27 22:31:15.373 UTC [msp] GetDefaultSigningIdentity -> DEBU 06b Obtaining default signing identity
2017-07-27 22:31:15.373 UTC [msp] GetLocalMSP -> DEBU 06c Returning existing local MSP
2017-07-27 22:31:15.374 UTC [msp] GetDefaultSigningIdentity -> DEBU 06d Obtaining default signing identity
2017-07-27 22:31:15.374 UTC [msp/identity] Sign -> DEBU 06e Sign: plaintext: 0ABF060A1508021A0608B3D3E9CB0522...C1F122D8CA9112080A021A0012021A00 
2017-07-27 22:31:15.374 UTC [msp/identity] Sign -> DEBU 06f Sign: digest: D2639AECB123EB520CEF015E7E9E7EED1536C459D33D1ED680654D96FBC3D116 
2017-07-27 22:31:15.393 UTC [channelCmd] readBlock -> DEBU 070 Got status: &{NOT_FOUND}
2017-07-27 22:31:15.393 UTC [msp] GetLocalMSP -> DEBU 071 Returning existing local MSP
2017-07-27 22:31:15.393 UTC [msp] GetDefaultSigningIdentity -> DEBU 072 Obtaining default signing identity
2017-07-27 22:31:15.582 UTC [channelCmd] InitCmdFactory -> INFO 073 Endorser and orderer connections initialized
2017-07-27 22:31:15.782 UTC [msp] GetLocalMSP -> DEBU 074 Returning existing local MSP
2017-07-27 22:31:15.782 UTC [msp] GetDefaultSigningIdentity -> DEBU 075 Obtaining default signing identity
2017-07-27 22:31:15.783 UTC [msp] GetLocalMSP -> DEBU 076 Returning existing local MSP
2017-07-27 22:31:15.783 UTC [msp] GetDefaultSigningIdentity -> DEBU 077 Obtaining default signing identity
2017-07-27 22:31:15.783 UTC [msp/identity] Sign -> DEBU 078 Sign: plaintext: 0ABF060A1508021A0608B3D3E9CB0522...AF46D77340D812080A021A0012021A00 
2017-07-27 22:31:15.783 UTC [msp/identity] Sign -> DEBU 079 Sign: digest: 874D83BDB108CE9F3B31A81D8A78B9189835B71AC79BB38ADB601FBA96B1332E 
2017-07-27 22:31:15.808 UTC [channelCmd] readBlock -> DEBU 07a Got status: &{NOT_FOUND}
2017-07-27 22:31:15.809 UTC [msp] GetLocalMSP -> DEBU 07b Returning existing local MSP
2017-07-27 22:31:15.810 UTC [msp] GetDefaultSigningIdentity -> DEBU 07c Obtaining default signing identity
2017-07-27 22:31:16.057 UTC [channelCmd] InitCmdFactory -> INFO 07d Endorser and orderer connections initialized
2017-07-27 22:31:16.258 UTC [msp] GetLocalMSP -> DEBU 07e Returning existing local MSP
2017-07-27 22:31:16.258 UTC [msp] GetDefaultSigningIdentity -> DEBU 07f Obtaining default signing identity
2017-07-27 22:31:16.258 UTC [msp] GetLocalMSP -> DEBU 080 Returning existing local MSP
2017-07-27 22:31:16.258 UTC [msp] GetDefaultSigningIdentity -> DEBU 081 Obtaining default signing identity
2017-07-27 22:31:16.259 UTC [msp/identity] Sign -> DEBU 082 Sign: plaintext: 0ABF060A1508021A0608B4D3E9CB0522...78EBBF14E58212080A021A0012021A00 
2017-07-27 22:31:16.259 UTC [msp/identity] Sign -> DEBU 083 Sign: digest: F33EF4035BDE6757E44CA730C72D9CE9FB278A1BF25194F6E9759DAE557673F7 
2017-07-27 22:31:16.278 UTC [channelCmd] readBlock -> DEBU 084 Got status: &{NOT_FOUND}
2017-07-27 22:31:16.278 UTC [msp] GetLocalMSP -> DEBU 085 Returning existing local MSP
2017-07-27 22:31:16.278 UTC [msp] GetDefaultSigningIdentity -> DEBU 086 Obtaining default signing identity
2017-07-27 22:31:16.456 UTC [channelCmd] InitCmdFactory -> INFO 087 Endorser and orderer connections initialized
Error: timeout waiting for channel creation
Usage:
  peer channel create [flags]

Flags:
  -c, --channelID string   In case of a newChain command, the channel ID to create.
  -f, --file string        Configuration transaction file generated by a tool such as configtxgen for submitting to orderer
  -t, --timeout int        Channel creation timeout (default 5)

Global Flags:
      --cafile string                       Path to file containing PEM-encoded trusted certificate(s) for the ordering endpoint
      --logging-level string                Default logging level and overrides, see core.yaml for full syntax
  -o, --orderer string                      Ordering service endpoint
      --ordererTLSHostnameOverride string   The hostname override to use when validating the TLS connection to the orderer.
      --test.coverprofile string            Done (default "coverage.cov")
      --tls                                 Use TLS when communicating with the orderer endpoint
  -v, --version                             Display current version of fabric peer server

!!!!!!!!!!!!!!! Channel creation failed !!!!!!!!!!!!!!!!
========= ERROR !!! FAILED to execute End-2-End Scenario ===========
```