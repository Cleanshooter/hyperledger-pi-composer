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
## Orderer Log

```sh
2017-07-28 13:12:39.695 UTC [orderer/server/main] initializeSecureServerConfig -> INFO 002 Starting orderer with TLS enabled
2017-07-28 13:12:39.706 UTC [bccsp_sw] openKeyStore -> DEBU 003 KeyStore opened at [/var/hyperledger/orderer/msp/keystore]...done
2017-07-28 13:12:39.707 UTC [bccsp] initBCCSP -> DEBU 004 Initialize BCCSP [SW]
2017-07-28 13:12:39.707 UTC [msp] getPemMaterialFromDir -> DEBU 005 Reading directory /var/hyperledger/orderer/msp/signcerts
2017-07-28 13:12:39.707 UTC [msp] getPemMaterialFromDir -> DEBU 006 Inspecting file /var/hyperledger/orderer/msp/signcerts/orderer.example.com-cert.pem
2017-07-28 13:12:39.707 UTC [msp] getPemMaterialFromDir -> DEBU 007 Reading directory /var/hyperledger/orderer/msp/cacerts
2017-07-28 13:12:39.708 UTC [msp] getPemMaterialFromDir -> DEBU 008 Inspecting file /var/hyperledger/orderer/msp/cacerts/ca.example.com-cert.pem
2017-07-28 13:12:39.708 UTC [msp] getPemMaterialFromDir -> DEBU 009 Reading directory /var/hyperledger/orderer/msp/admincerts
2017-07-28 13:12:39.708 UTC [msp] getPemMaterialFromDir -> DEBU 00a Inspecting file /var/hyperledger/orderer/msp/admincerts/Admin@example.com-cert.pem
2017-07-28 13:12:39.709 UTC [msp] getPemMaterialFromDir -> DEBU 00b Reading directory /var/hyperledger/orderer/msp/intermediatecerts
2017-07-28 13:12:39.709 UTC [msp] getMspConfig -> DEBU 00c Intermediate certs folder not found at [/var/hyperledger/orderer/msp/intermediatecerts]. Skipping. [stat /var/hyperledger/orderer/msp/intermediatecerts: no such file or directory]
2017-07-28 13:12:39.709 UTC [msp] getPemMaterialFromDir -> DEBU 00d Reading directory /var/hyperledger/orderer/msp/tlscacerts
2017-07-28 13:12:39.709 UTC [msp] getPemMaterialFromDir -> DEBU 00e Inspecting file /var/hyperledger/orderer/msp/tlscacerts/tlsca.example.com-cert.pem
2017-07-28 13:12:39.709 UTC [msp] getPemMaterialFromDir -> DEBU 00f Reading directory /var/hyperledger/orderer/msp/tlsintermediatecerts
2017-07-28 13:12:39.710 UTC [msp] getMspConfig -> DEBU 010 TLS intermediate certs folder not found at [/var/hyperledger/orderer/msp/tlsintermediatecerts]. Skipping. [stat /var/hyperledger/orderer/msp/tlsintermediatecerts: no such file or directory]
2017-07-28 13:12:39.710 UTC [msp] getPemMaterialFromDir -> DEBU 011 Reading directory /var/hyperledger/orderer/msp/crls
2017-07-28 13:12:39.710 UTC [msp] getMspConfig -> DEBU 012 crls folder not found at [/var/hyperledger/orderer/msp/crls]. Skipping. [stat /var/hyperledger/orderer/msp/crls: no such file or directory]
2017-07-28 13:12:39.710 UTC [msp] getMspConfig -> DEBU 013 MSP configuration file not found at [/var/hyperledger/orderer/msp/config.yaml]: [stat /var/hyperledger/orderer/msp/config.yaml: no such file or directory]
2017-07-28 13:12:39.711 UTC [msp] NewBccspMsp -> DEBU 014 Creating BCCSP-based MSP instance
2017-07-28 13:12:39.711 UTC [msp] GetLocalMSP -> DEBU 015 Created new local MSP
2017-07-28 13:12:39.711 UTC [msp] Setup -> DEBU 016 Setting up MSP instance OrdererMSP
2017-07-28 13:12:39.713 UTC [msp/identity] newIdentity -> DEBU 017 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:12:39.754 UTC [msp/identity] newIdentity -> DEBU 018 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:12:39.789 UTC [msp/identity] newIdentity -> DEBU 019 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:12:39.855 UTC [msp/identity] newIdentity -> DEBU 01a Creating identity instance for ID &{OrdererMSP 373d501a27deab7aff1c08731256ff6799484e1ae836cb098108701e56368642}
2017-07-28 13:12:39.889 UTC [bccsp_sw] loadPrivateKey -> DEBU 01b Loading private key [8f9ab208039f664d9ee41c0467ff32382d1ffa8531d4ba02d9a1749cf3a75f6d] at [/var/hyperledger/orderer/msp/keystore/8f9ab208039f664d9ee41c0467ff32382d1ffa8531d4ba02d9a1749cf3a75f6d_sk]...
2017-07-28 13:12:39.899 UTC [msp/identity] newIdentity -> DEBU 01c Creating identity instance for ID &{OrdererMSP 373d501a27deab7aff1c08731256ff6799484e1ae836cb098108701e56368642}
2017-07-28 13:12:39.963 UTC [msp] Validate -> DEBU 01d MSP OrdererMSP validating identity
2017-07-28 13:12:39.994 UTC [orderer/server/main] createLedgerFactory -> DEBU 01e Ledger dir: /var/hyperledger/production/orderer
2017-07-28 13:12:39.994 UTC [kvledger.util] CreateDirIfMissing -> DEBU 01f CreateDirIfMissing [/var/hyperledger/production/orderer/index/]
2017-07-28 13:12:39.994 UTC [kvledger.util] logDirStatus -> DEBU 020 Before creating dir - [/var/hyperledger/production/orderer/index/] does not exist
2017-07-28 13:12:39.995 UTC [kvledger.util] logDirStatus -> DEBU 021 After creating dir - [/var/hyperledger/production/orderer/index/] exists
2017-07-28 13:12:40.015 UTC [fsblkstorage] newBlockfileMgr -> DEBU 022 newBlockfileMgr() initializing file-based block storage for ledger: testchainid 
2017-07-28 13:12:40.015 UTC [kvledger.util] CreateDirIfMissing -> DEBU 023 CreateDirIfMissing [/var/hyperledger/production/orderer/chains/testchainid/]
2017-07-28 13:12:40.016 UTC [kvledger.util] logDirStatus -> DEBU 024 Before creating dir - [/var/hyperledger/production/orderer/chains/testchainid/] does not exist
2017-07-28 13:12:40.016 UTC [kvledger.util] logDirStatus -> DEBU 025 After creating dir - [/var/hyperledger/production/orderer/chains/testchainid/] exists
2017-07-28 13:12:40.021 UTC [fsblkstorage] syncCPInfoFromFS -> DEBU 026 Starting checkpoint=latestFileChunkSuffixNum=[0], latestFileChunksize=[0], isChainEmpty=[true], lastBlockNumber=[0]
2017-07-28 13:12:40.022 UTC [fsblkstorage] syncCPInfoFromFS -> DEBU 027 status of file [/var/hyperledger/production/orderer/chains/testchainid/blockfile_000000]: exists=[false], size=[0]
2017-07-28 13:12:40.022 UTC [fsblkstorage] newBlockIndex -> DEBU 028 newBlockIndex() - indexItems:[[BlockNum]]
2017-07-28 13:12:40.022 UTC [fsblkstorage] newBlockfileStream -> DEBU 029 newBlockfileStream(): filePath=[/var/hyperledger/production/orderer/chains/testchainid/blockfile_000000], startOffset=[0]
2017-07-28 13:12:40.023 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 02a Finished reading file number [0]
2017-07-28 13:12:40.023 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 02b blockbytes [0] read from file [0]
2017-07-28 13:12:40.028 UTC [fsblkstorage] indexBlock -> DEBU 02c Indexing block [blockNum=0, blockHash=[]byte{0x4e, 0x1, 0x12, 0xda, 0x95, 0x75, 0x60, 0x7e, 0x18, 0xf6, 0xee, 0xb1, 0x29, 0x1d, 0xe7, 0xad, 0x64, 0x8, 0x93, 0xaa, 0x79, 0x60, 0x28, 0xbc, 0x4d, 0xe4, 0x83, 0x91, 0x5f, 0x2e, 0xc3, 0x4d} txOffsets=
txId=f02e791eb6ad90b412db56ec80f806be5eadc204869ecca90e53700d96ca453d locPointer=offset=38, bytesLength=9014
]
2017-07-28 13:12:40.029 UTC [fsblkstorage] updateCheckpoint -> DEBU 02d Broadcasting about update checkpointInfo: latestFileChunkSuffixNum=[0], latestFileChunksize=[9057], isChainEmpty=[false], lastBlockNumber=[0]
2017-07-28 13:12:40.029 UTC [fsblkstorage] newBlockfileStream -> DEBU 02e newBlockfileStream(): filePath=[/var/hyperledger/production/orderer/chains/testchainid/blockfile_000000], startOffset=[0]
2017-07-28 13:12:40.030 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 02f Remaining bytes=[9057], Going to peek [8] bytes
2017-07-28 13:12:40.030 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 030 Returning blockbytes - length=[9055], placementInfo={fileNum=[0], startOffset=[0], bytesOffset=[2]}
2017-07-28 13:12:40.030 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 031 blockbytes [9055] read from file [0]
2017-07-28 13:12:40.031 UTC [fsblkstorage] newBlockfileStream -> DEBU 032 newBlockfileStream(): filePath=[/var/hyperledger/production/orderer/chains/testchainid/blockfile_000000], startOffset=[0]
2017-07-28 13:12:40.031 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 033 Remaining bytes=[9057], Going to peek [8] bytes
2017-07-28 13:12:40.031 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 034 Returning blockbytes - length=[9055], placementInfo={fileNum=[0], startOffset=[0], bytesOffset=[2]}
2017-07-28 13:12:40.031 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 035 blockbytes [9055] read from file [0]
2017-07-28 13:12:40.032 UTC [common/config] NewStandardValues -> DEBU 036 Initializing protos for *config.ChannelProtos
2017-07-28 13:12:40.032 UTC [common/config] initializeProtosStruct -> DEBU 037 Processing field: HashingAlgorithm
2017-07-28 13:12:40.032 UTC [common/config] initializeProtosStruct -> DEBU 038 Processing field: BlockDataHashingStructure
2017-07-28 13:12:40.032 UTC [common/config] initializeProtosStruct -> DEBU 039 Processing field: OrdererAddresses
2017-07-28 13:12:40.032 UTC [common/config] initializeProtosStruct -> DEBU 03a Processing field: Consortium
2017-07-28 13:12:40.034 UTC [common/configtx] addToMap -> DEBU 03b Adding to config map: [Groups] /Channel
2017-07-28 13:12:40.034 UTC [common/configtx] addToMap -> DEBU 03c Adding to config map: [Groups] /Channel/Consortiums
2017-07-28 13:12:40.035 UTC [common/configtx] addToMap -> DEBU 03d Adding to config map: [Groups] /Channel/Consortiums/SampleConsortium
2017-07-28 13:12:40.035 UTC [common/configtx] addToMap -> DEBU 03e Adding to config map: [Groups] /Channel/Consortiums/SampleConsortium/Org1MSP
2017-07-28 13:12:40.035 UTC [common/configtx] addToMap -> DEBU 03f Adding to config map: [Values] /Channel/Consortiums/SampleConsortium/Org1MSP/MSP
2017-07-28 13:12:40.036 UTC [common/configtx] addToMap -> DEBU 040 Adding to config map: [Policy] /Channel/Consortiums/SampleConsortium/Org1MSP/Writers
2017-07-28 13:12:40.036 UTC [common/configtx] addToMap -> DEBU 041 Adding to config map: [Policy] /Channel/Consortiums/SampleConsortium/Org1MSP/Admins
2017-07-28 13:12:40.036 UTC [common/configtx] addToMap -> DEBU 042 Adding to config map: [Policy] /Channel/Consortiums/SampleConsortium/Org1MSP/Readers
2017-07-28 13:12:40.036 UTC [common/configtx] addToMap -> DEBU 043 Adding to config map: [Groups] /Channel/Consortiums/SampleConsortium/Org2MSP
2017-07-28 13:12:40.037 UTC [common/configtx] addToMap -> DEBU 044 Adding to config map: [Values] /Channel/Consortiums/SampleConsortium/Org2MSP/MSP
2017-07-28 13:12:40.037 UTC [common/configtx] addToMap -> DEBU 045 Adding to config map: [Policy] /Channel/Consortiums/SampleConsortium/Org2MSP/Admins
2017-07-28 13:12:40.037 UTC [common/configtx] addToMap -> DEBU 046 Adding to config map: [Policy] /Channel/Consortiums/SampleConsortium/Org2MSP/Readers
2017-07-28 13:12:40.037 UTC [common/configtx] addToMap -> DEBU 047 Adding to config map: [Policy] /Channel/Consortiums/SampleConsortium/Org2MSP/Writers
2017-07-28 13:12:40.038 UTC [common/configtx] addToMap -> DEBU 048 Adding to config map: [Values] /Channel/Consortiums/SampleConsortium/ChannelCreationPolicy
2017-07-28 13:12:40.038 UTC [common/configtx] addToMap -> DEBU 049 Adding to config map: [Policy] /Channel/Consortiums/Admins
2017-07-28 13:12:40.038 UTC [common/configtx] addToMap -> DEBU 04a Adding to config map: [Groups] /Channel/Orderer
2017-07-28 13:12:40.038 UTC [common/configtx] addToMap -> DEBU 04b Adding to config map: [Groups] /Channel/Orderer/OrdererOrg
2017-07-28 13:12:40.039 UTC [common/configtx] addToMap -> DEBU 04c Adding to config map: [Values] /Channel/Orderer/OrdererOrg/MSP
2017-07-28 13:12:40.039 UTC [common/configtx] addToMap -> DEBU 04d Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Writers
2017-07-28 13:12:40.039 UTC [common/configtx] addToMap -> DEBU 04e Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Admins
2017-07-28 13:12:40.039 UTC [common/configtx] addToMap -> DEBU 04f Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Readers
2017-07-28 13:12:40.040 UTC [common/configtx] addToMap -> DEBU 050 Adding to config map: [Values] /Channel/Orderer/BatchSize
2017-07-28 13:12:40.040 UTC [common/configtx] addToMap -> DEBU 051 Adding to config map: [Values] /Channel/Orderer/BatchTimeout
2017-07-28 13:12:40.040 UTC [common/configtx] addToMap -> DEBU 052 Adding to config map: [Values] /Channel/Orderer/ChannelRestrictions
2017-07-28 13:12:40.040 UTC [common/configtx] addToMap -> DEBU 053 Adding to config map: [Values] /Channel/Orderer/ConsensusType
2017-07-28 13:12:40.041 UTC [common/configtx] addToMap -> DEBU 054 Adding to config map: [Policy] /Channel/Orderer/BlockValidation
2017-07-28 13:12:40.041 UTC [common/configtx] addToMap -> DEBU 055 Adding to config map: [Policy] /Channel/Orderer/Readers
2017-07-28 13:12:40.041 UTC [common/configtx] addToMap -> DEBU 056 Adding to config map: [Policy] /Channel/Orderer/Writers
2017-07-28 13:12:40.041 UTC [common/configtx] addToMap -> DEBU 057 Adding to config map: [Policy] /Channel/Orderer/Admins
2017-07-28 13:12:40.042 UTC [common/configtx] addToMap -> DEBU 058 Adding to config map: [Values] /Channel/HashingAlgorithm
2017-07-28 13:12:40.042 UTC [common/configtx] addToMap -> DEBU 059 Adding to config map: [Values] /Channel/BlockDataHashingStructure
2017-07-28 13:12:40.042 UTC [common/configtx] addToMap -> DEBU 05a Adding to config map: [Values] /Channel/OrdererAddresses
2017-07-28 13:12:40.042 UTC [common/configtx] addToMap -> DEBU 05b Adding to config map: [Policy] /Channel/Writers
2017-07-28 13:12:40.043 UTC [common/configtx] addToMap -> DEBU 05c Adding to config map: [Policy] /Channel/Admins
2017-07-28 13:12:40.043 UTC [common/configtx] addToMap -> DEBU 05d Adding to config map: [Policy] /Channel/Readers
2017-07-28 13:12:40.043 UTC [common/configtx] processConfig -> DEBU 05e Beginning new config for channel testchainid
2017-07-28 13:12:40.043 UTC [common/config] NewStandardValues -> DEBU 05f Initializing protos for *config.ChannelProtos
2017-07-28 13:12:40.043 UTC [common/config] initializeProtosStruct -> DEBU 060 Processing field: HashingAlgorithm
2017-07-28 13:12:40.044 UTC [common/config] initializeProtosStruct -> DEBU 061 Processing field: BlockDataHashingStructure
2017-07-28 13:12:40.044 UTC [common/config] initializeProtosStruct -> DEBU 062 Processing field: OrdererAddresses
2017-07-28 13:12:40.044 UTC [common/config] initializeProtosStruct -> DEBU 063 Processing field: Consortium
2017-07-28 13:12:40.044 UTC [policies] ProposePolicy -> DEBU 064 Proposed new policy Writers for Channel
2017-07-28 13:12:40.044 UTC [policies] ProposePolicy -> DEBU 065 Proposed new policy Admins for Channel
2017-07-28 13:12:40.045 UTC [policies] ProposePolicy -> DEBU 066 Proposed new policy Readers for Channel
2017-07-28 13:12:40.045 UTC [policies] ProposePolicy -> DEBU 067 Proposed new policy Admins for Consortiums
2017-07-28 13:12:40.045 UTC [common/config] NewStandardValues -> DEBU 068 Initializing protos for *config.ConsortiumProtos
2017-07-28 13:12:40.045 UTC [common/config] initializeProtosStruct -> DEBU 069 Processing field: ChannelCreationPolicy
2017-07-28 13:12:40.046 UTC [common/config] NewStandardValues -> DEBU 06a Initializing protos for *config.OrganizationProtos
2017-07-28 13:12:40.046 UTC [common/config] initializeProtosStruct -> DEBU 06b Processing field: MSP
2017-07-28 13:12:40.047 UTC [policies] ProposePolicy -> DEBU 06c Proposed new policy Writers for Org1MSP
2017-07-28 13:12:40.047 UTC [policies] ProposePolicy -> DEBU 06d Proposed new policy Admins for Org1MSP
2017-07-28 13:12:40.047 UTC [policies] ProposePolicy -> DEBU 06e Proposed new policy Readers for Org1MSP
2017-07-28 13:12:40.048 UTC [common/config] NewStandardValues -> DEBU 06f Initializing protos for *config.OrganizationProtos
2017-07-28 13:12:40.048 UTC [common/config] initializeProtosStruct -> DEBU 070 Processing field: MSP
2017-07-28 13:12:40.048 UTC [policies] ProposePolicy -> DEBU 071 Proposed new policy Admins for Org2MSP
2017-07-28 13:12:40.048 UTC [policies] ProposePolicy -> DEBU 072 Proposed new policy Readers for Org2MSP
2017-07-28 13:12:40.049 UTC [policies] ProposePolicy -> DEBU 073 Proposed new policy Writers for Org2MSP
2017-07-28 13:12:40.049 UTC [common/config] NewStandardValues -> DEBU 074 Initializing protos for *config.OrdererProtos
2017-07-28 13:12:40.049 UTC [common/config] initializeProtosStruct -> DEBU 075 Processing field: ConsensusType
2017-07-28 13:12:40.050 UTC [common/config] initializeProtosStruct -> DEBU 076 Processing field: BatchSize
2017-07-28 13:12:40.050 UTC [common/config] initializeProtosStruct -> DEBU 077 Processing field: BatchTimeout
2017-07-28 13:12:40.050 UTC [common/config] initializeProtosStruct -> DEBU 078 Processing field: KafkaBrokers
2017-07-28 13:12:40.050 UTC [common/config] initializeProtosStruct -> DEBU 079 Processing field: ChannelRestrictions
2017-07-28 13:12:40.051 UTC [policies] ProposePolicy -> DEBU 07a Proposed new policy Admins for Orderer
2017-07-28 13:12:40.051 UTC [policies] ProposePolicy -> DEBU 07b Proposed new policy BlockValidation for Orderer
2017-07-28 13:12:40.051 UTC [policies] ProposePolicy -> DEBU 07c Proposed new policy Readers for Orderer
2017-07-28 13:12:40.052 UTC [policies] ProposePolicy -> DEBU 07d Proposed new policy Writers for Orderer
2017-07-28 13:12:40.052 UTC [common/config] NewStandardValues -> DEBU 07e Initializing protos for *config.OrganizationProtos
2017-07-28 13:12:40.052 UTC [common/config] initializeProtosStruct -> DEBU 07f Processing field: MSP
2017-07-28 13:12:40.052 UTC [policies] ProposePolicy -> DEBU 080 Proposed new policy Writers for OrdererOrg
2017-07-28 13:12:40.053 UTC [policies] ProposePolicy -> DEBU 081 Proposed new policy Admins for OrdererOrg
2017-07-28 13:12:40.053 UTC [policies] ProposePolicy -> DEBU 082 Proposed new policy Readers for OrdererOrg
2017-07-28 13:12:40.053 UTC [common/config] validateMSP -> DEBU 083 Setting up MSP for org Org1MSP
2017-07-28 13:12:40.053 UTC [msp] NewBccspMsp -> DEBU 084 Creating BCCSP-based MSP instance
2017-07-28 13:12:40.054 UTC [msp] Setup -> DEBU 085 Setting up MSP instance Org1MSP
2017-07-28 13:12:40.056 UTC [msp/identity] newIdentity -> DEBU 086 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:12:40.095 UTC [msp/identity] newIdentity -> DEBU 087 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:12:40.127 UTC [msp/identity] newIdentity -> DEBU 088 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:12:40.227 UTC [msp] Validate -> DEBU 089 MSP Org1MSP validating identity
2017-07-28 13:12:40.258 UTC [common/config] validateMSP -> DEBU 08a Setting up MSP for org Org2MSP
2017-07-28 13:12:40.258 UTC [msp] NewBccspMsp -> DEBU 08b Creating BCCSP-based MSP instance
2017-07-28 13:12:40.258 UTC [msp] Setup -> DEBU 08c Setting up MSP instance Org2MSP
2017-07-28 13:12:40.260 UTC [msp/identity] newIdentity -> DEBU 08d Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:12:40.292 UTC [msp/identity] newIdentity -> DEBU 08e Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:12:40.324 UTC [msp/identity] newIdentity -> DEBU 08f Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:12:40.417 UTC [msp] Validate -> DEBU 090 MSP Org2MSP validating identity
2017-07-28 13:12:40.448 UTC [common/config] validateMSP -> DEBU 091 Setting up MSP for org OrdererOrg
2017-07-28 13:12:40.448 UTC [msp] NewBccspMsp -> DEBU 092 Creating BCCSP-based MSP instance
2017-07-28 13:12:40.448 UTC [msp] Setup -> DEBU 093 Setting up MSP instance OrdererMSP
2017-07-28 13:12:40.450 UTC [msp/identity] newIdentity -> DEBU 094 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:12:40.482 UTC [msp/identity] newIdentity -> DEBU 095 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:12:40.513 UTC [msp/identity] newIdentity -> DEBU 096 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:12:40.607 UTC [msp] Validate -> DEBU 097 MSP OrdererMSP validating identity
2017-07-28 13:12:40.638 UTC [msp] Setup -> DEBU 098 Setting up the MSP manager (3 msps)
2017-07-28 13:12:40.638 UTC [msp] Setup -> DEBU 099 MSP manager setup complete, setup 3 msps
2017-07-28 13:12:40.638 UTC [policies] GetPolicy -> DEBU 09a Returning policy Writers for evaluation
2017-07-28 13:12:40.638 UTC [policies] CommitProposals -> DEBU 09b In commit adding relative sub-policy Org1MSP/Writers to SampleConsortium
2017-07-28 13:12:40.638 UTC [policies] GetPolicy -> DEBU 09c Returning policy Admins for evaluation
2017-07-28 13:12:40.638 UTC [policies] CommitProposals -> DEBU 09d In commit adding relative sub-policy Org1MSP/Admins to SampleConsortium
2017-07-28 13:12:40.638 UTC [policies] GetPolicy -> DEBU 09e Returning policy Readers for evaluation
2017-07-28 13:12:40.638 UTC [policies] CommitProposals -> DEBU 09f In commit adding relative sub-policy Org1MSP/Readers to SampleConsortium
2017-07-28 13:12:40.639 UTC [policies] GetPolicy -> DEBU 0a0 Returning policy Admins for evaluation
2017-07-28 13:12:40.639 UTC [policies] CommitProposals -> DEBU 0a1 In commit adding relative sub-policy Org2MSP/Admins to SampleConsortium
2017-07-28 13:12:40.639 UTC [policies] GetPolicy -> DEBU 0a2 Returning policy Readers for evaluation
2017-07-28 13:12:40.639 UTC [policies] CommitProposals -> DEBU 0a3 In commit adding relative sub-policy Org2MSP/Readers to SampleConsortium
2017-07-28 13:12:40.639 UTC [policies] GetPolicy -> DEBU 0a4 Returning policy Writers for evaluation
2017-07-28 13:12:40.639 UTC [policies] CommitProposals -> DEBU 0a5 In commit adding relative sub-policy Org2MSP/Writers to SampleConsortium
2017-07-28 13:12:40.639 UTC [policies] GetPolicy -> DEBU 0a6 Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:12:40.639 UTC [policies] CommitProposals -> DEBU 0a7 In commit adding relative sub-policy SampleConsortium/Org2MSP/Writers to Consortiums
2017-07-28 13:12:40.639 UTC [policies] GetPolicy -> DEBU 0a8 Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:12:40.639 UTC [policies] CommitProposals -> DEBU 0a9 In commit adding relative sub-policy SampleConsortium/Org1MSP/Writers to Consortiums
2017-07-28 13:12:40.639 UTC [policies] GetPolicy -> DEBU 0aa Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:12:40.639 UTC [policies] CommitProposals -> DEBU 0ab In commit adding relative sub-policy SampleConsortium/Org1MSP/Admins to Consortiums
2017-07-28 13:12:40.640 UTC [policies] GetPolicy -> DEBU 0ac Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:12:40.640 UTC [policies] CommitProposals -> DEBU 0ad In commit adding relative sub-policy SampleConsortium/Org1MSP/Readers to Consortiums
2017-07-28 13:12:40.640 UTC [policies] GetPolicy -> DEBU 0ae Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:12:40.640 UTC [policies] CommitProposals -> DEBU 0af In commit adding relative sub-policy SampleConsortium/Org2MSP/Admins to Consortiums
2017-07-28 13:12:40.640 UTC [policies] GetPolicy -> DEBU 0b0 Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:12:40.640 UTC [policies] CommitProposals -> DEBU 0b1 In commit adding relative sub-policy SampleConsortium/Org2MSP/Readers to Consortiums
2017-07-28 13:12:40.640 UTC [policies] GetPolicy -> DEBU 0b2 Returning policy Writers for evaluation
2017-07-28 13:12:40.640 UTC [policies] CommitProposals -> DEBU 0b3 In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:12:40.640 UTC [policies] GetPolicy -> DEBU 0b4 Returning policy Admins for evaluation
2017-07-28 13:12:40.640 UTC [policies] CommitProposals -> DEBU 0b5 In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:12:40.640 UTC [policies] GetPolicy -> DEBU 0b6 Returning policy Readers for evaluation
2017-07-28 13:12:40.641 UTC [policies] CommitProposals -> DEBU 0b7 In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:12:40.641 UTC [policies] GetPolicy -> DEBU 0b8 Returning policy Admins for evaluation
2017-07-28 13:12:40.641 UTC [policies] GetPolicy -> DEBU 0b9 Returning policy Writers for evaluation
2017-07-28 13:12:40.641 UTC [policies] GetPolicy -> DEBU 0ba Returning policy Readers for evaluation
2017-07-28 13:12:40.641 UTC [policies] GetPolicy -> DEBU 0bb Returning policy Writers for evaluation
2017-07-28 13:12:40.641 UTC [policies] GetPolicy -> DEBU 0bc Returning policy SampleConsortium/Org2MSP/Admins for evaluation
2017-07-28 13:12:40.641 UTC [policies] CommitProposals -> DEBU 0bd In commit adding relative sub-policy Consortiums/SampleConsortium/Org2MSP/Admins to Channel
2017-07-28 13:12:40.641 UTC [policies] GetPolicy -> DEBU 0be Returning policy SampleConsortium/Org2MSP/Readers for evaluation
2017-07-28 13:12:40.641 UTC [policies] CommitProposals -> DEBU 0bf In commit adding relative sub-policy Consortiums/SampleConsortium/Org2MSP/Readers to Channel
2017-07-28 13:12:40.641 UTC [policies] GetPolicy -> DEBU 0c0 Returning policy Admins for evaluation
2017-07-28 13:12:40.641 UTC [policies] CommitProposals -> DEBU 0c1 In commit adding relative sub-policy Consortiums/Admins to Channel
2017-07-28 13:12:40.642 UTC [policies] GetPolicy -> DEBU 0c2 Returning policy SampleConsortium/Org2MSP/Writers for evaluation
2017-07-28 13:12:40.642 UTC [policies] CommitProposals -> DEBU 0c3 In commit adding relative sub-policy Consortiums/SampleConsortium/Org2MSP/Writers to Channel
2017-07-28 13:12:40.642 UTC [policies] GetPolicy -> DEBU 0c4 Returning policy SampleConsortium/Org1MSP/Writers for evaluation
2017-07-28 13:12:40.642 UTC [policies] CommitProposals -> DEBU 0c5 In commit adding relative sub-policy Consortiums/SampleConsortium/Org1MSP/Writers to Channel
2017-07-28 13:12:40.642 UTC [policies] GetPolicy -> DEBU 0c6 Returning policy SampleConsortium/Org1MSP/Admins for evaluation
2017-07-28 13:12:40.642 UTC [policies] CommitProposals -> DEBU 0c7 In commit adding relative sub-policy Consortiums/SampleConsortium/Org1MSP/Admins to Channel
2017-07-28 13:12:40.642 UTC [policies] GetPolicy -> DEBU 0c8 Returning policy SampleConsortium/Org1MSP/Readers for evaluation
2017-07-28 13:12:40.642 UTC [policies] CommitProposals -> DEBU 0c9 In commit adding relative sub-policy Consortiums/SampleConsortium/Org1MSP/Readers to Channel
2017-07-28 13:12:40.642 UTC [policies] GetPolicy -> DEBU 0ca Returning policy Readers for evaluation
2017-07-28 13:12:40.642 UTC [policies] CommitProposals -> DEBU 0cb In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:12:40.642 UTC [policies] GetPolicy -> DEBU 0cc Returning policy Writers for evaluation
2017-07-28 13:12:40.643 UTC [policies] CommitProposals -> DEBU 0cd In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:12:40.643 UTC [policies] GetPolicy -> DEBU 0ce Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:12:40.643 UTC [policies] CommitProposals -> DEBU 0cf In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:12:40.643 UTC [policies] GetPolicy -> DEBU 0d0 Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:12:40.643 UTC [policies] CommitProposals -> DEBU 0d1 In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:12:40.643 UTC [policies] GetPolicy -> DEBU 0d2 Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:12:40.643 UTC [policies] CommitProposals -> DEBU 0d3 In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:12:40.643 UTC [policies] GetPolicy -> DEBU 0d4 Returning policy Admins for evaluation
2017-07-28 13:12:40.643 UTC [policies] CommitProposals -> DEBU 0d5 In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:12:40.643 UTC [policies] GetPolicy -> DEBU 0d6 Returning policy BlockValidation for evaluation
2017-07-28 13:12:40.643 UTC [policies] CommitProposals -> DEBU 0d7 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:12:40.643 UTC [policies] GetPolicy -> DEBU 0d8 Returning dummy reject all policy because Writers could not be found in /Consortiums/Writers
2017-07-28 13:12:40.644 UTC [policies] GetPolicy -> DEBU 0d9 Returning policy Writers for evaluation
2017-07-28 13:12:40.644 UTC [policies] GetPolicy -> DEBU 0da Returning policy Admins for evaluation
2017-07-28 13:12:40.644 UTC [policies] GetPolicy -> DEBU 0db Returning policy Admins for evaluation
2017-07-28 13:12:40.644 UTC [policies] GetPolicy -> DEBU 0dc Returning dummy reject all policy because Readers could not be found in /Consortiums/Readers
2017-07-28 13:12:40.644 UTC [policies] GetPolicy -> DEBU 0dd Returning policy Readers for evaluation
2017-07-28 13:12:40.644 UTC [policies] GetPolicy -> DEBU 0de Returning policy Readers for evaluation
2017-07-28 13:12:40.644 UTC [policies] CommitProposals -> DEBU 0df As expected, current configuration has policy '/Channel/Readers'
2017-07-28 13:12:40.644 UTC [policies] GetPolicy -> DEBU 0e0 Returning policy Writers for evaluation
2017-07-28 13:12:40.644 UTC [policies] CommitProposals -> DEBU 0e1 As expected, current configuration has policy '/Channel/Writers'
2017-07-28 13:12:40.644 UTC [policies] GetPolicy -> DEBU 0e2 Returning policy Orderer/BlockValidation for evaluation
2017-07-28 13:12:40.644 UTC [policies] CommitProposals -> DEBU 0e3 As expected, current configuration has policy '/Channel/Orderer/BlockValidation'
2017-07-28 13:12:40.645 UTC [fsblkstorage] newBlockfileStream -> DEBU 0e4 newBlockfileStream(): filePath=[/var/hyperledger/production/orderer/chains/testchainid/blockfile_000000], startOffset=[0]
2017-07-28 13:12:40.645 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 0e5 Remaining bytes=[9057], Going to peek [8] bytes
2017-07-28 13:12:40.645 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 0e6 Returning blockbytes - length=[9055], placementInfo={fileNum=[0], startOffset=[0], bytesOffset=[2]}
2017-07-28 13:12:40.645 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 0e7 blockbytes [9055] read from file [0]
2017-07-28 13:12:40.645 UTC [orderer/multichannel] newChainSupport -> DEBU 0e8 [channel: testchainid] Retrieved metadata for tip of chain (blockNumber=0, lastConfig=0, lastConfigSeq=0): 
2017-07-28 13:12:40.645 UTC [orderer/multichannel] NewManagerImpl -> INFO 0e9 Starting with system channel testchainid and orderer type solo
2017-07-28 13:12:40.646 UTC [orderer/server/main] Main -> INFO 0ea Beginning to serve requests
2017-07-28 13:13:40.109 UTC [orderer/server/main] Deliver -> DEBU 0eb Starting new Deliver handler
2017-07-28 13:13:40.109 UTC [orderer/common/deliver] Handle -> DEBU 0ec Starting new deliver loop
2017-07-28 13:13:40.109 UTC [orderer/common/deliver] Handle -> DEBU 0ed Attempting to read seek info message
2017-07-28 13:13:40.271 UTC [orderer/server/main] Broadcast -> DEBU 0ee Starting new Broadcast handler
2017-07-28 13:13:40.271 UTC [orderer/common/broadcast] Handle -> DEBU 0ef Starting new broadcast loop
2017-07-28 13:13:40.273 UTC [orderer/common/broadcast] Handle -> DEBU 0f0 Preprocessing CONFIG_UPDATE
2017-07-28 13:13:40.273 UTC [orderer/configupdate] Process -> DEBU 0f1 Processing channel creation request for channel mychannel
2017-07-28 13:13:40.274 UTC [msp] GetLocalMSP -> DEBU 0f2 Returning existing local MSP
2017-07-28 13:13:40.274 UTC [msp] GetDefaultSigningIdentity -> DEBU 0f3 Obtaining default signing identity
2017-07-28 13:13:40.275 UTC [msp] GetLocalMSP -> DEBU 0f4 Returning existing local MSP
2017-07-28 13:13:40.275 UTC [msp] GetDefaultSigningIdentity -> DEBU 0f5 Obtaining default signing identity
2017-07-28 13:13:40.276 UTC [msp/identity] Sign -> DEBU 0f6 Sign: plaintext: 0AB1060A1508011A060884F1ECCB0522...41646D696E7310021A0641646D696E73 
2017-07-28 13:13:40.276 UTC [msp/identity] Sign -> DEBU 0f7 Sign: digest: 1979B792D0E220544C7A72B314F39C273DDE7547DCF44B8475E84D44D8E73E78 
2017-07-28 13:13:40.285 UTC [common/config] NewStandardValues -> DEBU 0f8 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:40.286 UTC [common/config] initializeProtosStruct -> DEBU 0f9 Processing field: HashingAlgorithm
2017-07-28 13:13:40.286 UTC [common/config] initializeProtosStruct -> DEBU 0fa Processing field: BlockDataHashingStructure
2017-07-28 13:13:40.286 UTC [common/config] initializeProtosStruct -> DEBU 0fb Processing field: OrdererAddresses
2017-07-28 13:13:40.286 UTC [common/config] initializeProtosStruct -> DEBU 0fc Processing field: Consortium
2017-07-28 13:13:40.287 UTC [common/configtx] addToMap -> DEBU 0fd Adding to config map: [Groups] /Channel
2017-07-28 13:13:40.287 UTC [common/configtx] addToMap -> DEBU 0fe Adding to config map: [Groups] /Channel/Orderer
2017-07-28 13:13:40.287 UTC [common/configtx] addToMap -> DEBU 0ff Adding to config map: [Groups] /Channel/Orderer/OrdererOrg
2017-07-28 13:13:40.288 UTC [common/configtx] addToMap -> DEBU 100 Adding to config map: [Values] /Channel/Orderer/OrdererOrg/MSP
2017-07-28 13:13:40.288 UTC [common/configtx] addToMap -> DEBU 101 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Writers
2017-07-28 13:13:40.288 UTC [common/configtx] addToMap -> DEBU 102 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Admins
2017-07-28 13:13:40.288 UTC [common/configtx] addToMap -> DEBU 103 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Readers
2017-07-28 13:13:40.289 UTC [common/configtx] addToMap -> DEBU 104 Adding to config map: [Values] /Channel/Orderer/ChannelRestrictions
2017-07-28 13:13:40.289 UTC [common/configtx] addToMap -> DEBU 105 Adding to config map: [Values] /Channel/Orderer/ConsensusType
2017-07-28 13:13:40.289 UTC [common/configtx] addToMap -> DEBU 106 Adding to config map: [Values] /Channel/Orderer/BatchSize
2017-07-28 13:13:40.289 UTC [common/configtx] addToMap -> DEBU 107 Adding to config map: [Values] /Channel/Orderer/BatchTimeout
2017-07-28 13:13:40.290 UTC [common/configtx] addToMap -> DEBU 108 Adding to config map: [Policy] /Channel/Orderer/Writers
2017-07-28 13:13:40.290 UTC [common/configtx] addToMap -> DEBU 109 Adding to config map: [Policy] /Channel/Orderer/Admins
2017-07-28 13:13:40.290 UTC [common/configtx] addToMap -> DEBU 10a Adding to config map: [Policy] /Channel/Orderer/BlockValidation
2017-07-28 13:13:40.290 UTC [common/configtx] addToMap -> DEBU 10b Adding to config map: [Policy] /Channel/Orderer/Readers
2017-07-28 13:13:40.291 UTC [common/configtx] addToMap -> DEBU 10c Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:40.291 UTC [common/configtx] addToMap -> DEBU 10d Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:40.291 UTC [common/configtx] addToMap -> DEBU 10e Adding to config map: [Values] /Channel/Application/Org1MSP/MSP
2017-07-28 13:13:40.291 UTC [common/configtx] addToMap -> DEBU 10f Adding to config map: [Policy] /Channel/Application/Org1MSP/Writers
2017-07-28 13:13:40.291 UTC [common/configtx] addToMap -> DEBU 110 Adding to config map: [Policy] /Channel/Application/Org1MSP/Admins
2017-07-28 13:13:40.292 UTC [common/configtx] addToMap -> DEBU 111 Adding to config map: [Policy] /Channel/Application/Org1MSP/Readers
2017-07-28 13:13:40.292 UTC [common/configtx] addToMap -> DEBU 112 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:40.292 UTC [common/configtx] addToMap -> DEBU 113 Adding to config map: [Values] /Channel/Application/Org2MSP/MSP
2017-07-28 13:13:40.292 UTC [common/configtx] addToMap -> DEBU 114 Adding to config map: [Policy] /Channel/Application/Org2MSP/Admins
2017-07-28 13:13:40.293 UTC [common/configtx] addToMap -> DEBU 115 Adding to config map: [Policy] /Channel/Application/Org2MSP/Readers
2017-07-28 13:13:40.293 UTC [common/configtx] addToMap -> DEBU 116 Adding to config map: [Policy] /Channel/Application/Org2MSP/Writers
2017-07-28 13:13:40.293 UTC [common/configtx] addToMap -> DEBU 117 Adding to config map: [Policy] /Channel/Application/ChannelCreationPolicy
2017-07-28 13:13:40.293 UTC [common/configtx] addToMap -> DEBU 118 Adding to config map: [Values] /Channel/OrdererAddresses
2017-07-28 13:13:40.293 UTC [common/configtx] addToMap -> DEBU 119 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:40.294 UTC [common/configtx] addToMap -> DEBU 11a Adding to config map: [Values] /Channel/HashingAlgorithm
2017-07-28 13:13:40.294 UTC [common/configtx] addToMap -> DEBU 11b Adding to config map: [Values] /Channel/BlockDataHashingStructure
2017-07-28 13:13:40.294 UTC [common/configtx] addToMap -> DEBU 11c Adding to config map: [Policy] /Channel/Readers
2017-07-28 13:13:40.294 UTC [common/configtx] addToMap -> DEBU 11d Adding to config map: [Policy] /Channel/Writers
2017-07-28 13:13:40.295 UTC [common/configtx] addToMap -> DEBU 11e Adding to config map: [Policy] /Channel/Admins
2017-07-28 13:13:40.295 UTC [common/configtx] processConfig -> DEBU 11f Beginning new config for channel mychannel
2017-07-28 13:13:40.295 UTC [common/config] NewStandardValues -> DEBU 120 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:40.295 UTC [common/config] initializeProtosStruct -> DEBU 121 Processing field: HashingAlgorithm
2017-07-28 13:13:40.295 UTC [common/config] initializeProtosStruct -> DEBU 122 Processing field: BlockDataHashingStructure
2017-07-28 13:13:40.295 UTC [common/config] initializeProtosStruct -> DEBU 123 Processing field: OrdererAddresses
2017-07-28 13:13:40.295 UTC [common/config] initializeProtosStruct -> DEBU 124 Processing field: Consortium
2017-07-28 13:13:40.296 UTC [policies] ProposePolicy -> DEBU 125 Proposed new policy Readers for Channel
2017-07-28 13:13:40.296 UTC [policies] ProposePolicy -> DEBU 126 Proposed new policy Writers for Channel
2017-07-28 13:13:40.296 UTC [policies] ProposePolicy -> DEBU 127 Proposed new policy Admins for Channel
2017-07-28 13:13:40.296 UTC [common/config] NewStandardValues -> DEBU 128 Initializing protos for *config.OrdererProtos
2017-07-28 13:13:40.296 UTC [common/config] initializeProtosStruct -> DEBU 129 Processing field: ConsensusType
2017-07-28 13:13:40.296 UTC [common/config] initializeProtosStruct -> DEBU 12a Processing field: BatchSize
2017-07-28 13:13:40.296 UTC [common/config] initializeProtosStruct -> DEBU 12b Processing field: BatchTimeout
2017-07-28 13:13:40.296 UTC [common/config] initializeProtosStruct -> DEBU 12c Processing field: KafkaBrokers
2017-07-28 13:13:40.297 UTC [common/config] initializeProtosStruct -> DEBU 12d Processing field: ChannelRestrictions
2017-07-28 13:13:40.297 UTC [policies] ProposePolicy -> DEBU 12e Proposed new policy Admins for Orderer
2017-07-28 13:13:40.297 UTC [policies] ProposePolicy -> DEBU 12f Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:40.297 UTC [policies] ProposePolicy -> DEBU 130 Proposed new policy Readers for Orderer
2017-07-28 13:13:40.297 UTC [policies] ProposePolicy -> DEBU 131 Proposed new policy Writers for Orderer
2017-07-28 13:13:40.297 UTC [common/config] NewStandardValues -> DEBU 132 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.297 UTC [common/config] initializeProtosStruct -> DEBU 133 Processing field: MSP
2017-07-28 13:13:40.297 UTC [policies] ProposePolicy -> DEBU 134 Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:40.298 UTC [policies] ProposePolicy -> DEBU 135 Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:40.298 UTC [policies] ProposePolicy -> DEBU 136 Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:40.298 UTC [common/config] NewStandardValues -> DEBU 137 Initializing protos for *struct {}
2017-07-28 13:13:40.298 UTC [policies] ProposePolicy -> DEBU 138 Proposed new policy ChannelCreationPolicy for Application
2017-07-28 13:13:40.298 UTC [common/config] NewStandardValues -> DEBU 139 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.298 UTC [common/config] initializeProtosStruct -> DEBU 13a Processing field: MSP
2017-07-28 13:13:40.298 UTC [common/config] NewStandardValues -> DEBU 13b Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:40.299 UTC [common/config] initializeProtosStruct -> DEBU 13c Processing field: AnchorPeers
2017-07-28 13:13:40.299 UTC [common/config] NewStandardValues -> DEBU 13d Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.299 UTC [common/config] initializeProtosStruct -> DEBU 13e Processing field: MSP
2017-07-28 13:13:40.299 UTC [policies] ProposePolicy -> DEBU 13f Proposed new policy Writers for Org1MSP
2017-07-28 13:13:40.299 UTC [policies] ProposePolicy -> DEBU 140 Proposed new policy Admins for Org1MSP
2017-07-28 13:13:40.299 UTC [policies] ProposePolicy -> DEBU 141 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:40.299 UTC [common/config] NewStandardValues -> DEBU 142 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.300 UTC [common/config] initializeProtosStruct -> DEBU 143 Processing field: MSP
2017-07-28 13:13:40.300 UTC [common/config] NewStandardValues -> DEBU 144 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:40.300 UTC [common/config] initializeProtosStruct -> DEBU 145 Processing field: AnchorPeers
2017-07-28 13:13:40.300 UTC [common/config] NewStandardValues -> DEBU 146 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.300 UTC [common/config] initializeProtosStruct -> DEBU 147 Processing field: MSP
2017-07-28 13:13:40.300 UTC [policies] ProposePolicy -> DEBU 148 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:40.300 UTC [policies] ProposePolicy -> DEBU 149 Proposed new policy Writers for Org2MSP
2017-07-28 13:13:40.300 UTC [policies] ProposePolicy -> DEBU 14a Proposed new policy Admins for Org2MSP
2017-07-28 13:13:40.300 UTC [common/config] validateMSP -> DEBU 14b Setting up MSP for org OrdererOrg
2017-07-28 13:13:40.301 UTC [msp] NewBccspMsp -> DEBU 14c Creating BCCSP-based MSP instance
2017-07-28 13:13:40.301 UTC [msp] Setup -> DEBU 14d Setting up MSP instance OrdererMSP
2017-07-28 13:13:40.302 UTC [msp/identity] newIdentity -> DEBU 14e Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:40.334 UTC [msp/identity] newIdentity -> DEBU 14f Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:40.366 UTC [msp/identity] newIdentity -> DEBU 150 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:40.458 UTC [msp] Validate -> DEBU 151 MSP OrdererMSP validating identity
2017-07-28 13:13:40.489 UTC [common/config] Validate -> DEBU 152 Anchor peers for org Org1MSP are 
2017-07-28 13:13:40.490 UTC [common/config] validateMSP -> DEBU 153 Setting up MSP for org Org1MSP
2017-07-28 13:13:40.490 UTC [msp] NewBccspMsp -> DEBU 154 Creating BCCSP-based MSP instance
2017-07-28 13:13:40.490 UTC [msp] Setup -> DEBU 155 Setting up MSP instance Org1MSP
2017-07-28 13:13:40.492 UTC [msp/identity] newIdentity -> DEBU 156 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:40.523 UTC [msp/identity] newIdentity -> DEBU 157 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:40.555 UTC [msp/identity] newIdentity -> DEBU 158 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:40.647 UTC [msp] Validate -> DEBU 159 MSP Org1MSP validating identity
2017-07-28 13:13:40.678 UTC [common/config] Validate -> DEBU 15a Anchor peers for org Org2MSP are 
2017-07-28 13:13:40.679 UTC [common/config] validateMSP -> DEBU 15b Setting up MSP for org Org2MSP
2017-07-28 13:13:40.679 UTC [msp] NewBccspMsp -> DEBU 15c Creating BCCSP-based MSP instance
2017-07-28 13:13:40.679 UTC [msp] Setup -> DEBU 15d Setting up MSP instance Org2MSP
2017-07-28 13:13:40.681 UTC [msp/identity] newIdentity -> DEBU 15e Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:40.712 UTC [msp/identity] newIdentity -> DEBU 15f Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:40.744 UTC [msp/identity] newIdentity -> DEBU 160 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:40.837 UTC [msp] Validate -> DEBU 161 MSP Org2MSP validating identity
2017-07-28 13:13:40.867 UTC [msp] Setup -> DEBU 162 Setting up the MSP manager (3 msps)
2017-07-28 13:13:40.868 UTC [msp] Setup -> DEBU 163 MSP manager setup complete, setup 3 msps
2017-07-28 13:13:40.868 UTC [policies] GetPolicy -> DEBU 164 Returning policy Writers for evaluation
2017-07-28 13:13:40.868 UTC [policies] CommitProposals -> DEBU 165 In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:40.868 UTC [policies] GetPolicy -> DEBU 166 Returning policy Admins for evaluation
2017-07-28 13:13:40.868 UTC [policies] CommitProposals -> DEBU 167 In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:40.868 UTC [policies] GetPolicy -> DEBU 168 Returning policy Readers for evaluation
2017-07-28 13:13:40.868 UTC [policies] CommitProposals -> DEBU 169 In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:40.868 UTC [policies] GetPolicy -> DEBU 16a Returning policy Admins for evaluation
2017-07-28 13:13:40.869 UTC [policies] GetPolicy -> DEBU 16b Returning policy Writers for evaluation
2017-07-28 13:13:40.869 UTC [policies] GetPolicy -> DEBU 16c Returning policy Readers for evaluation
2017-07-28 13:13:40.869 UTC [policies] GetPolicy -> DEBU 16d Returning policy Writers for evaluation
2017-07-28 13:13:40.869 UTC [policies] GetPolicy -> DEBU 16e Returning policy Writers for evaluation
2017-07-28 13:13:40.869 UTC [policies] CommitProposals -> DEBU 16f In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:40.869 UTC [policies] GetPolicy -> DEBU 170 Returning policy Admins for evaluation
2017-07-28 13:13:40.869 UTC [policies] CommitProposals -> DEBU 171 In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:40.869 UTC [policies] GetPolicy -> DEBU 172 Returning policy Readers for evaluation
2017-07-28 13:13:40.869 UTC [policies] CommitProposals -> DEBU 173 In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:40.870 UTC [policies] GetPolicy -> DEBU 174 Returning policy Admins for evaluation
2017-07-28 13:13:40.870 UTC [policies] CommitProposals -> DEBU 175 In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:40.870 UTC [policies] GetPolicy -> DEBU 176 Returning policy Readers for evaluation
2017-07-28 13:13:40.870 UTC [policies] CommitProposals -> DEBU 177 In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:40.870 UTC [policies] GetPolicy -> DEBU 178 Returning policy Writers for evaluation
2017-07-28 13:13:40.870 UTC [policies] CommitProposals -> DEBU 179 In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:40.870 UTC [policies] GetPolicy -> DEBU 17a Returning policy Admins for evaluation
2017-07-28 13:13:40.870 UTC [policies] GetPolicy -> DEBU 17b Returning policy Admins for evaluation
2017-07-28 13:13:40.870 UTC [policies] GetPolicy -> DEBU 17c Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:40.871 UTC [policies] CommitProposals -> DEBU 17d In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:40.871 UTC [policies] GetPolicy -> DEBU 17e Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:40.871 UTC [policies] CommitProposals -> DEBU 17f In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:40.871 UTC [policies] GetPolicy -> DEBU 180 Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:40.871 UTC [policies] CommitProposals -> DEBU 181 In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:40.871 UTC [policies] GetPolicy -> DEBU 182 Returning policy Admins for evaluation
2017-07-28 13:13:40.871 UTC [policies] CommitProposals -> DEBU 183 In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:40.871 UTC [policies] GetPolicy -> DEBU 184 Returning policy BlockValidation for evaluation
2017-07-28 13:13:40.871 UTC [policies] CommitProposals -> DEBU 185 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:40.871 UTC [policies] GetPolicy -> DEBU 186 Returning policy Readers for evaluation
2017-07-28 13:13:40.872 UTC [policies] CommitProposals -> DEBU 187 In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:40.872 UTC [policies] GetPolicy -> DEBU 188 Returning policy Writers for evaluation
2017-07-28 13:13:40.872 UTC [policies] CommitProposals -> DEBU 189 In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:40.872 UTC [policies] GetPolicy -> DEBU 18a Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:40.872 UTC [policies] CommitProposals -> DEBU 18b In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:40.872 UTC [policies] GetPolicy -> DEBU 18c Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:40.872 UTC [policies] CommitProposals -> DEBU 18d In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:40.878 UTC [policies] GetPolicy -> DEBU 18e Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:40.878 UTC [policies] CommitProposals -> DEBU 18f In commit adding relative sub-policy Application/ChannelCreationPolicy to Channel
2017-07-28 13:13:40.879 UTC [policies] GetPolicy -> DEBU 190 Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:40.879 UTC [policies] CommitProposals -> DEBU 191 In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:40.879 UTC [policies] GetPolicy -> DEBU 192 Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:40.880 UTC [policies] CommitProposals -> DEBU 193 In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:40.880 UTC [policies] GetPolicy -> DEBU 194 Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:40.880 UTC [policies] CommitProposals -> DEBU 195 In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:40.880 UTC [policies] GetPolicy -> DEBU 196 Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:40.881 UTC [policies] CommitProposals -> DEBU 197 In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:40.881 UTC [policies] GetPolicy -> DEBU 198 Returning policy Readers for evaluation
2017-07-28 13:13:40.881 UTC [policies] GetPolicy -> DEBU 199 Returning dummy reject all policy because Readers could not be found in /Application/Readers
2017-07-28 13:13:40.881 UTC [policies] GetPolicy -> DEBU 19a Returning policy Writers for evaluation
2017-07-28 13:13:40.882 UTC [policies] GetPolicy -> DEBU 19b Returning dummy reject all policy because Writers could not be found in /Application/Writers
2017-07-28 13:13:40.882 UTC [policies] GetPolicy -> DEBU 19c Returning policy Admins for evaluation
2017-07-28 13:13:40.882 UTC [policies] GetPolicy -> DEBU 19d Returning dummy reject all policy because Admins could not be found in /Application/Admins
2017-07-28 13:13:40.883 UTC [common/configtx] addToMap -> DEBU 19e Adding to config map: [Groups] /Channel
2017-07-28 13:13:40.883 UTC [common/configtx] addToMap -> DEBU 19f Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:40.884 UTC [common/configtx] addToMap -> DEBU 1a0 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:40.884 UTC [common/configtx] addToMap -> DEBU 1a1 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:40.885 UTC [common/configtx] addToMap -> DEBU 1a2 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:40.885 UTC [common/configtx] addToMap -> DEBU 1a3 Adding to config map: [Groups] /Channel
2017-07-28 13:13:40.885 UTC [common/configtx] addToMap -> DEBU 1a4 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:40.886 UTC [common/configtx] addToMap -> DEBU 1a5 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:40.886 UTC [common/configtx] addToMap -> DEBU 1a6 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:40.887 UTC [common/configtx] addToMap -> DEBU 1a7 Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:40.887 UTC [common/configtx] addToMap -> DEBU 1a8 Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:40.888 UTC [common/configtx] addToMap -> DEBU 1a9 Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:40.888 UTC [common/configtx] addToMap -> DEBU 1aa Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:40.889 UTC [policies] GetPolicy -> DEBU 1ab Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:40.889 UTC [cauthdsl] func1 -> DEBU 1ac 0x577bd138 gate 1501247620889775511 evaluation starts
2017-07-28 13:13:40.890 UTC [cauthdsl] func2 -> DEBU 1ad 0x577bd138 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:40.890 UTC [cauthdsl] func2 -> DEBU 1ae 0x577bd138 processing identity 0 with bytes of 0a074f7267314d535012fc052d2d2d2d2d424547494e202d2d2d2d2d0a4d4949434744434341622b674177494241674951644a72426f4375372b7a5972642f5062457749554954414b42676771686b6a4f50515144416a427a4d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a455a4d4263474131554543684d5162334a6e4d53356c654746746347786c4c6d4e76625445634d426f474131554541784d54593245750a62334a6e4d53356c654746746347786c4c6d4e7662544165467730784e7a41334d6a63794d544d354d6a5661467730794e7a41334d6a55794d544d354d6a56610a4d467378437a414a42674e5642415954416c56544d524d77455159445651514945777044595778705a6d3979626d6c684d5259774641594456515148457731540a59573467526e4a68626d4e7063324e764d523877485159445651514444425a425a473170626b4276636d63784c6d56345957317762475575593239744d466b770a457759484b6f5a497a6a3043415159494b6f5a497a6a3044415163445167414572344244642b326e675345546c547042682b33736630696c4a36584a677372300a6c4241725643526f424448674d754378663359556c6834745734624a476b4b4878654b46574c346a5157676c4c47454930574d5654714e4e4d457377446759440a565230504151482f42415144416765414d41774741315564457745422f7751434d4141774b7759445652306a42435177496f41676932646d787565744c5132380a5a345431556d697a506e562f395546644d3448736170354f754561552f685977436759494b6f5a497a6a3045417749445277417752414967487864537150576f0a657442454c744f55664a696b4a63704150634b4e7576344b52595170352f43553253384349426d5570344a63483875747a6669572f4f7941324e52696c2b68570a6c757275696c56353850484f384e72680a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:40.892 UTC [msp/identity] newIdentity -> DEBU 1af Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:40.923 UTC [msp] SatisfiesPrincipal -> DEBU 1b0 Checking if identity satisfies ADMIN role for Org1MSP
2017-07-28 13:13:40.923 UTC [cauthdsl] func2 -> DEBU 1b1 0x577bd138 principal matched by identity 0
2017-07-28 13:13:40.923 UTC [msp/identity] Verify -> DEBU 1b2 Verify: digest = 00000000  b5 c0 59 46 ff b6 b5 54  4d 7b fd 8e 62 da 01 02  |..YF...TM{..b...|
00000010  75 e2 9f ec 0f 1b fe f8  bb 22 99 86 d6 1c ea 3a  |u........".....:|
2017-07-28 13:13:40.923 UTC [msp/identity] Verify -> DEBU 1b3 Verify: sig = 00000000  30 45 02 21 00 f4 fd 95  61 eb 08 39 ca 93 10 e5  |0E.!....a..9....|
00000010  6e d1 37 50 7f 6b 75 bf  2d a9 7a ed 5b a6 67 7d  |n.7P.ku.-.z.[.g}|
00000020  4c 7b 76 8a df 02 20 0c  ba 5d 41 2f 09 57 a9 37  |L{v... ..]A/.W.7|
00000030  de c6 8e 92 42 d9 d8 3c  f5 de 20 09 67 81 45 17  |....B..<.. .g.E.|
00000040  04 a6 1c 36 9a a9 1f                              |...6...|
2017-07-28 13:13:40.954 UTC [cauthdsl] func2 -> DEBU 1b4 0x577bd138 principal evaluation succeeds for identity 0
2017-07-28 13:13:40.954 UTC [cauthdsl] func1 -> DEBU 1b5 0x577bd138 gate 1501247620889775511 evaluation succeeds
2017-07-28 13:13:40.955 UTC [common/configtx] processConfig -> DEBU 1b6 Beginning new config for channel mychannel
2017-07-28 13:13:40.955 UTC [common/config] NewStandardValues -> DEBU 1b7 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:40.955 UTC [common/config] initializeProtosStruct -> DEBU 1b8 Processing field: HashingAlgorithm
2017-07-28 13:13:40.955 UTC [common/config] initializeProtosStruct -> DEBU 1b9 Processing field: BlockDataHashingStructure
2017-07-28 13:13:40.955 UTC [common/config] initializeProtosStruct -> DEBU 1ba Processing field: OrdererAddresses
2017-07-28 13:13:40.955 UTC [common/config] initializeProtosStruct -> DEBU 1bb Processing field: Consortium
2017-07-28 13:13:40.956 UTC [policies] ProposePolicy -> DEBU 1bc Proposed new policy Readers for Channel
2017-07-28 13:13:40.956 UTC [policies] ProposePolicy -> DEBU 1bd Proposed new policy Writers for Channel
2017-07-28 13:13:40.956 UTC [policies] ProposePolicy -> DEBU 1be Proposed new policy Admins for Channel
2017-07-28 13:13:40.956 UTC [common/config] NewStandardValues -> DEBU 1bf Initializing protos for *config.OrdererProtos
2017-07-28 13:13:40.956 UTC [common/config] initializeProtosStruct -> DEBU 1c0 Processing field: ConsensusType
2017-07-28 13:13:40.956 UTC [common/config] initializeProtosStruct -> DEBU 1c1 Processing field: BatchSize
2017-07-28 13:13:40.956 UTC [common/config] initializeProtosStruct -> DEBU 1c2 Processing field: BatchTimeout
2017-07-28 13:13:40.956 UTC [common/config] initializeProtosStruct -> DEBU 1c3 Processing field: KafkaBrokers
2017-07-28 13:13:40.956 UTC [common/config] initializeProtosStruct -> DEBU 1c4 Processing field: ChannelRestrictions
2017-07-28 13:13:40.957 UTC [policies] ProposePolicy -> DEBU 1c5 Proposed new policy Admins for Orderer
2017-07-28 13:13:40.957 UTC [policies] ProposePolicy -> DEBU 1c6 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:40.957 UTC [policies] ProposePolicy -> DEBU 1c7 Proposed new policy Readers for Orderer
2017-07-28 13:13:40.957 UTC [policies] ProposePolicy -> DEBU 1c8 Proposed new policy Writers for Orderer
2017-07-28 13:13:40.957 UTC [common/config] NewStandardValues -> DEBU 1c9 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.957 UTC [common/config] initializeProtosStruct -> DEBU 1ca Processing field: MSP
2017-07-28 13:13:40.957 UTC [policies] ProposePolicy -> DEBU 1cb Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:40.958 UTC [policies] ProposePolicy -> DEBU 1cc Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:40.958 UTC [policies] ProposePolicy -> DEBU 1cd Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:40.958 UTC [common/config] NewStandardValues -> DEBU 1ce Initializing protos for *struct {}
2017-07-28 13:13:40.958 UTC [policies] ProposePolicy -> DEBU 1cf Proposed new policy Readers for Application
2017-07-28 13:13:40.958 UTC [policies] ProposePolicy -> DEBU 1d0 Proposed new policy Admins for Application
2017-07-28 13:13:40.958 UTC [policies] ProposePolicy -> DEBU 1d1 Proposed new policy Writers for Application
2017-07-28 13:13:40.958 UTC [common/config] NewStandardValues -> DEBU 1d2 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.959 UTC [common/config] initializeProtosStruct -> DEBU 1d3 Processing field: MSP
2017-07-28 13:13:40.959 UTC [common/config] NewStandardValues -> DEBU 1d4 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:40.959 UTC [common/config] initializeProtosStruct -> DEBU 1d5 Processing field: AnchorPeers
2017-07-28 13:13:40.959 UTC [common/config] NewStandardValues -> DEBU 1d6 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.959 UTC [common/config] initializeProtosStruct -> DEBU 1d7 Processing field: MSP
2017-07-28 13:13:40.959 UTC [policies] ProposePolicy -> DEBU 1d8 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:40.959 UTC [policies] ProposePolicy -> DEBU 1d9 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:40.959 UTC [policies] ProposePolicy -> DEBU 1da Proposed new policy Writers for Org2MSP
2017-07-28 13:13:40.960 UTC [common/config] NewStandardValues -> DEBU 1db Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.960 UTC [common/config] initializeProtosStruct -> DEBU 1dc Processing field: MSP
2017-07-28 13:13:40.960 UTC [common/config] NewStandardValues -> DEBU 1dd Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:40.960 UTC [common/config] initializeProtosStruct -> DEBU 1de Processing field: AnchorPeers
2017-07-28 13:13:40.960 UTC [common/config] NewStandardValues -> DEBU 1df Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:40.960 UTC [common/config] initializeProtosStruct -> DEBU 1e0 Processing field: MSP
2017-07-28 13:13:40.960 UTC [policies] ProposePolicy -> DEBU 1e1 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:40.960 UTC [policies] ProposePolicy -> DEBU 1e2 Proposed new policy Admins for Org1MSP
2017-07-28 13:13:40.961 UTC [policies] ProposePolicy -> DEBU 1e3 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:40.961 UTC [common/config] validateMSP -> DEBU 1e4 Setting up MSP for org OrdererOrg
2017-07-28 13:13:40.961 UTC [msp] NewBccspMsp -> DEBU 1e5 Creating BCCSP-based MSP instance
2017-07-28 13:13:40.961 UTC [msp] Setup -> DEBU 1e6 Setting up MSP instance OrdererMSP
2017-07-28 13:13:40.963 UTC [msp/identity] newIdentity -> DEBU 1e7 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:40.994 UTC [msp/identity] newIdentity -> DEBU 1e8 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:41.026 UTC [msp/identity] newIdentity -> DEBU 1e9 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:41.118 UTC [msp] Validate -> DEBU 1ea MSP OrdererMSP validating identity
2017-07-28 13:13:41.149 UTC [common/config] Validate -> DEBU 1eb Anchor peers for org Org2MSP are 
2017-07-28 13:13:41.149 UTC [common/config] validateMSP -> DEBU 1ec Setting up MSP for org Org2MSP
2017-07-28 13:13:41.149 UTC [msp] NewBccspMsp -> DEBU 1ed Creating BCCSP-based MSP instance
2017-07-28 13:13:41.150 UTC [msp] Setup -> DEBU 1ee Setting up MSP instance Org2MSP
2017-07-28 13:13:41.151 UTC [msp/identity] newIdentity -> DEBU 1ef Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:41.183 UTC [msp/identity] newIdentity -> DEBU 1f0 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:41.214 UTC [msp/identity] newIdentity -> DEBU 1f1 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:41.307 UTC [msp] Validate -> DEBU 1f2 MSP Org2MSP validating identity
2017-07-28 13:13:41.337 UTC [common/config] Validate -> DEBU 1f3 Anchor peers for org Org1MSP are 
2017-07-28 13:13:41.338 UTC [common/config] validateMSP -> DEBU 1f4 Setting up MSP for org Org1MSP
2017-07-28 13:13:41.338 UTC [msp] NewBccspMsp -> DEBU 1f5 Creating BCCSP-based MSP instance
2017-07-28 13:13:41.338 UTC [msp] Setup -> DEBU 1f6 Setting up MSP instance Org1MSP
2017-07-28 13:13:41.340 UTC [msp/identity] newIdentity -> DEBU 1f7 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:41.371 UTC [msp/identity] newIdentity -> DEBU 1f8 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:41.403 UTC [msp/identity] newIdentity -> DEBU 1f9 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:41.495 UTC [msp] Validate -> DEBU 1fa MSP Org1MSP validating identity
2017-07-28 13:13:41.526 UTC [msp] Setup -> DEBU 1fb Setting up the MSP manager (3 msps)
2017-07-28 13:13:41.526 UTC [msp] Setup -> DEBU 1fc MSP manager setup complete, setup 3 msps
2017-07-28 13:13:41.526 UTC [msp] GetLocalMSP -> DEBU 1fd Returning existing local MSP
2017-07-28 13:13:41.526 UTC [msp] GetDefaultSigningIdentity -> DEBU 1fe Obtaining default signing identity
2017-07-28 13:13:41.527 UTC [msp] GetLocalMSP -> DEBU 1ff Returning existing local MSP
2017-07-28 13:13:41.527 UTC [msp] GetDefaultSigningIdentity -> DEBU 200 Obtaining default signing identity
2017-07-28 13:13:41.529 UTC [msp/identity] Sign -> DEBU 201 Sign: plaintext: 0AB1060A1508011A060885F1ECCB0522...A93E90C1BFA5C1DD3600779C67E59E49 
2017-07-28 13:13:41.529 UTC [msp/identity] Sign -> DEBU 202 Sign: digest: 90C77DA23C4890A7FBDF076A599256F0C9149711D3690DA1D922063E7636D8AC 
2017-07-28 13:13:41.538 UTC [msp] GetLocalMSP -> DEBU 203 Returning existing local MSP
2017-07-28 13:13:41.538 UTC [msp] GetDefaultSigningIdentity -> DEBU 204 Obtaining default signing identity
2017-07-28 13:13:41.538 UTC [msp] GetLocalMSP -> DEBU 205 Returning existing local MSP
2017-07-28 13:13:41.538 UTC [msp] GetDefaultSigningIdentity -> DEBU 206 Obtaining default signing identity
2017-07-28 13:13:41.540 UTC [msp/identity] Sign -> DEBU 207 Sign: plaintext: 0AB3060A1708041A060885F1ECCB0522...9FE55E82B24BC1005905912696E64456 
2017-07-28 13:13:41.540 UTC [msp/identity] Sign -> DEBU 208 Sign: digest: A945ACC3FFB462E284F894CA84411E179675DD8F8AE82D3441133F3D7A43E60D 
2017-07-28 13:13:41.549 UTC [orderer/common/broadcast] Handle -> DEBU 209 [channel: testchainid] Broadcast is filtering message of type ORDERER_TRANSACTION
2017-07-28 13:13:41.549 UTC [policies] GetPolicy -> DEBU 20a Returning policy Writers for evaluation
2017-07-28 13:13:41.549 UTC [cauthdsl] func1 -> DEBU 20b 0x5716fef8 gate 1501247621549707670 evaluation starts
2017-07-28 13:13:41.549 UTC [cauthdsl] func2 -> DEBU 20c 0x5716fef8 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:41.549 UTC [cauthdsl] func2 -> DEBU 20d 0x5716fef8 processing identity 0 with bytes of 0a0a4f7264657265724d535012eb052d2d2d2d2d424547494e202d2d2d2d2d0a4d494943437a434341624b674177494241674951534e6d526a35683146535063506f45654a777347796a414b42676771686b6a4f50515144416a42704d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a45554d4249474131554543684d4c5a586868625842735a53356a62323078467a415642674e5642414d54446d4e684c6d5634595731770a62475575593239744d423458445445334d4463794e7a49784d7a6b794e566f58445449334d4463794e5449784d7a6b794e566f775744454c4d416b47413155450a42684d4356564d78457a415242674e5642416754436b4e6862476c6d62334a7561574578466a415542674e564241635444564e6862694247636d467559326c7a0a593238784844416142674e5642414d54453239795a4756795a5849755a586868625842735a53356a623230775754415442676371686b6a4f50514942426767710a686b6a4f50514d4242774e434141535a3669464c6362476d345772464e543952417a784d673279655642654a3871427231312b706c694661454c6d3445465a770a512b676b5038715a6e2f6e346e6364673867726d727559417071776359743476334479556f303077537a414f42674e56485138424166384542414d43423441770a44415944565230544151482f424149774144417242674e5648534d454a4441696743446f4c4d55323879316937466374424f4c66424d736a534464476c4162500a515537706d7551734568697a7744414b42676771686b6a4f5051514441674e48414442454169423832787936492f5432493153333557316b6e4e577a4d3050590a494d4843656c5264764d467146727a4577414967466f7570495658663879696867634d4567516e502b2f4f6f53376f5a4a5130356d5a7335494f53654857413d0a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:41.550 UTC [msp/identity] newIdentity -> DEBU 20e Creating identity instance for ID &{OrdererMSP 373d501a27deab7aff1c08731256ff6799484e1ae836cb098108701e56368642}
2017-07-28 13:13:41.581 UTC [msp] SatisfiesPrincipal -> DEBU 20f Checking if identity satisfies MEMBER role for OrdererMSP
2017-07-28 13:13:41.581 UTC [msp] Validate -> DEBU 210 MSP OrdererMSP validating identity
2017-07-28 13:13:41.612 UTC [cauthdsl] func2 -> DEBU 211 0x5716fef8 principal matched by identity 0
2017-07-28 13:13:41.613 UTC [msp/identity] Verify -> DEBU 212 Verify: digest = 00000000  a9 45 ac c3 ff b4 62 e2  84 f8 94 ca 84 41 1e 17  |.E....b......A..|
00000010  96 75 dd 8f 8a e8 2d 34  41 13 3f 3d 7a 43 e6 0d  |.u....-4A.?=zC..|
2017-07-28 13:13:41.614 UTC [msp/identity] Verify -> DEBU 213 Verify: sig = 00000000  30 45 02 21 00 ff b5 db  cb 79 d0 00 61 d6 d7 e8  |0E.!.....y..a...|
00000010  4d 29 e1 89 c1 cf 66 12  50 d3 74 39 92 78 91 60  |M)....f.P.t9.x.`|
00000020  7e e2 8e e8 8f 02 20 7c  cf 42 d1 69 13 f1 0f 64  |~..... |.B.i...d|
00000030  ec 52 cd 25 cd 76 36 cf  58 82 f7 c4 90 38 0c 70  |.R.%.v6.X....8.p|
00000040  32 21 78 58 fc b1 e0                              |2!xX...|
2017-07-28 13:13:41.644 UTC [cauthdsl] func2 -> DEBU 214 0x5716fef8 principal evaluation succeeds for identity 0
2017-07-28 13:13:41.644 UTC [cauthdsl] func1 -> DEBU 215 0x5716fef8 gate 1501247621549707670 evaluation succeeds
2017-07-28 13:13:41.644 UTC [orderer/common/sigfilter] Apply -> DEBU 216 Forwarding validly signed message for policy &{%!s(*common.ImplicitMetaPolicy=&{Writers 0}) %!s(int=1) [Writers %!s(*policies.implicitMetaPolicy=&{0x571a5cb0 1 [0x5715d158]})]}
2017-07-28 13:13:41.646 UTC [msp] GetLocalMSP -> DEBU 217 Returning existing local MSP
2017-07-28 13:13:41.646 UTC [msp] GetDefaultSigningIdentity -> DEBU 218 Obtaining default signing identity
2017-07-28 13:13:41.647 UTC [msp] GetLocalMSP -> DEBU 219 Returning existing local MSP
2017-07-28 13:13:41.647 UTC [msp] GetDefaultSigningIdentity -> DEBU 21a Obtaining default signing identity
2017-07-28 13:13:41.648 UTC [msp/identity] Sign -> DEBU 21b Sign: plaintext: 0AB1060A1508011A060885F1ECCB0522...07577269746572731A0641646D696E73 
2017-07-28 13:13:41.648 UTC [msp/identity] Sign -> DEBU 21c Sign: digest: 179AF0F16702DF2BC9CBDC7FC511214B890E258E80A9C5A199F051B5DD479866 
2017-07-28 13:13:41.657 UTC [common/config] NewStandardValues -> DEBU 21d Initializing protos for *config.ChannelProtos
2017-07-28 13:13:41.657 UTC [common/config] initializeProtosStruct -> DEBU 21e Processing field: HashingAlgorithm
2017-07-28 13:13:41.657 UTC [common/config] initializeProtosStruct -> DEBU 21f Processing field: BlockDataHashingStructure
2017-07-28 13:13:41.657 UTC [common/config] initializeProtosStruct -> DEBU 220 Processing field: OrdererAddresses
2017-07-28 13:13:41.657 UTC [common/config] initializeProtosStruct -> DEBU 221 Processing field: Consortium
2017-07-28 13:13:41.658 UTC [common/configtx] addToMap -> DEBU 222 Adding to config map: [Groups] /Channel
2017-07-28 13:13:41.658 UTC [common/configtx] addToMap -> DEBU 223 Adding to config map: [Groups] /Channel/Orderer
2017-07-28 13:13:41.659 UTC [common/configtx] addToMap -> DEBU 224 Adding to config map: [Groups] /Channel/Orderer/OrdererOrg
2017-07-28 13:13:41.659 UTC [common/configtx] addToMap -> DEBU 225 Adding to config map: [Values] /Channel/Orderer/OrdererOrg/MSP
2017-07-28 13:13:41.659 UTC [common/configtx] addToMap -> DEBU 226 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Readers
2017-07-28 13:13:41.659 UTC [common/configtx] addToMap -> DEBU 227 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Writers
2017-07-28 13:13:41.659 UTC [common/configtx] addToMap -> DEBU 228 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Admins
2017-07-28 13:13:41.659 UTC [common/configtx] addToMap -> DEBU 229 Adding to config map: [Values] /Channel/Orderer/ConsensusType
2017-07-28 13:13:41.660 UTC [common/configtx] addToMap -> DEBU 22a Adding to config map: [Values] /Channel/Orderer/BatchSize
2017-07-28 13:13:41.660 UTC [common/configtx] addToMap -> DEBU 22b Adding to config map: [Values] /Channel/Orderer/BatchTimeout
2017-07-28 13:13:41.660 UTC [common/configtx] addToMap -> DEBU 22c Adding to config map: [Values] /Channel/Orderer/ChannelRestrictions
2017-07-28 13:13:41.660 UTC [common/configtx] addToMap -> DEBU 22d Adding to config map: [Policy] /Channel/Orderer/Admins
2017-07-28 13:13:41.661 UTC [common/configtx] addToMap -> DEBU 22e Adding to config map: [Policy] /Channel/Orderer/BlockValidation
2017-07-28 13:13:41.661 UTC [common/configtx] addToMap -> DEBU 22f Adding to config map: [Policy] /Channel/Orderer/Readers
2017-07-28 13:13:41.661 UTC [common/configtx] addToMap -> DEBU 230 Adding to config map: [Policy] /Channel/Orderer/Writers
2017-07-28 13:13:41.661 UTC [common/configtx] addToMap -> DEBU 231 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:41.662 UTC [common/configtx] addToMap -> DEBU 232 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:41.662 UTC [common/configtx] addToMap -> DEBU 233 Adding to config map: [Values] /Channel/Application/Org1MSP/MSP
2017-07-28 13:13:41.662 UTC [common/configtx] addToMap -> DEBU 234 Adding to config map: [Policy] /Channel/Application/Org1MSP/Writers
2017-07-28 13:13:41.662 UTC [common/configtx] addToMap -> DEBU 235 Adding to config map: [Policy] /Channel/Application/Org1MSP/Admins
2017-07-28 13:13:41.662 UTC [common/configtx] addToMap -> DEBU 236 Adding to config map: [Policy] /Channel/Application/Org1MSP/Readers
2017-07-28 13:13:41.663 UTC [common/configtx] addToMap -> DEBU 237 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:41.663 UTC [common/configtx] addToMap -> DEBU 238 Adding to config map: [Values] /Channel/Application/Org2MSP/MSP
2017-07-28 13:13:41.663 UTC [common/configtx] addToMap -> DEBU 239 Adding to config map: [Policy] /Channel/Application/Org2MSP/Admins
2017-07-28 13:13:41.663 UTC [common/configtx] addToMap -> DEBU 23a Adding to config map: [Policy] /Channel/Application/Org2MSP/Readers
2017-07-28 13:13:41.664 UTC [common/configtx] addToMap -> DEBU 23b Adding to config map: [Policy] /Channel/Application/Org2MSP/Writers
2017-07-28 13:13:41.664 UTC [common/configtx] addToMap -> DEBU 23c Adding to config map: [Policy] /Channel/Application/ChannelCreationPolicy
2017-07-28 13:13:41.664 UTC [common/configtx] addToMap -> DEBU 23d Adding to config map: [Values] /Channel/OrdererAddresses
2017-07-28 13:13:41.664 UTC [common/configtx] addToMap -> DEBU 23e Adding to config map: [Values] /Channel/HashingAlgorithm
2017-07-28 13:13:41.664 UTC [common/configtx] addToMap -> DEBU 23f Adding to config map: [Values] /Channel/BlockDataHashingStructure
2017-07-28 13:13:41.665 UTC [common/configtx] addToMap -> DEBU 240 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:41.665 UTC [common/configtx] addToMap -> DEBU 241 Adding to config map: [Policy] /Channel/Admins
2017-07-28 13:13:41.665 UTC [common/configtx] addToMap -> DEBU 242 Adding to config map: [Policy] /Channel/Readers
2017-07-28 13:13:41.665 UTC [common/configtx] addToMap -> DEBU 243 Adding to config map: [Policy] /Channel/Writers
2017-07-28 13:13:41.665 UTC [common/configtx] processConfig -> DEBU 244 Beginning new config for channel mychannel
2017-07-28 13:13:41.666 UTC [common/config] NewStandardValues -> DEBU 245 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:41.666 UTC [common/config] initializeProtosStruct -> DEBU 246 Processing field: HashingAlgorithm
2017-07-28 13:13:41.666 UTC [common/config] initializeProtosStruct -> DEBU 247 Processing field: BlockDataHashingStructure
2017-07-28 13:13:41.666 UTC [common/config] initializeProtosStruct -> DEBU 248 Processing field: OrdererAddresses
2017-07-28 13:13:41.666 UTC [common/config] initializeProtosStruct -> DEBU 249 Processing field: Consortium
2017-07-28 13:13:41.666 UTC [policies] ProposePolicy -> DEBU 24a Proposed new policy Admins for Channel
2017-07-28 13:13:41.666 UTC [policies] ProposePolicy -> DEBU 24b Proposed new policy Readers for Channel
2017-07-28 13:13:41.667 UTC [policies] ProposePolicy -> DEBU 24c Proposed new policy Writers for Channel
2017-07-28 13:13:41.667 UTC [common/config] NewStandardValues -> DEBU 24d Initializing protos for *config.OrdererProtos
2017-07-28 13:13:41.667 UTC [common/config] initializeProtosStruct -> DEBU 24e Processing field: ConsensusType
2017-07-28 13:13:41.667 UTC [common/config] initializeProtosStruct -> DEBU 24f Processing field: BatchSize
2017-07-28 13:13:41.667 UTC [common/config] initializeProtosStruct -> DEBU 250 Processing field: BatchTimeout
2017-07-28 13:13:41.667 UTC [common/config] initializeProtosStruct -> DEBU 251 Processing field: KafkaBrokers
2017-07-28 13:13:41.667 UTC [common/config] initializeProtosStruct -> DEBU 252 Processing field: ChannelRestrictions
2017-07-28 13:13:41.667 UTC [policies] ProposePolicy -> DEBU 253 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:41.667 UTC [policies] ProposePolicy -> DEBU 254 Proposed new policy Readers for Orderer
2017-07-28 13:13:41.668 UTC [policies] ProposePolicy -> DEBU 255 Proposed new policy Writers for Orderer
2017-07-28 13:13:41.668 UTC [policies] ProposePolicy -> DEBU 256 Proposed new policy Admins for Orderer
2017-07-28 13:13:41.668 UTC [common/config] NewStandardValues -> DEBU 257 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:41.668 UTC [common/config] initializeProtosStruct -> DEBU 258 Processing field: MSP
2017-07-28 13:13:41.668 UTC [policies] ProposePolicy -> DEBU 259 Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:41.668 UTC [policies] ProposePolicy -> DEBU 25a Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:41.668 UTC [policies] ProposePolicy -> DEBU 25b Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:41.669 UTC [common/config] NewStandardValues -> DEBU 25c Initializing protos for *struct {}
2017-07-28 13:13:41.669 UTC [policies] ProposePolicy -> DEBU 25d Proposed new policy ChannelCreationPolicy for Application
2017-07-28 13:13:41.669 UTC [common/config] NewStandardValues -> DEBU 25e Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:41.669 UTC [common/config] initializeProtosStruct -> DEBU 25f Processing field: MSP
2017-07-28 13:13:41.669 UTC [common/config] NewStandardValues -> DEBU 260 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:41.669 UTC [common/config] initializeProtosStruct -> DEBU 261 Processing field: AnchorPeers
2017-07-28 13:13:41.669 UTC [common/config] NewStandardValues -> DEBU 262 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:41.669 UTC [common/config] initializeProtosStruct -> DEBU 263 Processing field: MSP
2017-07-28 13:13:41.670 UTC [policies] ProposePolicy -> DEBU 264 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:41.670 UTC [policies] ProposePolicy -> DEBU 265 Proposed new policy Admins for Org1MSP
2017-07-28 13:13:41.670 UTC [policies] ProposePolicy -> DEBU 266 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:41.670 UTC [common/config] NewStandardValues -> DEBU 267 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:41.670 UTC [common/config] initializeProtosStruct -> DEBU 268 Processing field: MSP
2017-07-28 13:13:41.670 UTC [common/config] NewStandardValues -> DEBU 269 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:41.670 UTC [common/config] initializeProtosStruct -> DEBU 26a Processing field: AnchorPeers
2017-07-28 13:13:41.670 UTC [common/config] NewStandardValues -> DEBU 26b Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:41.671 UTC [common/config] initializeProtosStruct -> DEBU 26c Processing field: MSP
2017-07-28 13:13:41.671 UTC [policies] ProposePolicy -> DEBU 26d Proposed new policy Admins for Org2MSP
2017-07-28 13:13:41.671 UTC [policies] ProposePolicy -> DEBU 26e Proposed new policy Readers for Org2MSP
2017-07-28 13:13:41.671 UTC [policies] ProposePolicy -> DEBU 26f Proposed new policy Writers for Org2MSP
2017-07-28 13:13:41.671 UTC [common/config] validateMSP -> DEBU 270 Setting up MSP for org OrdererOrg
2017-07-28 13:13:41.671 UTC [msp] NewBccspMsp -> DEBU 271 Creating BCCSP-based MSP instance
2017-07-28 13:13:41.671 UTC [msp] Setup -> DEBU 272 Setting up MSP instance OrdererMSP
2017-07-28 13:13:41.673 UTC [msp/identity] newIdentity -> DEBU 273 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:41.705 UTC [msp/identity] newIdentity -> DEBU 274 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:41.736 UTC [msp/identity] newIdentity -> DEBU 275 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:41.829 UTC [msp] Validate -> DEBU 276 MSP OrdererMSP validating identity
2017-07-28 13:13:41.860 UTC [common/config] Validate -> DEBU 277 Anchor peers for org Org1MSP are 
2017-07-28 13:13:41.860 UTC [common/config] validateMSP -> DEBU 278 Setting up MSP for org Org1MSP
2017-07-28 13:13:41.860 UTC [msp] NewBccspMsp -> DEBU 279 Creating BCCSP-based MSP instance
2017-07-28 13:13:41.860 UTC [msp] Setup -> DEBU 27a Setting up MSP instance Org1MSP
2017-07-28 13:13:41.862 UTC [msp/identity] newIdentity -> DEBU 27b Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:41.893 UTC [msp/identity] newIdentity -> DEBU 27c Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:41.925 UTC [msp/identity] newIdentity -> DEBU 27d Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:42.017 UTC [msp] Validate -> DEBU 27e MSP Org1MSP validating identity
2017-07-28 13:13:42.048 UTC [common/config] Validate -> DEBU 27f Anchor peers for org Org2MSP are 
2017-07-28 13:13:42.048 UTC [common/config] validateMSP -> DEBU 280 Setting up MSP for org Org2MSP
2017-07-28 13:13:42.049 UTC [msp] NewBccspMsp -> DEBU 281 Creating BCCSP-based MSP instance
2017-07-28 13:13:42.049 UTC [msp] Setup -> DEBU 282 Setting up MSP instance Org2MSP
2017-07-28 13:13:42.050 UTC [msp/identity] newIdentity -> DEBU 283 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:42.082 UTC [msp/identity] newIdentity -> DEBU 284 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:42.113 UTC [msp/identity] newIdentity -> DEBU 285 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:42.206 UTC [msp] Validate -> DEBU 286 MSP Org2MSP validating identity
2017-07-28 13:13:42.236 UTC [msp] Setup -> DEBU 287 Setting up the MSP manager (3 msps)
2017-07-28 13:13:42.236 UTC [msp] Setup -> DEBU 288 MSP manager setup complete, setup 3 msps
2017-07-28 13:13:42.237 UTC [policies] GetPolicy -> DEBU 289 Returning policy Writers for evaluation
2017-07-28 13:13:42.237 UTC [policies] CommitProposals -> DEBU 28a In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:42.237 UTC [policies] GetPolicy -> DEBU 28b Returning policy Admins for evaluation
2017-07-28 13:13:42.237 UTC [policies] CommitProposals -> DEBU 28c In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:42.237 UTC [policies] GetPolicy -> DEBU 28d Returning policy Readers for evaluation
2017-07-28 13:13:42.237 UTC [policies] CommitProposals -> DEBU 28e In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:42.237 UTC [policies] GetPolicy -> DEBU 28f Returning policy Writers for evaluation
2017-07-28 13:13:42.237 UTC [policies] GetPolicy -> DEBU 290 Returning policy Readers for evaluation
2017-07-28 13:13:42.237 UTC [policies] GetPolicy -> DEBU 291 Returning policy Writers for evaluation
2017-07-28 13:13:42.238 UTC [policies] GetPolicy -> DEBU 292 Returning policy Admins for evaluation
2017-07-28 13:13:42.238 UTC [policies] GetPolicy -> DEBU 293 Returning policy Writers for evaluation
2017-07-28 13:13:42.238 UTC [policies] CommitProposals -> DEBU 294 In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:42.238 UTC [policies] GetPolicy -> DEBU 295 Returning policy Admins for evaluation
2017-07-28 13:13:42.238 UTC [policies] CommitProposals -> DEBU 296 In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:42.238 UTC [policies] GetPolicy -> DEBU 297 Returning policy Readers for evaluation
2017-07-28 13:13:42.238 UTC [policies] CommitProposals -> DEBU 298 In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:42.238 UTC [policies] GetPolicy -> DEBU 299 Returning policy Admins for evaluation
2017-07-28 13:13:42.239 UTC [policies] CommitProposals -> DEBU 29a In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:42.239 UTC [policies] GetPolicy -> DEBU 29b Returning policy Readers for evaluation
2017-07-28 13:13:42.239 UTC [policies] CommitProposals -> DEBU 29c In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:42.239 UTC [policies] GetPolicy -> DEBU 29d Returning policy Writers for evaluation
2017-07-28 13:13:42.239 UTC [policies] CommitProposals -> DEBU 29e In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:42.239 UTC [policies] GetPolicy -> DEBU 29f Returning policy Admins for evaluation
2017-07-28 13:13:42.239 UTC [policies] GetPolicy -> DEBU 2a0 Returning policy Admins for evaluation
2017-07-28 13:13:42.239 UTC [policies] GetPolicy -> DEBU 2a1 Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:42.239 UTC [policies] CommitProposals -> DEBU 2a2 In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:42.239 UTC [policies] GetPolicy -> DEBU 2a3 Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:42.240 UTC [policies] CommitProposals -> DEBU 2a4 In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:42.240 UTC [policies] GetPolicy -> DEBU 2a5 Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:42.240 UTC [policies] CommitProposals -> DEBU 2a6 In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:42.240 UTC [policies] GetPolicy -> DEBU 2a7 Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:42.240 UTC [policies] CommitProposals -> DEBU 2a8 In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:42.240 UTC [policies] GetPolicy -> DEBU 2a9 Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:42.240 UTC [policies] CommitProposals -> DEBU 2aa In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:42.240 UTC [policies] GetPolicy -> DEBU 2ab Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:42.241 UTC [policies] CommitProposals -> DEBU 2ac In commit adding relative sub-policy Application/ChannelCreationPolicy to Channel
2017-07-28 13:13:42.241 UTC [policies] GetPolicy -> DEBU 2ad Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:42.241 UTC [policies] CommitProposals -> DEBU 2ae In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:42.241 UTC [policies] GetPolicy -> DEBU 2af Returning policy BlockValidation for evaluation
2017-07-28 13:13:42.241 UTC [policies] CommitProposals -> DEBU 2b0 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:42.241 UTC [policies] GetPolicy -> DEBU 2b1 Returning policy Readers for evaluation
2017-07-28 13:13:42.241 UTC [policies] CommitProposals -> DEBU 2b2 In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:42.241 UTC [policies] GetPolicy -> DEBU 2b3 Returning policy Writers for evaluation
2017-07-28 13:13:42.241 UTC [policies] CommitProposals -> DEBU 2b4 In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:42.241 UTC [policies] GetPolicy -> DEBU 2b5 Returning policy Admins for evaluation
2017-07-28 13:13:42.242 UTC [policies] CommitProposals -> DEBU 2b6 In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:42.242 UTC [policies] GetPolicy -> DEBU 2b7 Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:42.242 UTC [policies] CommitProposals -> DEBU 2b8 In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:42.242 UTC [policies] GetPolicy -> DEBU 2b9 Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:42.242 UTC [policies] CommitProposals -> DEBU 2ba In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:42.242 UTC [policies] GetPolicy -> DEBU 2bb Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:42.242 UTC [policies] CommitProposals -> DEBU 2bc In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:42.242 UTC [policies] GetPolicy -> DEBU 2bd Returning policy Admins for evaluation
2017-07-28 13:13:42.242 UTC [policies] GetPolicy -> DEBU 2be Returning dummy reject all policy because Admins could not be found in /Application/Admins
2017-07-28 13:13:42.243 UTC [policies] GetPolicy -> DEBU 2bf Returning policy Readers for evaluation
2017-07-28 13:13:42.243 UTC [policies] GetPolicy -> DEBU 2c0 Returning dummy reject all policy because Readers could not be found in /Application/Readers
2017-07-28 13:13:42.243 UTC [policies] GetPolicy -> DEBU 2c1 Returning policy Writers for evaluation
2017-07-28 13:13:42.243 UTC [policies] GetPolicy -> DEBU 2c2 Returning dummy reject all policy because Writers could not be found in /Application/Writers
2017-07-28 13:13:42.243 UTC [common/configtx] addToMap -> DEBU 2c3 Adding to config map: [Groups] /Channel
2017-07-28 13:13:42.244 UTC [common/configtx] addToMap -> DEBU 2c4 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:42.244 UTC [common/configtx] addToMap -> DEBU 2c5 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:42.244 UTC [common/configtx] addToMap -> DEBU 2c6 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:42.244 UTC [common/configtx] addToMap -> DEBU 2c7 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:42.244 UTC [common/configtx] addToMap -> DEBU 2c8 Adding to config map: [Groups] /Channel
2017-07-28 13:13:42.245 UTC [common/configtx] addToMap -> DEBU 2c9 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:42.245 UTC [common/configtx] addToMap -> DEBU 2ca Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:42.245 UTC [common/configtx] addToMap -> DEBU 2cb Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:42.245 UTC [common/configtx] addToMap -> DEBU 2cc Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:42.245 UTC [common/configtx] addToMap -> DEBU 2cd Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:42.245 UTC [common/configtx] addToMap -> DEBU 2ce Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:42.246 UTC [common/configtx] addToMap -> DEBU 2cf Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:42.246 UTC [policies] GetPolicy -> DEBU 2d0 Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:42.246 UTC [cauthdsl] func1 -> DEBU 2d1 0x57090b20 gate 1501247622246606331 evaluation starts
2017-07-28 13:13:42.246 UTC [cauthdsl] func2 -> DEBU 2d2 0x57090b20 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:42.246 UTC [cauthdsl] func2 -> DEBU 2d3 0x57090b20 processing identity 0 with bytes of 0a074f7267314d535012fc052d2d2d2d2d424547494e202d2d2d2d2d0a4d4949434744434341622b674177494241674951644a72426f4375372b7a5972642f5062457749554954414b42676771686b6a4f50515144416a427a4d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a455a4d4263474131554543684d5162334a6e4d53356c654746746347786c4c6d4e76625445634d426f474131554541784d54593245750a62334a6e4d53356c654746746347786c4c6d4e7662544165467730784e7a41334d6a63794d544d354d6a5661467730794e7a41334d6a55794d544d354d6a56610a4d467378437a414a42674e5642415954416c56544d524d77455159445651514945777044595778705a6d3979626d6c684d5259774641594456515148457731540a59573467526e4a68626d4e7063324e764d523877485159445651514444425a425a473170626b4276636d63784c6d56345957317762475575593239744d466b770a457759484b6f5a497a6a3043415159494b6f5a497a6a3044415163445167414572344244642b326e675345546c547042682b33736630696c4a36584a677372300a6c4241725643526f424448674d754378663359556c6834745734624a476b4b4878654b46574c346a5157676c4c47454930574d5654714e4e4d457377446759440a565230504151482f42415144416765414d41774741315564457745422f7751434d4141774b7759445652306a42435177496f41676932646d787565744c5132380a5a345431556d697a506e562f395546644d3448736170354f754561552f685977436759494b6f5a497a6a3045417749445277417752414967487864537150576f0a657442454c744f55664a696b4a63704150634b4e7576344b52595170352f43553253384349426d5570344a63483875747a6669572f4f7941324e52696c2b68570a6c757275696c56353850484f384e72680a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:42.247 UTC [msp/identity] newIdentity -> DEBU 2d4 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:42.278 UTC [msp] SatisfiesPrincipal -> DEBU 2d5 Checking if identity satisfies ADMIN role for Org1MSP
2017-07-28 13:13:42.278 UTC [cauthdsl] func2 -> DEBU 2d6 0x57090b20 principal matched by identity 0
2017-07-28 13:13:42.279 UTC [msp/identity] Verify -> DEBU 2d7 Verify: digest = 00000000  b5 c0 59 46 ff b6 b5 54  4d 7b fd 8e 62 da 01 02  |..YF...TM{..b...|
00000010  75 e2 9f ec 0f 1b fe f8  bb 22 99 86 d6 1c ea 3a  |u........".....:|
2017-07-28 13:13:42.279 UTC [msp/identity] Verify -> DEBU 2d8 Verify: sig = 00000000  30 45 02 21 00 f4 fd 95  61 eb 08 39 ca 93 10 e5  |0E.!....a..9....|
00000010  6e d1 37 50 7f 6b 75 bf  2d a9 7a ed 5b a6 67 7d  |n.7P.ku.-.z.[.g}|
00000020  4c 7b 76 8a df 02 20 0c  ba 5d 41 2f 09 57 a9 37  |L{v... ..]A/.W.7|
00000030  de c6 8e 92 42 d9 d8 3c  f5 de 20 09 67 81 45 17  |....B..<.. .g.E.|
00000040  04 a6 1c 36 9a a9 1f                              |...6...|
2017-07-28 13:13:42.309 UTC [cauthdsl] func2 -> DEBU 2d9 0x57090b20 principal evaluation succeeds for identity 0
2017-07-28 13:13:42.310 UTC [cauthdsl] func1 -> DEBU 2da 0x57090b20 gate 1501247622246606331 evaluation succeeds
2017-07-28 13:13:42.310 UTC [common/configtx] processConfig -> DEBU 2db Beginning new config for channel mychannel
2017-07-28 13:13:42.310 UTC [common/config] NewStandardValues -> DEBU 2dc Initializing protos for *config.ChannelProtos
2017-07-28 13:13:42.311 UTC [common/config] initializeProtosStruct -> DEBU 2dd Processing field: HashingAlgorithm
2017-07-28 13:13:42.311 UTC [common/config] initializeProtosStruct -> DEBU 2de Processing field: BlockDataHashingStructure
2017-07-28 13:13:42.311 UTC [common/config] initializeProtosStruct -> DEBU 2df Processing field: OrdererAddresses
2017-07-28 13:13:42.311 UTC [common/config] initializeProtosStruct -> DEBU 2e0 Processing field: Consortium
2017-07-28 13:13:42.311 UTC [policies] ProposePolicy -> DEBU 2e1 Proposed new policy Writers for Channel
2017-07-28 13:13:42.311 UTC [policies] ProposePolicy -> DEBU 2e2 Proposed new policy Admins for Channel
2017-07-28 13:13:42.311 UTC [policies] ProposePolicy -> DEBU 2e3 Proposed new policy Readers for Channel
2017-07-28 13:13:42.311 UTC [common/config] NewStandardValues -> DEBU 2e4 Initializing protos for *struct {}
2017-07-28 13:13:42.312 UTC [policies] ProposePolicy -> DEBU 2e5 Proposed new policy Readers for Application
2017-07-28 13:13:42.312 UTC [policies] ProposePolicy -> DEBU 2e6 Proposed new policy Admins for Application
2017-07-28 13:13:42.312 UTC [policies] ProposePolicy -> DEBU 2e7 Proposed new policy Writers for Application
2017-07-28 13:13:42.312 UTC [common/config] NewStandardValues -> DEBU 2e8 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.312 UTC [common/config] initializeProtosStruct -> DEBU 2e9 Processing field: MSP
2017-07-28 13:13:42.312 UTC [common/config] NewStandardValues -> DEBU 2ea Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:42.312 UTC [common/config] initializeProtosStruct -> DEBU 2eb Processing field: AnchorPeers
2017-07-28 13:13:42.312 UTC [common/config] NewStandardValues -> DEBU 2ec Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.312 UTC [common/config] initializeProtosStruct -> DEBU 2ed Processing field: MSP
2017-07-28 13:13:42.313 UTC [policies] ProposePolicy -> DEBU 2ee Proposed new policy Writers for Org1MSP
2017-07-28 13:13:42.313 UTC [policies] ProposePolicy -> DEBU 2ef Proposed new policy Admins for Org1MSP
2017-07-28 13:13:42.313 UTC [policies] ProposePolicy -> DEBU 2f0 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:42.313 UTC [common/config] NewStandardValues -> DEBU 2f1 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.313 UTC [common/config] initializeProtosStruct -> DEBU 2f2 Processing field: MSP
2017-07-28 13:13:42.313 UTC [common/config] NewStandardValues -> DEBU 2f3 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:42.313 UTC [common/config] initializeProtosStruct -> DEBU 2f4 Processing field: AnchorPeers
2017-07-28 13:13:42.314 UTC [common/config] NewStandardValues -> DEBU 2f5 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.314 UTC [common/config] initializeProtosStruct -> DEBU 2f6 Processing field: MSP
2017-07-28 13:13:42.314 UTC [policies] ProposePolicy -> DEBU 2f7 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:42.314 UTC [policies] ProposePolicy -> DEBU 2f8 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:42.314 UTC [policies] ProposePolicy -> DEBU 2f9 Proposed new policy Writers for Org2MSP
2017-07-28 13:13:42.314 UTC [common/config] NewStandardValues -> DEBU 2fa Initializing protos for *config.OrdererProtos
2017-07-28 13:13:42.314 UTC [common/config] initializeProtosStruct -> DEBU 2fb Processing field: ConsensusType
2017-07-28 13:13:42.314 UTC [common/config] initializeProtosStruct -> DEBU 2fc Processing field: BatchSize
2017-07-28 13:13:42.315 UTC [common/config] initializeProtosStruct -> DEBU 2fd Processing field: BatchTimeout
2017-07-28 13:13:42.315 UTC [common/config] initializeProtosStruct -> DEBU 2fe Processing field: KafkaBrokers
2017-07-28 13:13:42.315 UTC [common/config] initializeProtosStruct -> DEBU 2ff Processing field: ChannelRestrictions
2017-07-28 13:13:42.315 UTC [policies] ProposePolicy -> DEBU 300 Proposed new policy Admins for Orderer
2017-07-28 13:13:42.315 UTC [policies] ProposePolicy -> DEBU 301 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:42.315 UTC [policies] ProposePolicy -> DEBU 302 Proposed new policy Readers for Orderer
2017-07-28 13:13:42.315 UTC [policies] ProposePolicy -> DEBU 303 Proposed new policy Writers for Orderer
2017-07-28 13:13:42.315 UTC [common/config] NewStandardValues -> DEBU 304 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.316 UTC [common/config] initializeProtosStruct -> DEBU 305 Processing field: MSP
2017-07-28 13:13:42.316 UTC [policies] ProposePolicy -> DEBU 306 Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:42.316 UTC [policies] ProposePolicy -> DEBU 307 Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:42.316 UTC [policies] ProposePolicy -> DEBU 308 Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:42.316 UTC [common/config] Validate -> DEBU 309 Anchor peers for org Org1MSP are 
2017-07-28 13:13:42.316 UTC [common/config] validateMSP -> DEBU 30a Setting up MSP for org Org1MSP
2017-07-28 13:13:42.316 UTC [msp] NewBccspMsp -> DEBU 30b Creating BCCSP-based MSP instance
2017-07-28 13:13:42.317 UTC [msp] Setup -> DEBU 30c Setting up MSP instance Org1MSP
2017-07-28 13:13:42.319 UTC [msp/identity] newIdentity -> DEBU 30d Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:42.350 UTC [msp/identity] newIdentity -> DEBU 30e Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:42.382 UTC [msp/identity] newIdentity -> DEBU 30f Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:42.474 UTC [msp] Validate -> DEBU 310 MSP Org1MSP validating identity
2017-07-28 13:13:42.505 UTC [common/config] Validate -> DEBU 311 Anchor peers for org Org2MSP are 
2017-07-28 13:13:42.505 UTC [common/config] validateMSP -> DEBU 312 Setting up MSP for org Org2MSP
2017-07-28 13:13:42.505 UTC [msp] NewBccspMsp -> DEBU 313 Creating BCCSP-based MSP instance
2017-07-28 13:13:42.505 UTC [msp] Setup -> DEBU 314 Setting up MSP instance Org2MSP
2017-07-28 13:13:42.507 UTC [msp/identity] newIdentity -> DEBU 315 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:42.539 UTC [msp/identity] newIdentity -> DEBU 316 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:42.571 UTC [msp/identity] newIdentity -> DEBU 317 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:42.665 UTC [msp] Validate -> DEBU 318 MSP Org2MSP validating identity
2017-07-28 13:13:42.696 UTC [common/config] validateMSP -> DEBU 319 Setting up MSP for org OrdererOrg
2017-07-28 13:13:42.696 UTC [msp] NewBccspMsp -> DEBU 31a Creating BCCSP-based MSP instance
2017-07-28 13:13:42.696 UTC [msp] Setup -> DEBU 31b Setting up MSP instance OrdererMSP
2017-07-28 13:13:42.698 UTC [msp/identity] newIdentity -> DEBU 31c Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:42.729 UTC [msp/identity] newIdentity -> DEBU 31d Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:42.761 UTC [msp/identity] newIdentity -> DEBU 31e Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:42.853 UTC [msp] Validate -> DEBU 31f MSP OrdererMSP validating identity
2017-07-28 13:13:42.884 UTC [msp] Setup -> DEBU 320 Setting up the MSP manager (3 msps)
2017-07-28 13:13:42.885 UTC [msp] Setup -> DEBU 321 MSP manager setup complete, setup 3 msps
2017-07-28 13:13:42.885 UTC [common/configtx] addToMap -> DEBU 322 Adding to config map: [Groups] /Channel
2017-07-28 13:13:42.890 UTC [common/configtx] addToMap -> DEBU 323 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:42.890 UTC [common/configtx] addToMap -> DEBU 324 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:42.891 UTC [common/configtx] addToMap -> DEBU 325 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:42.892 UTC [common/configtx] addToMap -> DEBU 326 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:42.892 UTC [common/configtx] addToMap -> DEBU 327 Adding to config map: [Groups] /Channel
2017-07-28 13:13:42.894 UTC [common/configtx] addToMap -> DEBU 328 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:42.894 UTC [common/configtx] addToMap -> DEBU 329 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:42.894 UTC [common/configtx] addToMap -> DEBU 32a Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:42.895 UTC [common/configtx] addToMap -> DEBU 32b Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:42.896 UTC [common/configtx] addToMap -> DEBU 32c Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:42.896 UTC [common/configtx] addToMap -> DEBU 32d Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:42.901 UTC [common/configtx] addToMap -> DEBU 32e Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:42.902 UTC [policies] GetPolicy -> DEBU 32f Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:42.902 UTC [cauthdsl] func1 -> DEBU 330 0x56f3c500 gate 1501247622902532686 evaluation starts
2017-07-28 13:13:42.902 UTC [cauthdsl] func2 -> DEBU 331 0x56f3c500 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:42.902 UTC [cauthdsl] func2 -> DEBU 332 0x56f3c500 processing identity 0 with bytes of 0a074f7267314d535012fc052d2d2d2d2d424547494e202d2d2d2d2d0a4d4949434744434341622b674177494241674951644a72426f4375372b7a5972642f5062457749554954414b42676771686b6a4f50515144416a427a4d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a455a4d4263474131554543684d5162334a6e4d53356c654746746347786c4c6d4e76625445634d426f474131554541784d54593245750a62334a6e4d53356c654746746347786c4c6d4e7662544165467730784e7a41334d6a63794d544d354d6a5661467730794e7a41334d6a55794d544d354d6a56610a4d467378437a414a42674e5642415954416c56544d524d77455159445651514945777044595778705a6d3979626d6c684d5259774641594456515148457731540a59573467526e4a68626d4e7063324e764d523877485159445651514444425a425a473170626b4276636d63784c6d56345957317762475575593239744d466b770a457759484b6f5a497a6a3043415159494b6f5a497a6a3044415163445167414572344244642b326e675345546c547042682b33736630696c4a36584a677372300a6c4241725643526f424448674d754378663359556c6834745734624a476b4b4878654b46574c346a5157676c4c47454930574d5654714e4e4d457377446759440a565230504151482f42415144416765414d41774741315564457745422f7751434d4141774b7759445652306a42435177496f41676932646d787565744c5132380a5a345431556d697a506e562f395546644d3448736170354f754561552f685977436759494b6f5a497a6a3045417749445277417752414967487864537150576f0a657442454c744f55664a696b4a63704150634b4e7576344b52595170352f43553253384349426d5570344a63483875747a6669572f4f7941324e52696c2b68570a6c757275696c56353850484f384e72680a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:42.904 UTC [msp/identity] newIdentity -> DEBU 333 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:42.935 UTC [msp] SatisfiesPrincipal -> DEBU 334 Checking if identity satisfies ADMIN role for Org1MSP
2017-07-28 13:13:42.935 UTC [cauthdsl] func2 -> DEBU 335 0x56f3c500 principal matched by identity 0
2017-07-28 13:13:42.935 UTC [msp/identity] Verify -> DEBU 336 Verify: digest = 00000000  b5 c0 59 46 ff b6 b5 54  4d 7b fd 8e 62 da 01 02  |..YF...TM{..b...|
00000010  75 e2 9f ec 0f 1b fe f8  bb 22 99 86 d6 1c ea 3a  |u........".....:|
2017-07-28 13:13:42.935 UTC [msp/identity] Verify -> DEBU 337 Verify: sig = 00000000  30 45 02 21 00 f4 fd 95  61 eb 08 39 ca 93 10 e5  |0E.!....a..9....|
00000010  6e d1 37 50 7f 6b 75 bf  2d a9 7a ed 5b a6 67 7d  |n.7P.ku.-.z.[.g}|
00000020  4c 7b 76 8a df 02 20 0c  ba 5d 41 2f 09 57 a9 37  |L{v... ..]A/.W.7|
00000030  de c6 8e 92 42 d9 d8 3c  f5 de 20 09 67 81 45 17  |....B..<.. .g.E.|
00000040  04 a6 1c 36 9a a9 1f                              |...6...|
2017-07-28 13:13:42.967 UTC [cauthdsl] func2 -> DEBU 338 0x56f3c500 principal evaluation succeeds for identity 0
2017-07-28 13:13:42.967 UTC [cauthdsl] func1 -> DEBU 339 0x56f3c500 gate 1501247622902532686 evaluation succeeds
2017-07-28 13:13:42.968 UTC [common/configtx] processConfig -> DEBU 33a Beginning new config for channel mychannel
2017-07-28 13:13:42.968 UTC [common/config] NewStandardValues -> DEBU 33b Initializing protos for *config.ChannelProtos
2017-07-28 13:13:42.968 UTC [common/config] initializeProtosStruct -> DEBU 33c Processing field: HashingAlgorithm
2017-07-28 13:13:42.969 UTC [common/config] initializeProtosStruct -> DEBU 33d Processing field: BlockDataHashingStructure
2017-07-28 13:13:42.969 UTC [common/config] initializeProtosStruct -> DEBU 33e Processing field: OrdererAddresses
2017-07-28 13:13:42.969 UTC [common/config] initializeProtosStruct -> DEBU 33f Processing field: Consortium
2017-07-28 13:13:42.969 UTC [policies] ProposePolicy -> DEBU 340 Proposed new policy Admins for Channel
2017-07-28 13:13:42.969 UTC [policies] ProposePolicy -> DEBU 341 Proposed new policy Readers for Channel
2017-07-28 13:13:42.969 UTC [policies] ProposePolicy -> DEBU 342 Proposed new policy Writers for Channel
2017-07-28 13:13:42.969 UTC [common/config] NewStandardValues -> DEBU 343 Initializing protos for *struct {}
2017-07-28 13:13:42.970 UTC [policies] ProposePolicy -> DEBU 344 Proposed new policy Admins for Application
2017-07-28 13:13:42.970 UTC [policies] ProposePolicy -> DEBU 345 Proposed new policy Writers for Application
2017-07-28 13:13:42.970 UTC [policies] ProposePolicy -> DEBU 346 Proposed new policy Readers for Application
2017-07-28 13:13:42.970 UTC [common/config] NewStandardValues -> DEBU 347 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.970 UTC [common/config] initializeProtosStruct -> DEBU 348 Processing field: MSP
2017-07-28 13:13:42.970 UTC [common/config] NewStandardValues -> DEBU 349 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:42.970 UTC [common/config] initializeProtosStruct -> DEBU 34a Processing field: AnchorPeers
2017-07-28 13:13:42.970 UTC [common/config] NewStandardValues -> DEBU 34b Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.971 UTC [common/config] initializeProtosStruct -> DEBU 34c Processing field: MSP
2017-07-28 13:13:42.971 UTC [policies] ProposePolicy -> DEBU 34d Proposed new policy Writers for Org1MSP
2017-07-28 13:13:42.971 UTC [policies] ProposePolicy -> DEBU 34e Proposed new policy Admins for Org1MSP
2017-07-28 13:13:42.971 UTC [policies] ProposePolicy -> DEBU 34f Proposed new policy Readers for Org1MSP
2017-07-28 13:13:42.971 UTC [common/config] NewStandardValues -> DEBU 350 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.971 UTC [common/config] initializeProtosStruct -> DEBU 351 Processing field: MSP
2017-07-28 13:13:42.971 UTC [common/config] NewStandardValues -> DEBU 352 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:42.972 UTC [common/config] initializeProtosStruct -> DEBU 353 Processing field: AnchorPeers
2017-07-28 13:13:42.972 UTC [common/config] NewStandardValues -> DEBU 354 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.972 UTC [common/config] initializeProtosStruct -> DEBU 355 Processing field: MSP
2017-07-28 13:13:42.972 UTC [policies] ProposePolicy -> DEBU 356 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:42.972 UTC [policies] ProposePolicy -> DEBU 357 Proposed new policy Writers for Org2MSP
2017-07-28 13:13:42.972 UTC [policies] ProposePolicy -> DEBU 358 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:42.972 UTC [common/config] NewStandardValues -> DEBU 359 Initializing protos for *config.OrdererProtos
2017-07-28 13:13:42.972 UTC [common/config] initializeProtosStruct -> DEBU 35a Processing field: ConsensusType
2017-07-28 13:13:42.972 UTC [common/config] initializeProtosStruct -> DEBU 35b Processing field: BatchSize
2017-07-28 13:13:42.972 UTC [common/config] initializeProtosStruct -> DEBU 35c Processing field: BatchTimeout
2017-07-28 13:13:42.973 UTC [common/config] initializeProtosStruct -> DEBU 35d Processing field: KafkaBrokers
2017-07-28 13:13:42.973 UTC [common/config] initializeProtosStruct -> DEBU 35e Processing field: ChannelRestrictions
2017-07-28 13:13:42.973 UTC [policies] ProposePolicy -> DEBU 35f Proposed new policy Readers for Orderer
2017-07-28 13:13:42.973 UTC [policies] ProposePolicy -> DEBU 360 Proposed new policy Writers for Orderer
2017-07-28 13:13:42.973 UTC [policies] ProposePolicy -> DEBU 361 Proposed new policy Admins for Orderer
2017-07-28 13:13:42.973 UTC [policies] ProposePolicy -> DEBU 362 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:42.973 UTC [common/config] NewStandardValues -> DEBU 363 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:42.973 UTC [common/config] initializeProtosStruct -> DEBU 364 Processing field: MSP
2017-07-28 13:13:42.973 UTC [policies] ProposePolicy -> DEBU 365 Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:42.974 UTC [policies] ProposePolicy -> DEBU 366 Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:42.974 UTC [policies] ProposePolicy -> DEBU 367 Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:42.974 UTC [common/config] Validate -> DEBU 368 Anchor peers for org Org1MSP are 
2017-07-28 13:13:42.974 UTC [common/config] validateMSP -> DEBU 369 Setting up MSP for org Org1MSP
2017-07-28 13:13:42.974 UTC [msp] NewBccspMsp -> DEBU 36a Creating BCCSP-based MSP instance
2017-07-28 13:13:42.974 UTC [msp] Setup -> DEBU 36b Setting up MSP instance Org1MSP
2017-07-28 13:13:42.976 UTC [msp/identity] newIdentity -> DEBU 36c Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:43.007 UTC [msp/identity] newIdentity -> DEBU 36d Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:43.040 UTC [msp/identity] newIdentity -> DEBU 36e Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:43.135 UTC [msp] Validate -> DEBU 36f MSP Org1MSP validating identity
2017-07-28 13:13:43.167 UTC [common/config] Validate -> DEBU 370 Anchor peers for org Org2MSP are 
2017-07-28 13:13:43.167 UTC [common/config] validateMSP -> DEBU 371 Setting up MSP for org Org2MSP
2017-07-28 13:13:43.167 UTC [msp] NewBccspMsp -> DEBU 372 Creating BCCSP-based MSP instance
2017-07-28 13:13:43.167 UTC [msp] Setup -> DEBU 373 Setting up MSP instance Org2MSP
2017-07-28 13:13:43.169 UTC [msp/identity] newIdentity -> DEBU 374 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:43.202 UTC [msp/identity] newIdentity -> DEBU 375 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:43.234 UTC [msp/identity] newIdentity -> DEBU 376 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:43.328 UTC [msp] Validate -> DEBU 377 MSP Org2MSP validating identity
2017-07-28 13:13:43.359 UTC [common/config] validateMSP -> DEBU 378 Setting up MSP for org OrdererOrg
2017-07-28 13:13:43.359 UTC [msp] NewBccspMsp -> DEBU 379 Creating BCCSP-based MSP instance
2017-07-28 13:13:43.359 UTC [msp] Setup -> DEBU 37a Setting up MSP instance OrdererMSP
2017-07-28 13:13:43.361 UTC [msp/identity] newIdentity -> DEBU 37b Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:43.392 UTC [msp/identity] newIdentity -> DEBU 37c Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:43.423 UTC [msp/identity] newIdentity -> DEBU 37d Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:43.516 UTC [msp] Validate -> DEBU 37e MSP OrdererMSP validating identity
2017-07-28 13:13:43.547 UTC [msp] Setup -> DEBU 37f Setting up the MSP manager (3 msps)
2017-07-28 13:13:43.547 UTC [msp] Setup -> DEBU 380 MSP manager setup complete, setup 3 msps
2017-07-28 13:13:43.547 UTC [policies] GetPolicy -> DEBU 381 Returning policy Writers for evaluation
2017-07-28 13:13:43.547 UTC [policies] CommitProposals -> DEBU 382 In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:43.547 UTC [policies] GetPolicy -> DEBU 383 Returning policy Admins for evaluation
2017-07-28 13:13:43.547 UTC [policies] CommitProposals -> DEBU 384 In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:43.547 UTC [policies] GetPolicy -> DEBU 385 Returning policy Readers for evaluation
2017-07-28 13:13:43.547 UTC [policies] CommitProposals -> DEBU 386 In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:43.548 UTC [policies] GetPolicy -> DEBU 387 Returning policy Admins for evaluation
2017-07-28 13:13:43.548 UTC [policies] CommitProposals -> DEBU 388 In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:43.548 UTC [policies] GetPolicy -> DEBU 389 Returning policy Readers for evaluation
2017-07-28 13:13:43.548 UTC [policies] CommitProposals -> DEBU 38a In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:43.548 UTC [policies] GetPolicy -> DEBU 38b Returning policy Writers for evaluation
2017-07-28 13:13:43.548 UTC [policies] CommitProposals -> DEBU 38c In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:43.548 UTC [policies] GetPolicy -> DEBU 38d Returning policy Admins for evaluation
2017-07-28 13:13:43.548 UTC [policies] GetPolicy -> DEBU 38e Returning policy Admins for evaluation
2017-07-28 13:13:43.548 UTC [policies] GetPolicy -> DEBU 38f Returning policy Writers for evaluation
2017-07-28 13:13:43.548 UTC [policies] GetPolicy -> DEBU 390 Returning policy Writers for evaluation
2017-07-28 13:13:43.548 UTC [policies] GetPolicy -> DEBU 391 Returning policy Readers for evaluation
2017-07-28 13:13:43.549 UTC [policies] GetPolicy -> DEBU 392 Returning policy Readers for evaluation
2017-07-28 13:13:43.549 UTC [policies] GetPolicy -> DEBU 393 Returning policy Readers for evaluation
2017-07-28 13:13:43.549 UTC [policies] CommitProposals -> DEBU 394 In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:43.549 UTC [policies] GetPolicy -> DEBU 395 Returning policy Writers for evaluation
2017-07-28 13:13:43.549 UTC [policies] CommitProposals -> DEBU 396 In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:43.549 UTC [policies] GetPolicy -> DEBU 397 Returning policy Admins for evaluation
2017-07-28 13:13:43.549 UTC [policies] CommitProposals -> DEBU 398 In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:43.549 UTC [policies] GetPolicy -> DEBU 399 Returning policy Readers for evaluation
2017-07-28 13:13:43.549 UTC [policies] GetPolicy -> DEBU 39a Returning policy Writers for evaluation
2017-07-28 13:13:43.549 UTC [policies] GetPolicy -> DEBU 39b Returning policy Admins for evaluation
2017-07-28 13:13:43.549 UTC [policies] GetPolicy -> DEBU 39c Returning policy Writers for evaluation
2017-07-28 13:13:43.549 UTC [policies] GetPolicy -> DEBU 39d Returning policy Writers for evaluation
2017-07-28 13:13:43.550 UTC [policies] CommitProposals -> DEBU 39e In commit adding relative sub-policy Application/Writers to Channel
2017-07-28 13:13:43.550 UTC [policies] GetPolicy -> DEBU 39f Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:43.550 UTC [policies] CommitProposals -> DEBU 3a0 In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:43.550 UTC [policies] GetPolicy -> DEBU 3a1 Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:43.550 UTC [policies] CommitProposals -> DEBU 3a2 In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:43.550 UTC [policies] GetPolicy -> DEBU 3a3 Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:43.550 UTC [policies] CommitProposals -> DEBU 3a4 In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:43.550 UTC [policies] GetPolicy -> DEBU 3a5 Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:43.550 UTC [policies] CommitProposals -> DEBU 3a6 In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:43.550 UTC [policies] GetPolicy -> DEBU 3a7 Returning policy Admins for evaluation
2017-07-28 13:13:43.550 UTC [policies] CommitProposals -> DEBU 3a8 In commit adding relative sub-policy Application/Admins to Channel
2017-07-28 13:13:43.550 UTC [policies] GetPolicy -> DEBU 3a9 Returning policy Readers for evaluation
2017-07-28 13:13:43.551 UTC [policies] CommitProposals -> DEBU 3aa In commit adding relative sub-policy Application/Readers to Channel
2017-07-28 13:13:43.551 UTC [policies] GetPolicy -> DEBU 3ab Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:43.551 UTC [policies] CommitProposals -> DEBU 3ac In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:43.551 UTC [policies] GetPolicy -> DEBU 3ad Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:43.551 UTC [policies] CommitProposals -> DEBU 3ae In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:43.551 UTC [policies] GetPolicy -> DEBU 3af Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:43.551 UTC [policies] CommitProposals -> DEBU 3b0 In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:43.551 UTC [policies] GetPolicy -> DEBU 3b1 Returning policy Readers for evaluation
2017-07-28 13:13:43.551 UTC [policies] CommitProposals -> DEBU 3b2 In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:43.551 UTC [policies] GetPolicy -> DEBU 3b3 Returning policy Writers for evaluation
2017-07-28 13:13:43.551 UTC [policies] CommitProposals -> DEBU 3b4 In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:43.551 UTC [policies] GetPolicy -> DEBU 3b5 Returning policy Admins for evaluation
2017-07-28 13:13:43.552 UTC [policies] CommitProposals -> DEBU 3b6 In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:43.552 UTC [policies] GetPolicy -> DEBU 3b7 Returning policy BlockValidation for evaluation
2017-07-28 13:13:43.552 UTC [policies] CommitProposals -> DEBU 3b8 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:43.552 UTC [policies] GetPolicy -> DEBU 3b9 Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:43.552 UTC [policies] CommitProposals -> DEBU 3ba In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:43.552 UTC [policies] GetPolicy -> DEBU 3bb Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:43.552 UTC [policies] CommitProposals -> DEBU 3bc In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:43.552 UTC [policies] GetPolicy -> DEBU 3bd Returning policy Admins for evaluation
2017-07-28 13:13:43.552 UTC [policies] GetPolicy -> DEBU 3be Returning policy Admins for evaluation
2017-07-28 13:13:43.552 UTC [policies] GetPolicy -> DEBU 3bf Returning policy Readers for evaluation
2017-07-28 13:13:43.552 UTC [policies] GetPolicy -> DEBU 3c0 Returning policy Readers for evaluation
2017-07-28 13:13:43.552 UTC [policies] GetPolicy -> DEBU 3c1 Returning policy Writers for evaluation
2017-07-28 13:13:43.553 UTC [policies] GetPolicy -> DEBU 3c2 Returning policy Writers for evaluation
2017-07-28 13:13:43.553 UTC [policies] GetPolicy -> DEBU 3c3 Returning policy Readers for evaluation
2017-07-28 13:13:43.553 UTC [policies] CommitProposals -> DEBU 3c4 As expected, current configuration has policy '/Channel/Readers'
2017-07-28 13:13:43.553 UTC [policies] GetPolicy -> DEBU 3c5 Returning policy Writers for evaluation
2017-07-28 13:13:43.553 UTC [policies] CommitProposals -> DEBU 3c6 As expected, current configuration has policy '/Channel/Writers'
2017-07-28 13:13:43.553 UTC [policies] GetPolicy -> DEBU 3c7 Returning policy Application/Readers for evaluation
2017-07-28 13:13:43.553 UTC [policies] CommitProposals -> DEBU 3c8 As expected, current configuration has policy '/Channel/Application/Readers'
2017-07-28 13:13:43.553 UTC [policies] GetPolicy -> DEBU 3c9 Returning policy Application/Writers for evaluation
2017-07-28 13:13:43.553 UTC [policies] CommitProposals -> DEBU 3ca As expected, current configuration has policy '/Channel/Application/Writers'
2017-07-28 13:13:43.553 UTC [policies] GetPolicy -> DEBU 3cb Returning policy Application/Admins for evaluation
2017-07-28 13:13:43.553 UTC [policies] CommitProposals -> DEBU 3cc As expected, current configuration has policy '/Channel/Application/Admins'
2017-07-28 13:13:43.553 UTC [policies] GetPolicy -> DEBU 3cd Returning policy Orderer/BlockValidation for evaluation
2017-07-28 13:13:43.554 UTC [policies] CommitProposals -> DEBU 3ce As expected, current configuration has policy '/Channel/Orderer/BlockValidation'
2017-07-28 13:13:43.554 UTC [common/config] NewStandardValues -> DEBU 3cf Initializing protos for *config.ChannelProtos
2017-07-28 13:13:43.554 UTC [common/config] initializeProtosStruct -> DEBU 3d0 Processing field: HashingAlgorithm
2017-07-28 13:13:43.554 UTC [common/config] initializeProtosStruct -> DEBU 3d1 Processing field: BlockDataHashingStructure
2017-07-28 13:13:43.554 UTC [common/config] initializeProtosStruct -> DEBU 3d2 Processing field: OrdererAddresses
2017-07-28 13:13:43.554 UTC [common/config] initializeProtosStruct -> DEBU 3d3 Processing field: Consortium
2017-07-28 13:13:43.555 UTC [common/configtx] addToMap -> DEBU 3d4 Adding to config map: [Groups] /Channel
2017-07-28 13:13:43.555 UTC [common/configtx] addToMap -> DEBU 3d5 Adding to config map: [Groups] /Channel/Orderer
2017-07-28 13:13:43.555 UTC [common/configtx] addToMap -> DEBU 3d6 Adding to config map: [Groups] /Channel/Orderer/OrdererOrg
2017-07-28 13:13:43.555 UTC [common/configtx] addToMap -> DEBU 3d7 Adding to config map: [Values] /Channel/Orderer/OrdererOrg/MSP
2017-07-28 13:13:43.556 UTC [common/configtx] addToMap -> DEBU 3d8 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Writers
2017-07-28 13:13:43.556 UTC [common/configtx] addToMap -> DEBU 3d9 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Admins
2017-07-28 13:13:43.556 UTC [common/configtx] addToMap -> DEBU 3da Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Readers
2017-07-28 13:13:43.556 UTC [common/configtx] addToMap -> DEBU 3db Adding to config map: [Values] /Channel/Orderer/BatchSize
2017-07-28 13:13:43.556 UTC [common/configtx] addToMap -> DEBU 3dc Adding to config map: [Values] /Channel/Orderer/BatchTimeout
2017-07-28 13:13:43.556 UTC [common/configtx] addToMap -> DEBU 3dd Adding to config map: [Values] /Channel/Orderer/ChannelRestrictions
2017-07-28 13:13:43.557 UTC [common/configtx] addToMap -> DEBU 3de Adding to config map: [Values] /Channel/Orderer/ConsensusType
2017-07-28 13:13:43.557 UTC [common/configtx] addToMap -> DEBU 3df Adding to config map: [Policy] /Channel/Orderer/Admins
2017-07-28 13:13:43.557 UTC [common/configtx] addToMap -> DEBU 3e0 Adding to config map: [Policy] /Channel/Orderer/BlockValidation
2017-07-28 13:13:43.557 UTC [common/configtx] addToMap -> DEBU 3e1 Adding to config map: [Policy] /Channel/Orderer/Readers
2017-07-28 13:13:43.557 UTC [common/configtx] addToMap -> DEBU 3e2 Adding to config map: [Policy] /Channel/Orderer/Writers
2017-07-28 13:13:43.557 UTC [common/configtx] addToMap -> DEBU 3e3 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:43.558 UTC [common/configtx] addToMap -> DEBU 3e4 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:43.558 UTC [common/configtx] addToMap -> DEBU 3e5 Adding to config map: [Values] /Channel/Application/Org2MSP/MSP
2017-07-28 13:13:43.558 UTC [common/configtx] addToMap -> DEBU 3e6 Adding to config map: [Policy] /Channel/Application/Org2MSP/Writers
2017-07-28 13:13:43.558 UTC [common/configtx] addToMap -> DEBU 3e7 Adding to config map: [Policy] /Channel/Application/Org2MSP/Admins
2017-07-28 13:13:43.558 UTC [common/configtx] addToMap -> DEBU 3e8 Adding to config map: [Policy] /Channel/Application/Org2MSP/Readers
2017-07-28 13:13:43.558 UTC [common/configtx] addToMap -> DEBU 3e9 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:43.559 UTC [common/configtx] addToMap -> DEBU 3ea Adding to config map: [Values] /Channel/Application/Org1MSP/MSP
2017-07-28 13:13:43.559 UTC [common/configtx] addToMap -> DEBU 3eb Adding to config map: [Policy] /Channel/Application/Org1MSP/Writers
2017-07-28 13:13:43.559 UTC [common/configtx] addToMap -> DEBU 3ec Adding to config map: [Policy] /Channel/Application/Org1MSP/Admins
2017-07-28 13:13:43.559 UTC [common/configtx] addToMap -> DEBU 3ed Adding to config map: [Policy] /Channel/Application/Org1MSP/Readers
2017-07-28 13:13:43.559 UTC [common/configtx] addToMap -> DEBU 3ee Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:43.559 UTC [common/configtx] addToMap -> DEBU 3ef Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:43.559 UTC [common/configtx] addToMap -> DEBU 3f0 Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:43.560 UTC [common/configtx] addToMap -> DEBU 3f1 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:43.560 UTC [common/configtx] addToMap -> DEBU 3f2 Adding to config map: [Values] /Channel/HashingAlgorithm
2017-07-28 13:13:43.560 UTC [common/configtx] addToMap -> DEBU 3f3 Adding to config map: [Values] /Channel/BlockDataHashingStructure
2017-07-28 13:13:43.560 UTC [common/configtx] addToMap -> DEBU 3f4 Adding to config map: [Values] /Channel/OrdererAddresses
2017-07-28 13:13:43.560 UTC [common/configtx] addToMap -> DEBU 3f5 Adding to config map: [Policy] /Channel/Readers
2017-07-28 13:13:43.560 UTC [common/configtx] addToMap -> DEBU 3f6 Adding to config map: [Policy] /Channel/Writers
2017-07-28 13:13:43.561 UTC [common/configtx] addToMap -> DEBU 3f7 Adding to config map: [Policy] /Channel/Admins
2017-07-28 13:13:43.561 UTC [common/configtx] processConfig -> DEBU 3f8 Beginning new config for channel mychannel
2017-07-28 13:13:43.561 UTC [common/config] NewStandardValues -> DEBU 3f9 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:43.561 UTC [common/config] initializeProtosStruct -> DEBU 3fa Processing field: HashingAlgorithm
2017-07-28 13:13:43.561 UTC [common/config] initializeProtosStruct -> DEBU 3fb Processing field: BlockDataHashingStructure
2017-07-28 13:13:43.561 UTC [common/config] initializeProtosStruct -> DEBU 3fc Processing field: OrdererAddresses
2017-07-28 13:13:43.561 UTC [common/config] initializeProtosStruct -> DEBU 3fd Processing field: Consortium
2017-07-28 13:13:43.561 UTC [policies] ProposePolicy -> DEBU 3fe Proposed new policy Readers for Channel
2017-07-28 13:13:43.561 UTC [policies] ProposePolicy -> DEBU 3ff Proposed new policy Writers for Channel
2017-07-28 13:13:43.562 UTC [policies] ProposePolicy -> DEBU 400 Proposed new policy Admins for Channel
2017-07-28 13:13:43.562 UTC [common/config] NewStandardValues -> DEBU 401 Initializing protos for *config.OrdererProtos
2017-07-28 13:13:43.562 UTC [common/config] initializeProtosStruct -> DEBU 402 Processing field: ConsensusType
2017-07-28 13:13:43.562 UTC [common/config] initializeProtosStruct -> DEBU 403 Processing field: BatchSize
2017-07-28 13:13:43.562 UTC [common/config] initializeProtosStruct -> DEBU 404 Processing field: BatchTimeout
2017-07-28 13:13:43.562 UTC [common/config] initializeProtosStruct -> DEBU 405 Processing field: KafkaBrokers
2017-07-28 13:13:43.562 UTC [common/config] initializeProtosStruct -> DEBU 406 Processing field: ChannelRestrictions
2017-07-28 13:13:43.562 UTC [policies] ProposePolicy -> DEBU 407 Proposed new policy Writers for Orderer
2017-07-28 13:13:43.562 UTC [policies] ProposePolicy -> DEBU 408 Proposed new policy Admins for Orderer
2017-07-28 13:13:43.562 UTC [policies] ProposePolicy -> DEBU 409 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:43.562 UTC [policies] ProposePolicy -> DEBU 40a Proposed new policy Readers for Orderer
2017-07-28 13:13:43.563 UTC [common/config] NewStandardValues -> DEBU 40b Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:43.563 UTC [common/config] initializeProtosStruct -> DEBU 40c Processing field: MSP
2017-07-28 13:13:43.563 UTC [policies] ProposePolicy -> DEBU 40d Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:43.563 UTC [policies] ProposePolicy -> DEBU 40e Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:43.563 UTC [policies] ProposePolicy -> DEBU 40f Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:43.563 UTC [common/config] NewStandardValues -> DEBU 410 Initializing protos for *struct {}
2017-07-28 13:13:43.563 UTC [policies] ProposePolicy -> DEBU 411 Proposed new policy Readers for Application
2017-07-28 13:13:43.563 UTC [policies] ProposePolicy -> DEBU 412 Proposed new policy Admins for Application
2017-07-28 13:13:43.563 UTC [policies] ProposePolicy -> DEBU 413 Proposed new policy Writers for Application
2017-07-28 13:13:43.564 UTC [common/config] NewStandardValues -> DEBU 414 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:43.564 UTC [common/config] initializeProtosStruct -> DEBU 415 Processing field: MSP
2017-07-28 13:13:43.564 UTC [common/config] NewStandardValues -> DEBU 416 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:43.564 UTC [common/config] initializeProtosStruct -> DEBU 417 Processing field: AnchorPeers
2017-07-28 13:13:43.564 UTC [common/config] NewStandardValues -> DEBU 418 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:43.564 UTC [common/config] initializeProtosStruct -> DEBU 419 Processing field: MSP
2017-07-28 13:13:43.564 UTC [policies] ProposePolicy -> DEBU 41a Proposed new policy Admins for Org2MSP
2017-07-28 13:13:43.564 UTC [policies] ProposePolicy -> DEBU 41b Proposed new policy Readers for Org2MSP
2017-07-28 13:13:43.564 UTC [policies] ProposePolicy -> DEBU 41c Proposed new policy Writers for Org2MSP
2017-07-28 13:13:43.564 UTC [common/config] NewStandardValues -> DEBU 41d Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:43.565 UTC [common/config] initializeProtosStruct -> DEBU 41e Processing field: MSP
2017-07-28 13:13:43.565 UTC [common/config] NewStandardValues -> DEBU 41f Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:43.565 UTC [common/config] initializeProtosStruct -> DEBU 420 Processing field: AnchorPeers
2017-07-28 13:13:43.565 UTC [common/config] NewStandardValues -> DEBU 421 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:43.565 UTC [common/config] initializeProtosStruct -> DEBU 422 Processing field: MSP
2017-07-28 13:13:43.565 UTC [policies] ProposePolicy -> DEBU 423 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:43.565 UTC [policies] ProposePolicy -> DEBU 424 Proposed new policy Admins for Org1MSP
2017-07-28 13:13:43.565 UTC [policies] ProposePolicy -> DEBU 425 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:43.565 UTC [common/config] validateMSP -> DEBU 426 Setting up MSP for org OrdererOrg
2017-07-28 13:13:43.565 UTC [msp] NewBccspMsp -> DEBU 427 Creating BCCSP-based MSP instance
2017-07-28 13:13:43.565 UTC [msp] Setup -> DEBU 428 Setting up MSP instance OrdererMSP
2017-07-28 13:13:43.567 UTC [msp/identity] newIdentity -> DEBU 429 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:43.599 UTC [msp/identity] newIdentity -> DEBU 42a Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:43.630 UTC [msp/identity] newIdentity -> DEBU 42b Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:43.723 UTC [msp] Validate -> DEBU 42c MSP OrdererMSP validating identity
2017-07-28 13:13:43.753 UTC [common/config] Validate -> DEBU 42d Anchor peers for org Org2MSP are 
2017-07-28 13:13:43.754 UTC [common/config] validateMSP -> DEBU 42e Setting up MSP for org Org2MSP
2017-07-28 13:13:43.754 UTC [msp] NewBccspMsp -> DEBU 42f Creating BCCSP-based MSP instance
2017-07-28 13:13:43.754 UTC [msp] Setup -> DEBU 430 Setting up MSP instance Org2MSP
2017-07-28 13:13:43.755 UTC [msp/identity] newIdentity -> DEBU 431 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:43.787 UTC [msp/identity] newIdentity -> DEBU 432 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:43.818 UTC [msp/identity] newIdentity -> DEBU 433 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:43.910 UTC [msp] Validate -> DEBU 434 MSP Org2MSP validating identity
2017-07-28 13:13:43.941 UTC [common/config] Validate -> DEBU 435 Anchor peers for org Org1MSP are 
2017-07-28 13:13:43.941 UTC [common/config] validateMSP -> DEBU 436 Setting up MSP for org Org1MSP
2017-07-28 13:13:43.941 UTC [msp] NewBccspMsp -> DEBU 437 Creating BCCSP-based MSP instance
2017-07-28 13:13:43.941 UTC [msp] Setup -> DEBU 438 Setting up MSP instance Org1MSP
2017-07-28 13:13:43.943 UTC [msp/identity] newIdentity -> DEBU 439 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:43.974 UTC [msp/identity] newIdentity -> DEBU 43a Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:44.006 UTC [msp/identity] newIdentity -> DEBU 43b Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:44.098 UTC [msp] Validate -> DEBU 43c MSP Org1MSP validating identity
2017-07-28 13:13:44.129 UTC [msp] Setup -> DEBU 43d Setting up the MSP manager (3 msps)
2017-07-28 13:13:44.129 UTC [msp] Setup -> DEBU 43e MSP manager setup complete, setup 3 msps
2017-07-28 13:13:44.129 UTC [policies] GetPolicy -> DEBU 43f Returning policy Writers for evaluation
2017-07-28 13:13:44.129 UTC [policies] CommitProposals -> DEBU 440 In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:44.129 UTC [policies] GetPolicy -> DEBU 441 Returning policy Admins for evaluation
2017-07-28 13:13:44.129 UTC [policies] CommitProposals -> DEBU 442 In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:44.129 UTC [policies] GetPolicy -> DEBU 443 Returning policy Readers for evaluation
2017-07-28 13:13:44.129 UTC [policies] CommitProposals -> DEBU 444 In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:44.129 UTC [policies] GetPolicy -> DEBU 445 Returning policy Writers for evaluation
2017-07-28 13:13:44.129 UTC [policies] GetPolicy -> DEBU 446 Returning policy Admins for evaluation
2017-07-28 13:13:44.130 UTC [policies] GetPolicy -> DEBU 447 Returning policy Writers for evaluation
2017-07-28 13:13:44.130 UTC [policies] GetPolicy -> DEBU 448 Returning policy Readers for evaluation
2017-07-28 13:13:44.130 UTC [policies] GetPolicy -> DEBU 449 Returning policy Admins for evaluation
2017-07-28 13:13:44.130 UTC [policies] CommitProposals -> DEBU 44a In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:44.130 UTC [policies] GetPolicy -> DEBU 44b Returning policy Readers for evaluation
2017-07-28 13:13:44.130 UTC [policies] CommitProposals -> DEBU 44c In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:44.130 UTC [policies] GetPolicy -> DEBU 44d Returning policy Writers for evaluation
2017-07-28 13:13:44.130 UTC [policies] CommitProposals -> DEBU 44e In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:44.130 UTC [policies] GetPolicy -> DEBU 44f Returning policy Writers for evaluation
2017-07-28 13:13:44.130 UTC [policies] CommitProposals -> DEBU 450 In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:44.130 UTC [policies] GetPolicy -> DEBU 451 Returning policy Admins for evaluation
2017-07-28 13:13:44.130 UTC [policies] CommitProposals -> DEBU 452 In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:44.131 UTC [policies] GetPolicy -> DEBU 453 Returning policy Readers for evaluation
2017-07-28 13:13:44.131 UTC [policies] CommitProposals -> DEBU 454 In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:44.131 UTC [policies] GetPolicy -> DEBU 455 Returning policy Readers for evaluation
2017-07-28 13:13:44.131 UTC [policies] GetPolicy -> DEBU 456 Returning policy Readers for evaluation
2017-07-28 13:13:44.131 UTC [policies] GetPolicy -> DEBU 457 Returning policy Admins for evaluation
2017-07-28 13:13:44.131 UTC [policies] GetPolicy -> DEBU 458 Returning policy Admins for evaluation
2017-07-28 13:13:44.131 UTC [policies] GetPolicy -> DEBU 459 Returning policy Writers for evaluation
2017-07-28 13:13:44.131 UTC [policies] GetPolicy -> DEBU 45a Returning policy Writers for evaluation
2017-07-28 13:13:44.131 UTC [policies] GetPolicy -> DEBU 45b Returning policy Writers for evaluation
2017-07-28 13:13:44.131 UTC [policies] CommitProposals -> DEBU 45c In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:44.131 UTC [policies] GetPolicy -> DEBU 45d Returning policy Admins for evaluation
2017-07-28 13:13:44.131 UTC [policies] CommitProposals -> DEBU 45e In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:44.132 UTC [policies] GetPolicy -> DEBU 45f Returning policy BlockValidation for evaluation
2017-07-28 13:13:44.132 UTC [policies] CommitProposals -> DEBU 460 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:44.132 UTC [policies] GetPolicy -> DEBU 461 Returning policy Readers for evaluation
2017-07-28 13:13:44.132 UTC [policies] CommitProposals -> DEBU 462 In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:44.132 UTC [policies] GetPolicy -> DEBU 463 Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:44.132 UTC [policies] CommitProposals -> DEBU 464 In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:44.132 UTC [policies] GetPolicy -> DEBU 465 Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:44.132 UTC [policies] CommitProposals -> DEBU 466 In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:44.132 UTC [policies] GetPolicy -> DEBU 467 Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:44.132 UTC [policies] CommitProposals -> DEBU 468 In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:44.132 UTC [policies] GetPolicy -> DEBU 469 Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:44.132 UTC [policies] CommitProposals -> DEBU 46a In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:44.133 UTC [policies] GetPolicy -> DEBU 46b Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:44.133 UTC [policies] CommitProposals -> DEBU 46c In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:44.133 UTC [policies] GetPolicy -> DEBU 46d Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:44.133 UTC [policies] CommitProposals -> DEBU 46e In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:44.133 UTC [policies] GetPolicy -> DEBU 46f Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:44.133 UTC [policies] CommitProposals -> DEBU 470 In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:44.133 UTC [policies] GetPolicy -> DEBU 471 Returning policy Readers for evaluation
2017-07-28 13:13:44.133 UTC [policies] CommitProposals -> DEBU 472 In commit adding relative sub-policy Application/Readers to Channel
2017-07-28 13:13:44.133 UTC [policies] GetPolicy -> DEBU 473 Returning policy Admins for evaluation
2017-07-28 13:13:44.133 UTC [policies] CommitProposals -> DEBU 474 In commit adding relative sub-policy Application/Admins to Channel
2017-07-28 13:13:44.133 UTC [policies] GetPolicy -> DEBU 475 Returning policy Writers for evaluation
2017-07-28 13:13:44.133 UTC [policies] CommitProposals -> DEBU 476 In commit adding relative sub-policy Application/Writers to Channel
2017-07-28 13:13:44.134 UTC [policies] GetPolicy -> DEBU 477 Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:44.134 UTC [policies] CommitProposals -> DEBU 478 In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:44.134 UTC [policies] GetPolicy -> DEBU 479 Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:44.134 UTC [policies] CommitProposals -> DEBU 47a In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:44.134 UTC [policies] GetPolicy -> DEBU 47b Returning policy Readers for evaluation
2017-07-28 13:13:44.134 UTC [policies] GetPolicy -> DEBU 47c Returning policy Readers for evaluation
2017-07-28 13:13:44.134 UTC [policies] GetPolicy -> DEBU 47d Returning policy Writers for evaluation
2017-07-28 13:13:44.134 UTC [policies] GetPolicy -> DEBU 47e Returning policy Writers for evaluation
2017-07-28 13:13:44.134 UTC [policies] GetPolicy -> DEBU 47f Returning policy Admins for evaluation
2017-07-28 13:13:44.134 UTC [policies] GetPolicy -> DEBU 480 Returning policy Admins for evaluation
2017-07-28 13:13:44.134 UTC [policies] GetPolicy -> DEBU 481 Returning policy Readers for evaluation
2017-07-28 13:13:44.134 UTC [policies] CommitProposals -> DEBU 482 As expected, current configuration has policy '/Channel/Readers'
2017-07-28 13:13:44.135 UTC [policies] GetPolicy -> DEBU 483 Returning policy Writers for evaluation
2017-07-28 13:13:44.135 UTC [policies] CommitProposals -> DEBU 484 As expected, current configuration has policy '/Channel/Writers'
2017-07-28 13:13:44.135 UTC [policies] GetPolicy -> DEBU 485 Returning policy Application/Readers for evaluation
2017-07-28 13:13:44.135 UTC [policies] CommitProposals -> DEBU 486 As expected, current configuration has policy '/Channel/Application/Readers'
2017-07-28 13:13:44.135 UTC [policies] GetPolicy -> DEBU 487 Returning policy Application/Writers for evaluation
2017-07-28 13:13:44.135 UTC [policies] CommitProposals -> DEBU 488 As expected, current configuration has policy '/Channel/Application/Writers'
2017-07-28 13:13:44.135 UTC [policies] GetPolicy -> DEBU 489 Returning policy Application/Admins for evaluation
2017-07-28 13:13:44.135 UTC [policies] CommitProposals -> DEBU 48a As expected, current configuration has policy '/Channel/Application/Admins'
2017-07-28 13:13:44.135 UTC [policies] GetPolicy -> DEBU 48b Returning policy Orderer/BlockValidation for evaluation
2017-07-28 13:13:44.135 UTC [policies] CommitProposals -> DEBU 48c As expected, current configuration has policy '/Channel/Orderer/BlockValidation'
2017-07-28 13:13:44.145 UTC [policies] GetPolicy -> DEBU 48e Returning policy Writers for evaluation
2017-07-28 13:13:44.145 UTC [cauthdsl] func1 -> DEBU 48f 0x57958000 gate 1501247624145309287 evaluation starts
2017-07-28 13:13:44.145 UTC [cauthdsl] func2 -> DEBU 490 0x57958000 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:44.145 UTC [cauthdsl] func2 -> DEBU 491 0x57958000 processing identity 0 with bytes of 0a0a4f7264657265724d535012eb052d2d2d2d2d424547494e202d2d2d2d2d0a4d494943437a434341624b674177494241674951534e6d526a35683146535063506f45654a777347796a414b42676771686b6a4f50515144416a42704d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a45554d4249474131554543684d4c5a586868625842735a53356a62323078467a415642674e5642414d54446d4e684c6d5634595731770a62475575593239744d423458445445334d4463794e7a49784d7a6b794e566f58445449334d4463794e5449784d7a6b794e566f775744454c4d416b47413155450a42684d4356564d78457a415242674e5642416754436b4e6862476c6d62334a7561574578466a415542674e564241635444564e6862694247636d467559326c7a0a593238784844416142674e5642414d54453239795a4756795a5849755a586868625842735a53356a623230775754415442676371686b6a4f50514942426767710a686b6a4f50514d4242774e434141535a3669464c6362476d345772464e543952417a784d673279655642654a3871427231312b706c694661454c6d3445465a770a512b676b5038715a6e2f6e346e6364673867726d727559417071776359743476334479556f303077537a414f42674e56485138424166384542414d43423441770a44415944565230544151482f424149774144417242674e5648534d454a4441696743446f4c4d55323879316937466374424f4c66424d736a534464476c4162500a515537706d7551734568697a7744414b42676771686b6a4f5051514441674e48414442454169423832787936492f5432493153333557316b6e4e577a4d3050590a494d4843656c5264764d467146727a4577414967466f7570495658663879696867634d4567516e502b2f4f6f53376f5a4a5130356d5a7335494f53654857413d0a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:44.146 UTC [msp/identity] newIdentity -> DEBU 492 Creating identity instance for ID &{OrdererMSP 373d501a27deab7aff1c08731256ff6799484e1ae836cb098108701e56368642}
2017-07-28 13:13:44.144 UTC [orderer/common/broadcast] Handle -> DEBU 48d [channel: testchainid] Broadcast has successfully enqueued message of type ORDERER_TRANSACTION
2017-07-28 13:13:44.158 UTC [orderer/common/broadcast] Handle -> WARN 493 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:44.158 UTC [orderer/server/main] func1 -> DEBU 494 Closing Broadcast stream
2017-07-28 13:13:44.163 UTC [orderer/common/deliver] deliverBlocks -> DEBU 495 Rejecting deliver because channel mychannel not found
2017-07-28 13:13:44.164 UTC [orderer/common/deliver] Handle -> DEBU 496 Waiting for new SeekInfo
2017-07-28 13:13:44.164 UTC [orderer/common/deliver] Handle -> DEBU 497 Attempting to read seek info message
2017-07-28 13:13:44.166 UTC [orderer/common/deliver] Handle -> WARN 498 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:44.166 UTC [orderer/server/main] func1 -> DEBU 499 Closing Deliver stream
2017-07-28 13:13:44.181 UTC [msp] SatisfiesPrincipal -> DEBU 49a Checking if identity satisfies MEMBER role for OrdererMSP
2017-07-28 13:13:44.181 UTC [msp] Validate -> DEBU 49b MSP OrdererMSP validating identity
2017-07-28 13:13:44.212 UTC [cauthdsl] func2 -> DEBU 49c 0x57958000 principal matched by identity 0
2017-07-28 13:13:44.213 UTC [msp/identity] Verify -> DEBU 49d Verify: digest = 00000000  a9 45 ac c3 ff b4 62 e2  84 f8 94 ca 84 41 1e 17  |.E....b......A..|
00000010  96 75 dd 8f 8a e8 2d 34  41 13 3f 3d 7a 43 e6 0d  |.u....-4A.?=zC..|
2017-07-28 13:13:44.213 UTC [msp/identity] Verify -> DEBU 49e Verify: sig = 00000000  30 45 02 21 00 ff b5 db  cb 79 d0 00 61 d6 d7 e8  |0E.!.....y..a...|
00000010  4d 29 e1 89 c1 cf 66 12  50 d3 74 39 92 78 91 60  |M)....f.P.t9.x.`|
00000020  7e e2 8e e8 8f 02 20 7c  cf 42 d1 69 13 f1 0f 64  |~..... |.B.i...d|
00000030  ec 52 cd 25 cd 76 36 cf  58 82 f7 c4 90 38 0c 70  |.R.%.v6.X....8.p|
00000040  32 21 78 58 fc b1 e0                              |2!xX...|
2017-07-28 13:13:44.244 UTC [cauthdsl] func2 -> DEBU 49f 0x57958000 principal evaluation succeeds for identity 0
2017-07-28 13:13:44.244 UTC [cauthdsl] func1 -> DEBU 4a0 0x57958000 gate 1501247624145309287 evaluation succeeds
2017-07-28 13:13:44.244 UTC [orderer/common/sigfilter] Apply -> DEBU 4a1 Forwarding validly signed message for policy &{%!s(*common.ImplicitMetaPolicy=&{Writers 0}) %!s(int=1) [Writers %!s(*policies.implicitMetaPolicy=&{0x571a5cb0 1 [0x5715d158]})]}
2017-07-28 13:13:44.246 UTC [msp] GetLocalMSP -> DEBU 4a2 Returning existing local MSP
2017-07-28 13:13:44.246 UTC [msp] GetDefaultSigningIdentity -> DEBU 4a3 Obtaining default signing identity
2017-07-28 13:13:44.246 UTC [msp] GetLocalMSP -> DEBU 4a4 Returning existing local MSP
2017-07-28 13:13:44.247 UTC [msp] GetDefaultSigningIdentity -> DEBU 4a5 Obtaining default signing identity
2017-07-28 13:13:44.248 UTC [msp/identity] Sign -> DEBU 4a6 Sign: plaintext: 0AB1060A1508011A060888F1ECCB0522...07526561646572731A0641646D696E73 
2017-07-28 13:13:44.248 UTC [msp/identity] Sign -> DEBU 4a7 Sign: digest: F5246036B9B9DD8340782813733E4A72709378C2576E39FDC69B64A1B89A6AA9 
2017-07-28 13:13:44.257 UTC [common/config] NewStandardValues -> DEBU 4a8 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:44.257 UTC [common/config] initializeProtosStruct -> DEBU 4a9 Processing field: HashingAlgorithm
2017-07-28 13:13:44.257 UTC [common/config] initializeProtosStruct -> DEBU 4aa Processing field: BlockDataHashingStructure
2017-07-28 13:13:44.257 UTC [common/config] initializeProtosStruct -> DEBU 4ab Processing field: OrdererAddresses
2017-07-28 13:13:44.257 UTC [common/config] initializeProtosStruct -> DEBU 4ac Processing field: Consortium
2017-07-28 13:13:44.259 UTC [common/configtx] addToMap -> DEBU 4ad Adding to config map: [Groups] /Channel
2017-07-28 13:13:44.259 UTC [common/configtx] addToMap -> DEBU 4ae Adding to config map: [Groups] /Channel/Orderer
2017-07-28 13:13:44.259 UTC [common/configtx] addToMap -> DEBU 4af Adding to config map: [Groups] /Channel/Orderer/OrdererOrg
2017-07-28 13:13:44.259 UTC [common/configtx] addToMap -> DEBU 4b0 Adding to config map: [Values] /Channel/Orderer/OrdererOrg/MSP
2017-07-28 13:13:44.260 UTC [common/configtx] addToMap -> DEBU 4b1 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Writers
2017-07-28 13:13:44.260 UTC [common/configtx] addToMap -> DEBU 4b2 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Admins
2017-07-28 13:13:44.260 UTC [common/configtx] addToMap -> DEBU 4b3 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Readers
2017-07-28 13:13:44.261 UTC [common/configtx] addToMap -> DEBU 4b4 Adding to config map: [Values] /Channel/Orderer/ChannelRestrictions
2017-07-28 13:13:44.261 UTC [common/configtx] addToMap -> DEBU 4b5 Adding to config map: [Values] /Channel/Orderer/ConsensusType
2017-07-28 13:13:44.261 UTC [common/configtx] addToMap -> DEBU 4b6 Adding to config map: [Values] /Channel/Orderer/BatchSize
2017-07-28 13:13:44.262 UTC [common/configtx] addToMap -> DEBU 4b7 Adding to config map: [Values] /Channel/Orderer/BatchTimeout
2017-07-28 13:13:44.262 UTC [common/configtx] addToMap -> DEBU 4b8 Adding to config map: [Policy] /Channel/Orderer/Readers
2017-07-28 13:13:44.262 UTC [common/configtx] addToMap -> DEBU 4b9 Adding to config map: [Policy] /Channel/Orderer/Writers
2017-07-28 13:13:44.262 UTC [common/configtx] addToMap -> DEBU 4ba Adding to config map: [Policy] /Channel/Orderer/Admins
2017-07-28 13:13:44.263 UTC [common/configtx] addToMap -> DEBU 4bb Adding to config map: [Policy] /Channel/Orderer/BlockValidation
2017-07-28 13:13:44.263 UTC [common/configtx] addToMap -> DEBU 4bc Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:44.263 UTC [common/configtx] addToMap -> DEBU 4bd Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:44.264 UTC [common/configtx] addToMap -> DEBU 4be Adding to config map: [Values] /Channel/Application/Org1MSP/MSP
2017-07-28 13:13:44.264 UTC [common/configtx] addToMap -> DEBU 4bf Adding to config map: [Policy] /Channel/Application/Org1MSP/Readers
2017-07-28 13:13:44.268 UTC [common/configtx] addToMap -> DEBU 4c0 Adding to config map: [Policy] /Channel/Application/Org1MSP/Writers
2017-07-28 13:13:44.269 UTC [common/configtx] addToMap -> DEBU 4c1 Adding to config map: [Policy] /Channel/Application/Org1MSP/Admins
2017-07-28 13:13:44.269 UTC [common/configtx] addToMap -> DEBU 4c2 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:44.269 UTC [common/configtx] addToMap -> DEBU 4c3 Adding to config map: [Values] /Channel/Application/Org2MSP/MSP
2017-07-28 13:13:44.270 UTC [common/configtx] addToMap -> DEBU 4c4 Adding to config map: [Policy] /Channel/Application/Org2MSP/Admins
2017-07-28 13:13:44.270 UTC [common/configtx] addToMap -> DEBU 4c5 Adding to config map: [Policy] /Channel/Application/Org2MSP/Readers
2017-07-28 13:13:44.270 UTC [common/configtx] addToMap -> DEBU 4c6 Adding to config map: [Policy] /Channel/Application/Org2MSP/Writers
2017-07-28 13:13:44.271 UTC [common/configtx] addToMap -> DEBU 4c7 Adding to config map: [Policy] /Channel/Application/ChannelCreationPolicy
2017-07-28 13:13:44.271 UTC [common/configtx] addToMap -> DEBU 4c8 Adding to config map: [Values] /Channel/HashingAlgorithm
2017-07-28 13:13:44.271 UTC [common/configtx] addToMap -> DEBU 4c9 Adding to config map: [Values] /Channel/BlockDataHashingStructure
2017-07-28 13:13:44.271 UTC [common/configtx] addToMap -> DEBU 4ca Adding to config map: [Values] /Channel/OrdererAddresses
2017-07-28 13:13:44.272 UTC [common/configtx] addToMap -> DEBU 4cb Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:44.272 UTC [common/configtx] addToMap -> DEBU 4cc Adding to config map: [Policy] /Channel/Writers
2017-07-28 13:13:44.272 UTC [common/configtx] addToMap -> DEBU 4cd Adding to config map: [Policy] /Channel/Admins
2017-07-28 13:13:44.273 UTC [common/configtx] addToMap -> DEBU 4ce Adding to config map: [Policy] /Channel/Readers
2017-07-28 13:13:44.273 UTC [common/configtx] processConfig -> DEBU 4cf Beginning new config for channel mychannel
2017-07-28 13:13:44.274 UTC [common/config] NewStandardValues -> DEBU 4d0 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:44.274 UTC [common/config] initializeProtosStruct -> DEBU 4d1 Processing field: HashingAlgorithm
2017-07-28 13:13:44.276 UTC [common/config] initializeProtosStruct -> DEBU 4d2 Processing field: BlockDataHashingStructure
2017-07-28 13:13:44.276 UTC [common/config] initializeProtosStruct -> DEBU 4d3 Processing field: OrdererAddresses
2017-07-28 13:13:44.276 UTC [common/config] initializeProtosStruct -> DEBU 4d4 Processing field: Consortium
2017-07-28 13:13:44.277 UTC [policies] ProposePolicy -> DEBU 4d5 Proposed new policy Writers for Channel
2017-07-28 13:13:44.277 UTC [policies] ProposePolicy -> DEBU 4d6 Proposed new policy Admins for Channel
2017-07-28 13:13:44.277 UTC [policies] ProposePolicy -> DEBU 4d7 Proposed new policy Readers for Channel
2017-07-28 13:13:44.277 UTC [common/config] NewStandardValues -> DEBU 4d8 Initializing protos for *config.OrdererProtos
2017-07-28 13:13:44.277 UTC [common/config] initializeProtosStruct -> DEBU 4d9 Processing field: ConsensusType
2017-07-28 13:13:44.277 UTC [common/config] initializeProtosStruct -> DEBU 4da Processing field: BatchSize
2017-07-28 13:13:44.278 UTC [common/config] initializeProtosStruct -> DEBU 4db Processing field: BatchTimeout
2017-07-28 13:13:44.278 UTC [common/config] initializeProtosStruct -> DEBU 4dc Processing field: KafkaBrokers
2017-07-28 13:13:44.278 UTC [common/config] initializeProtosStruct -> DEBU 4dd Processing field: ChannelRestrictions
2017-07-28 13:13:44.278 UTC [policies] ProposePolicy -> DEBU 4de Proposed new policy Admins for Orderer
2017-07-28 13:13:44.278 UTC [policies] ProposePolicy -> DEBU 4df Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:44.278 UTC [policies] ProposePolicy -> DEBU 4e0 Proposed new policy Readers for Orderer
2017-07-28 13:13:44.279 UTC [policies] ProposePolicy -> DEBU 4e1 Proposed new policy Writers for Orderer
2017-07-28 13:13:44.279 UTC [common/config] NewStandardValues -> DEBU 4e2 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.279 UTC [common/config] initializeProtosStruct -> DEBU 4e3 Processing field: MSP
2017-07-28 13:13:44.279 UTC [policies] ProposePolicy -> DEBU 4e4 Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:44.279 UTC [policies] ProposePolicy -> DEBU 4e5 Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:44.280 UTC [policies] ProposePolicy -> DEBU 4e6 Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:44.280 UTC [common/config] NewStandardValues -> DEBU 4e7 Initializing protos for *struct {}
2017-07-28 13:13:44.280 UTC [policies] ProposePolicy -> DEBU 4e8 Proposed new policy ChannelCreationPolicy for Application
2017-07-28 13:13:44.280 UTC [common/config] NewStandardValues -> DEBU 4e9 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.280 UTC [common/config] initializeProtosStruct -> DEBU 4ea Processing field: MSP
2017-07-28 13:13:44.280 UTC [common/config] NewStandardValues -> DEBU 4eb Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:44.281 UTC [common/config] initializeProtosStruct -> DEBU 4ec Processing field: AnchorPeers
2017-07-28 13:13:44.281 UTC [common/config] NewStandardValues -> DEBU 4ed Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.281 UTC [common/config] initializeProtosStruct -> DEBU 4ee Processing field: MSP
2017-07-28 13:13:44.281 UTC [policies] ProposePolicy -> DEBU 4ef Proposed new policy Admins for Org1MSP
2017-07-28 13:13:44.281 UTC [policies] ProposePolicy -> DEBU 4f0 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:44.281 UTC [policies] ProposePolicy -> DEBU 4f1 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:44.282 UTC [common/config] NewStandardValues -> DEBU 4f2 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.282 UTC [common/config] initializeProtosStruct -> DEBU 4f3 Processing field: MSP
2017-07-28 13:13:44.282 UTC [common/config] NewStandardValues -> DEBU 4f4 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:44.282 UTC [common/config] initializeProtosStruct -> DEBU 4f5 Processing field: AnchorPeers
2017-07-28 13:13:44.282 UTC [common/config] NewStandardValues -> DEBU 4f6 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.282 UTC [common/config] initializeProtosStruct -> DEBU 4f7 Processing field: MSP
2017-07-28 13:13:44.282 UTC [policies] ProposePolicy -> DEBU 4f8 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:44.283 UTC [policies] ProposePolicy -> DEBU 4f9 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:44.283 UTC [policies] ProposePolicy -> DEBU 4fa Proposed new policy Writers for Org2MSP
2017-07-28 13:13:44.283 UTC [common/config] validateMSP -> DEBU 4fb Setting up MSP for org OrdererOrg
2017-07-28 13:13:44.283 UTC [msp] NewBccspMsp -> DEBU 4fc Creating BCCSP-based MSP instance
2017-07-28 13:13:44.283 UTC [msp] Setup -> DEBU 4fd Setting up MSP instance OrdererMSP
2017-07-28 13:13:44.285 UTC [msp/identity] newIdentity -> DEBU 4fe Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:44.316 UTC [orderer/server/main] Deliver -> DEBU 4ff Starting new Deliver handler
2017-07-28 13:13:44.316 UTC [orderer/common/deliver] Handle -> DEBU 500 Starting new deliver loop
2017-07-28 13:13:44.316 UTC [orderer/common/deliver] Handle -> DEBU 501 Attempting to read seek info message
2017-07-28 13:13:44.320 UTC [msp/identity] newIdentity -> DEBU 502 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:44.352 UTC [msp/identity] newIdentity -> DEBU 503 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:44.445 UTC [msp] Validate -> DEBU 504 MSP OrdererMSP validating identity
2017-07-28 13:13:44.476 UTC [common/config] Validate -> DEBU 505 Anchor peers for org Org1MSP are 
2017-07-28 13:13:44.476 UTC [common/config] validateMSP -> DEBU 506 Setting up MSP for org Org1MSP
2017-07-28 13:13:44.476 UTC [msp] NewBccspMsp -> DEBU 507 Creating BCCSP-based MSP instance
2017-07-28 13:13:44.476 UTC [msp] Setup -> DEBU 508 Setting up MSP instance Org1MSP
2017-07-28 13:13:44.478 UTC [msp/identity] newIdentity -> DEBU 509 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:44.510 UTC [msp/identity] newIdentity -> DEBU 50a Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:44.527 UTC [orderer/common/deliver] deliverBlocks -> DEBU 50b Rejecting deliver because channel mychannel not found
2017-07-28 13:13:44.533 UTC [orderer/common/deliver] Handle -> DEBU 50c Waiting for new SeekInfo
2017-07-28 13:13:44.533 UTC [orderer/common/deliver] Handle -> DEBU 50d Attempting to read seek info message
2017-07-28 13:13:44.533 UTC [orderer/common/deliver] Handle -> WARN 50e Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:44.533 UTC [orderer/server/main] func1 -> DEBU 50f Closing Deliver stream
2017-07-28 13:13:44.549 UTC [msp/identity] newIdentity -> DEBU 510 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:44.642 UTC [msp] Validate -> DEBU 511 MSP Org1MSP validating identity
2017-07-28 13:13:44.671 UTC [orderer/server/main] Deliver -> DEBU 512 Starting new Deliver handler
2017-07-28 13:13:44.671 UTC [orderer/common/deliver] Handle -> DEBU 513 Starting new deliver loop
2017-07-28 13:13:44.671 UTC [orderer/common/deliver] Handle -> DEBU 514 Attempting to read seek info message
2017-07-28 13:13:44.674 UTC [common/config] Validate -> DEBU 515 Anchor peers for org Org2MSP are 
2017-07-28 13:13:44.674 UTC [common/config] validateMSP -> DEBU 516 Setting up MSP for org Org2MSP
2017-07-28 13:13:44.674 UTC [msp] NewBccspMsp -> DEBU 517 Creating BCCSP-based MSP instance
2017-07-28 13:13:44.674 UTC [msp] Setup -> DEBU 518 Setting up MSP instance Org2MSP
2017-07-28 13:13:44.676 UTC [msp/identity] newIdentity -> DEBU 519 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:44.708 UTC [msp/identity] newIdentity -> DEBU 51a Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:44.740 UTC [msp/identity] newIdentity -> DEBU 51b Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:44.833 UTC [msp] Validate -> DEBU 51c MSP Org2MSP validating identity
2017-07-28 13:13:44.864 UTC [msp] Setup -> DEBU 51d Setting up the MSP manager (3 msps)
2017-07-28 13:13:44.864 UTC [msp] Setup -> DEBU 51e MSP manager setup complete, setup 3 msps
2017-07-28 13:13:44.865 UTC [policies] GetPolicy -> DEBU 51f Returning policy Admins for evaluation
2017-07-28 13:13:44.865 UTC [policies] CommitProposals -> DEBU 520 In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:44.865 UTC [policies] GetPolicy -> DEBU 521 Returning policy Readers for evaluation
2017-07-28 13:13:44.865 UTC [policies] CommitProposals -> DEBU 522 In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:44.865 UTC [policies] GetPolicy -> DEBU 523 Returning policy Writers for evaluation
2017-07-28 13:13:44.865 UTC [policies] CommitProposals -> DEBU 524 In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:44.865 UTC [policies] GetPolicy -> DEBU 525 Returning policy Admins for evaluation
2017-07-28 13:13:44.865 UTC [policies] GetPolicy -> DEBU 526 Returning policy Writers for evaluation
2017-07-28 13:13:44.865 UTC [policies] GetPolicy -> DEBU 527 Returning policy Readers for evaluation
2017-07-28 13:13:44.865 UTC [policies] GetPolicy -> DEBU 528 Returning policy Writers for evaluation
2017-07-28 13:13:44.865 UTC [policies] GetPolicy -> DEBU 529 Returning policy Admins for evaluation
2017-07-28 13:13:44.866 UTC [policies] CommitProposals -> DEBU 52a In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:44.866 UTC [policies] GetPolicy -> DEBU 52b Returning policy Readers for evaluation
2017-07-28 13:13:44.866 UTC [policies] CommitProposals -> DEBU 52c In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:44.866 UTC [policies] GetPolicy -> DEBU 52d Returning policy Writers for evaluation
2017-07-28 13:13:44.866 UTC [policies] CommitProposals -> DEBU 52e In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:44.866 UTC [policies] GetPolicy -> DEBU 52f Returning policy Admins for evaluation
2017-07-28 13:13:44.866 UTC [policies] CommitProposals -> DEBU 530 In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:44.866 UTC [policies] GetPolicy -> DEBU 531 Returning policy Readers for evaluation
2017-07-28 13:13:44.866 UTC [policies] CommitProposals -> DEBU 532 In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:44.866 UTC [policies] GetPolicy -> DEBU 533 Returning policy Writers for evaluation
2017-07-28 13:13:44.866 UTC [policies] CommitProposals -> DEBU 534 In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:44.866 UTC [policies] GetPolicy -> DEBU 535 Returning policy Admins for evaluation
2017-07-28 13:13:44.867 UTC [policies] GetPolicy -> DEBU 536 Returning policy Admins for evaluation
2017-07-28 13:13:44.867 UTC [policies] GetPolicy -> DEBU 537 Returning policy BlockValidation for evaluation
2017-07-28 13:13:44.867 UTC [policies] CommitProposals -> DEBU 538 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:44.867 UTC [policies] GetPolicy -> DEBU 539 Returning policy Readers for evaluation
2017-07-28 13:13:44.867 UTC [policies] CommitProposals -> DEBU 53a In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:44.867 UTC [policies] GetPolicy -> DEBU 53b Returning policy Writers for evaluation
2017-07-28 13:13:44.867 UTC [policies] CommitProposals -> DEBU 53c In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:44.867 UTC [policies] GetPolicy -> DEBU 53d Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:44.867 UTC [policies] CommitProposals -> DEBU 53e In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:44.867 UTC [policies] GetPolicy -> DEBU 53f Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:44.867 UTC [policies] CommitProposals -> DEBU 540 In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:44.867 UTC [policies] GetPolicy -> DEBU 541 Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:44.868 UTC [policies] CommitProposals -> DEBU 542 In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:44.868 UTC [policies] GetPolicy -> DEBU 543 Returning policy Admins for evaluation
2017-07-28 13:13:44.868 UTC [policies] CommitProposals -> DEBU 544 In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:44.868 UTC [policies] GetPolicy -> DEBU 545 Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:44.868 UTC [policies] CommitProposals -> DEBU 546 In commit adding relative sub-policy Application/ChannelCreationPolicy to Channel
2017-07-28 13:13:44.868 UTC [policies] GetPolicy -> DEBU 547 Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:44.868 UTC [policies] CommitProposals -> DEBU 548 In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:44.868 UTC [policies] GetPolicy -> DEBU 549 Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:44.868 UTC [policies] CommitProposals -> DEBU 54a In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:44.868 UTC [policies] GetPolicy -> DEBU 54b Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:44.868 UTC [policies] CommitProposals -> DEBU 54c In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:44.869 UTC [policies] GetPolicy -> DEBU 54d Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:44.869 UTC [policies] CommitProposals -> DEBU 54e In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:44.869 UTC [policies] GetPolicy -> DEBU 54f Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:44.869 UTC [policies] CommitProposals -> DEBU 550 In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:44.869 UTC [policies] GetPolicy -> DEBU 551 Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:44.869 UTC [policies] CommitProposals -> DEBU 552 In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:44.869 UTC [policies] GetPolicy -> DEBU 553 Returning dummy reject all policy because Writers could not be found in /Application/Writers
2017-07-28 13:13:44.869 UTC [policies] GetPolicy -> DEBU 554 Returning policy Writers for evaluation
2017-07-28 13:13:44.869 UTC [policies] GetPolicy -> DEBU 555 Returning policy Admins for evaluation
2017-07-28 13:13:44.869 UTC [policies] GetPolicy -> DEBU 556 Returning dummy reject all policy because Admins could not be found in /Application/Admins
2017-07-28 13:13:44.869 UTC [policies] GetPolicy -> DEBU 557 Returning policy Readers for evaluation
2017-07-28 13:13:44.870 UTC [policies] GetPolicy -> DEBU 558 Returning dummy reject all policy because Readers could not be found in /Application/Readers
2017-07-28 13:13:44.870 UTC [common/configtx] addToMap -> DEBU 559 Adding to config map: [Groups] /Channel
2017-07-28 13:13:44.870 UTC [common/configtx] addToMap -> DEBU 55a Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:44.870 UTC [common/configtx] addToMap -> DEBU 55b Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:44.870 UTC [common/configtx] addToMap -> DEBU 55c Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:44.871 UTC [common/configtx] addToMap -> DEBU 55d Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:44.871 UTC [common/configtx] addToMap -> DEBU 55e Adding to config map: [Groups] /Channel
2017-07-28 13:13:44.871 UTC [common/configtx] addToMap -> DEBU 55f Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:44.871 UTC [common/configtx] addToMap -> DEBU 560 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:44.871 UTC [common/configtx] addToMap -> DEBU 561 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:44.871 UTC [common/configtx] addToMap -> DEBU 562 Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:44.872 UTC [common/configtx] addToMap -> DEBU 563 Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:44.872 UTC [common/configtx] addToMap -> DEBU 564 Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:44.872 UTC [common/configtx] addToMap -> DEBU 565 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:44.872 UTC [policies] GetPolicy -> DEBU 566 Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:44.873 UTC [cauthdsl] func1 -> DEBU 567 0x5701cc48 gate 1501247624873147201 evaluation starts
2017-07-28 13:13:44.873 UTC [cauthdsl] func2 -> DEBU 568 0x5701cc48 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:44.873 UTC [cauthdsl] func2 -> DEBU 569 0x5701cc48 processing identity 0 with bytes of 0a074f7267314d535012fc052d2d2d2d2d424547494e202d2d2d2d2d0a4d4949434744434341622b674177494241674951644a72426f4375372b7a5972642f5062457749554954414b42676771686b6a4f50515144416a427a4d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a455a4d4263474131554543684d5162334a6e4d53356c654746746347786c4c6d4e76625445634d426f474131554541784d54593245750a62334a6e4d53356c654746746347786c4c6d4e7662544165467730784e7a41334d6a63794d544d354d6a5661467730794e7a41334d6a55794d544d354d6a56610a4d467378437a414a42674e5642415954416c56544d524d77455159445651514945777044595778705a6d3979626d6c684d5259774641594456515148457731540a59573467526e4a68626d4e7063324e764d523877485159445651514444425a425a473170626b4276636d63784c6d56345957317762475575593239744d466b770a457759484b6f5a497a6a3043415159494b6f5a497a6a3044415163445167414572344244642b326e675345546c547042682b33736630696c4a36584a677372300a6c4241725643526f424448674d754378663359556c6834745734624a476b4b4878654b46574c346a5157676c4c47454930574d5654714e4e4d457377446759440a565230504151482f42415144416765414d41774741315564457745422f7751434d4141774b7759445652306a42435177496f41676932646d787565744c5132380a5a345431556d697a506e562f395546644d3448736170354f754561552f685977436759494b6f5a497a6a3045417749445277417752414967487864537150576f0a657442454c744f55664a696b4a63704150634b4e7576344b52595170352f43553253384349426d5570344a63483875747a6669572f4f7941324e52696c2b68570a6c757275696c56353850484f384e72680a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:44.874 UTC [msp/identity] newIdentity -> DEBU 56a Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:44.886 UTC [orderer/common/deliver] deliverBlocks -> DEBU 56b Rejecting deliver because channel mychannel not found
2017-07-28 13:13:44.886 UTC [orderer/common/deliver] Handle -> DEBU 56c Waiting for new SeekInfo
2017-07-28 13:13:44.887 UTC [orderer/common/deliver] Handle -> DEBU 56d Attempting to read seek info message
2017-07-28 13:13:44.888 UTC [orderer/common/deliver] Handle -> WARN 56e Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:44.888 UTC [orderer/server/main] func1 -> DEBU 56f Closing Deliver stream
2017-07-28 13:13:44.906 UTC [msp] SatisfiesPrincipal -> DEBU 570 Checking if identity satisfies ADMIN role for Org1MSP
2017-07-28 13:13:44.907 UTC [cauthdsl] func2 -> DEBU 571 0x5701cc48 principal matched by identity 0
2017-07-28 13:13:44.907 UTC [msp/identity] Verify -> DEBU 572 Verify: digest = 00000000  b5 c0 59 46 ff b6 b5 54  4d 7b fd 8e 62 da 01 02  |..YF...TM{..b...|
00000010  75 e2 9f ec 0f 1b fe f8  bb 22 99 86 d6 1c ea 3a  |u........".....:|
2017-07-28 13:13:44.907 UTC [msp/identity] Verify -> DEBU 573 Verify: sig = 00000000  30 45 02 21 00 f4 fd 95  61 eb 08 39 ca 93 10 e5  |0E.!....a..9....|
00000010  6e d1 37 50 7f 6b 75 bf  2d a9 7a ed 5b a6 67 7d  |n.7P.ku.-.z.[.g}|
00000020  4c 7b 76 8a df 02 20 0c  ba 5d 41 2f 09 57 a9 37  |L{v... ..]A/.W.7|
00000030  de c6 8e 92 42 d9 d8 3c  f5 de 20 09 67 81 45 17  |....B..<.. .g.E.|
00000040  04 a6 1c 36 9a a9 1f                              |...6...|
2017-07-28 13:13:44.937 UTC [cauthdsl] func2 -> DEBU 574 0x5701cc48 principal evaluation succeeds for identity 0
2017-07-28 13:13:44.938 UTC [cauthdsl] func1 -> DEBU 575 0x5701cc48 gate 1501247624873147201 evaluation succeeds
2017-07-28 13:13:44.938 UTC [common/configtx] processConfig -> DEBU 576 Beginning new config for channel mychannel
2017-07-28 13:13:44.938 UTC [common/config] NewStandardValues -> DEBU 577 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:44.938 UTC [common/config] initializeProtosStruct -> DEBU 578 Processing field: HashingAlgorithm
2017-07-28 13:13:44.939 UTC [common/config] initializeProtosStruct -> DEBU 579 Processing field: BlockDataHashingStructure
2017-07-28 13:13:44.939 UTC [common/config] initializeProtosStruct -> DEBU 57a Processing field: OrdererAddresses
2017-07-28 13:13:44.939 UTC [common/config] initializeProtosStruct -> DEBU 57b Processing field: Consortium
2017-07-28 13:13:44.939 UTC [policies] ProposePolicy -> DEBU 57c Proposed new policy Writers for Channel
2017-07-28 13:13:44.939 UTC [policies] ProposePolicy -> DEBU 57d Proposed new policy Admins for Channel
2017-07-28 13:13:44.939 UTC [policies] ProposePolicy -> DEBU 57e Proposed new policy Readers for Channel
2017-07-28 13:13:44.939 UTC [common/config] NewStandardValues -> DEBU 57f Initializing protos for *struct {}
2017-07-28 13:13:44.939 UTC [policies] ProposePolicy -> DEBU 580 Proposed new policy Readers for Application
2017-07-28 13:13:44.939 UTC [policies] ProposePolicy -> DEBU 581 Proposed new policy Admins for Application
2017-07-28 13:13:44.940 UTC [policies] ProposePolicy -> DEBU 582 Proposed new policy Writers for Application
2017-07-28 13:13:44.940 UTC [common/config] NewStandardValues -> DEBU 583 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.940 UTC [common/config] initializeProtosStruct -> DEBU 584 Processing field: MSP
2017-07-28 13:13:44.940 UTC [common/config] NewStandardValues -> DEBU 585 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:44.940 UTC [common/config] initializeProtosStruct -> DEBU 586 Processing field: AnchorPeers
2017-07-28 13:13:44.940 UTC [common/config] NewStandardValues -> DEBU 587 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.940 UTC [common/config] initializeProtosStruct -> DEBU 588 Processing field: MSP
2017-07-28 13:13:44.940 UTC [policies] ProposePolicy -> DEBU 589 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:44.940 UTC [policies] ProposePolicy -> DEBU 58a Proposed new policy Readers for Org2MSP
2017-07-28 13:13:44.940 UTC [policies] ProposePolicy -> DEBU 58b Proposed new policy Writers for Org2MSP
2017-07-28 13:13:44.941 UTC [common/config] NewStandardValues -> DEBU 58c Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.941 UTC [common/config] initializeProtosStruct -> DEBU 58d Processing field: MSP
2017-07-28 13:13:44.941 UTC [common/config] NewStandardValues -> DEBU 58e Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:44.941 UTC [common/config] initializeProtosStruct -> DEBU 58f Processing field: AnchorPeers
2017-07-28 13:13:44.941 UTC [common/config] NewStandardValues -> DEBU 590 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.941 UTC [common/config] initializeProtosStruct -> DEBU 591 Processing field: MSP
2017-07-28 13:13:44.941 UTC [policies] ProposePolicy -> DEBU 592 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:44.941 UTC [policies] ProposePolicy -> DEBU 593 Proposed new policy Admins for Org1MSP
2017-07-28 13:13:44.941 UTC [policies] ProposePolicy -> DEBU 594 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:44.941 UTC [common/config] NewStandardValues -> DEBU 595 Initializing protos for *config.OrdererProtos
2017-07-28 13:13:44.941 UTC [common/config] initializeProtosStruct -> DEBU 596 Processing field: ConsensusType
2017-07-28 13:13:44.942 UTC [common/config] initializeProtosStruct -> DEBU 597 Processing field: BatchSize
2017-07-28 13:13:44.942 UTC [common/config] initializeProtosStruct -> DEBU 598 Processing field: BatchTimeout
2017-07-28 13:13:44.942 UTC [common/config] initializeProtosStruct -> DEBU 599 Processing field: KafkaBrokers
2017-07-28 13:13:44.942 UTC [common/config] initializeProtosStruct -> DEBU 59a Processing field: ChannelRestrictions
2017-07-28 13:13:44.942 UTC [policies] ProposePolicy -> DEBU 59b Proposed new policy Admins for Orderer
2017-07-28 13:13:44.942 UTC [policies] ProposePolicy -> DEBU 59c Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:44.942 UTC [policies] ProposePolicy -> DEBU 59d Proposed new policy Readers for Orderer
2017-07-28 13:13:44.942 UTC [policies] ProposePolicy -> DEBU 59e Proposed new policy Writers for Orderer
2017-07-28 13:13:44.942 UTC [common/config] NewStandardValues -> DEBU 59f Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:44.942 UTC [common/config] initializeProtosStruct -> DEBU 5a0 Processing field: MSP
2017-07-28 13:13:44.943 UTC [policies] ProposePolicy -> DEBU 5a1 Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:44.943 UTC [policies] ProposePolicy -> DEBU 5a2 Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:44.943 UTC [policies] ProposePolicy -> DEBU 5a3 Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:44.943 UTC [common/config] Validate -> DEBU 5a4 Anchor peers for org Org2MSP are 
2017-07-28 13:13:44.943 UTC [common/config] validateMSP -> DEBU 5a5 Setting up MSP for org Org2MSP
2017-07-28 13:13:44.943 UTC [msp] NewBccspMsp -> DEBU 5a6 Creating BCCSP-based MSP instance
2017-07-28 13:13:44.943 UTC [msp] Setup -> DEBU 5a7 Setting up MSP instance Org2MSP
2017-07-28 13:13:44.945 UTC [msp/identity] newIdentity -> DEBU 5a8 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:44.976 UTC [msp/identity] newIdentity -> DEBU 5a9 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:45.008 UTC [msp/identity] newIdentity -> DEBU 5aa Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:45.033 UTC [orderer/server/main] Deliver -> DEBU 5ab Starting new Deliver handler
2017-07-28 13:13:45.033 UTC [orderer/common/deliver] Handle -> DEBU 5ac Starting new deliver loop
2017-07-28 13:13:45.033 UTC [orderer/common/deliver] Handle -> DEBU 5ad Attempting to read seek info message
2017-07-28 13:13:45.100 UTC [msp] Validate -> DEBU 5ae MSP Org2MSP validating identity
2017-07-28 13:13:45.131 UTC [common/config] Validate -> DEBU 5af Anchor peers for org Org1MSP are 
2017-07-28 13:13:45.131 UTC [common/config] validateMSP -> DEBU 5b0 Setting up MSP for org Org1MSP
2017-07-28 13:13:45.131 UTC [msp] NewBccspMsp -> DEBU 5b1 Creating BCCSP-based MSP instance
2017-07-28 13:13:45.131 UTC [msp] Setup -> DEBU 5b2 Setting up MSP instance Org1MSP
2017-07-28 13:13:45.133 UTC [msp/identity] newIdentity -> DEBU 5b3 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:45.164 UTC [msp/identity] newIdentity -> DEBU 5b4 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:45.196 UTC [msp/identity] newIdentity -> DEBU 5b5 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:45.244 UTC [orderer/common/deliver] deliverBlocks -> DEBU 5b6 Rejecting deliver because channel mychannel not found
2017-07-28 13:13:45.245 UTC [orderer/common/deliver] Handle -> DEBU 5b7 Waiting for new SeekInfo
2017-07-28 13:13:45.245 UTC [orderer/common/deliver] Handle -> DEBU 5b8 Attempting to read seek info message
2017-07-28 13:13:45.247 UTC [orderer/common/deliver] Handle -> WARN 5b9 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:45.247 UTC [orderer/server/main] func1 -> DEBU 5ba Closing Deliver stream
2017-07-28 13:13:45.296 UTC [msp] Validate -> DEBU 5bb MSP Org1MSP validating identity
2017-07-28 13:13:45.327 UTC [common/config] validateMSP -> DEBU 5bc Setting up MSP for org OrdererOrg
2017-07-28 13:13:45.327 UTC [msp] NewBccspMsp -> DEBU 5bd Creating BCCSP-based MSP instance
2017-07-28 13:13:45.327 UTC [msp] Setup -> DEBU 5be Setting up MSP instance OrdererMSP
2017-07-28 13:13:45.329 UTC [msp/identity] newIdentity -> DEBU 5bf Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:45.360 UTC [msp/identity] newIdentity -> DEBU 5c0 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:45.387 UTC [orderer/server/main] Deliver -> DEBU 5c1 Starting new Deliver handler
2017-07-28 13:13:45.387 UTC [orderer/common/deliver] Handle -> DEBU 5c2 Starting new deliver loop
2017-07-28 13:13:45.387 UTC [orderer/common/deliver] Handle -> DEBU 5c3 Attempting to read seek info message
2017-07-28 13:13:45.392 UTC [msp/identity] newIdentity -> DEBU 5c4 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:45.484 UTC [msp] Validate -> DEBU 5c5 MSP OrdererMSP validating identity
2017-07-28 13:13:45.515 UTC [msp] Setup -> DEBU 5c6 Setting up the MSP manager (3 msps)
2017-07-28 13:13:45.515 UTC [msp] Setup -> DEBU 5c7 MSP manager setup complete, setup 3 msps
2017-07-28 13:13:45.515 UTC [common/configtx] addToMap -> DEBU 5c8 Adding to config map: [Groups] /Channel
2017-07-28 13:13:45.515 UTC [common/configtx] addToMap -> DEBU 5c9 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:45.516 UTC [common/configtx] addToMap -> DEBU 5ca Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:45.516 UTC [common/configtx] addToMap -> DEBU 5cb Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:45.516 UTC [common/configtx] addToMap -> DEBU 5cc Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:45.516 UTC [common/configtx] addToMap -> DEBU 5cd Adding to config map: [Groups] /Channel
2017-07-28 13:13:45.516 UTC [common/configtx] addToMap -> DEBU 5ce Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:45.516 UTC [common/configtx] addToMap -> DEBU 5cf Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:45.517 UTC [common/configtx] addToMap -> DEBU 5d0 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:45.517 UTC [common/configtx] addToMap -> DEBU 5d1 Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:45.517 UTC [common/configtx] addToMap -> DEBU 5d2 Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:45.517 UTC [common/configtx] addToMap -> DEBU 5d3 Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:45.517 UTC [common/configtx] addToMap -> DEBU 5d4 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:45.517 UTC [policies] GetPolicy -> DEBU 5d5 Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:45.517 UTC [cauthdsl] func1 -> DEBU 5d6 0x57091f98 gate 1501247625517972231 evaluation starts
2017-07-28 13:13:45.518 UTC [cauthdsl] func2 -> DEBU 5d7 0x57091f98 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:45.518 UTC [cauthdsl] func2 -> DEBU 5d8 0x57091f98 processing identity 0 with bytes of 0a074f7267314d535012fc052d2d2d2d2d424547494e202d2d2d2d2d0a4d4949434744434341622b674177494241674951644a72426f4375372b7a5972642f5062457749554954414b42676771686b6a4f50515144416a427a4d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a455a4d4263474131554543684d5162334a6e4d53356c654746746347786c4c6d4e76625445634d426f474131554541784d54593245750a62334a6e4d53356c654746746347786c4c6d4e7662544165467730784e7a41334d6a63794d544d354d6a5661467730794e7a41334d6a55794d544d354d6a56610a4d467378437a414a42674e5642415954416c56544d524d77455159445651514945777044595778705a6d3979626d6c684d5259774641594456515148457731540a59573467526e4a68626d4e7063324e764d523877485159445651514444425a425a473170626b4276636d63784c6d56345957317762475575593239744d466b770a457759484b6f5a497a6a3043415159494b6f5a497a6a3044415163445167414572344244642b326e675345546c547042682b33736630696c4a36584a677372300a6c4241725643526f424448674d754378663359556c6834745734624a476b4b4878654b46574c346a5157676c4c47454930574d5654714e4e4d457377446759440a565230504151482f42415144416765414d41774741315564457745422f7751434d4141774b7759445652306a42435177496f41676932646d787565744c5132380a5a345431556d697a506e562f395546644d3448736170354f754561552f685977436759494b6f5a497a6a3045417749445277417752414967487864537150576f0a657442454c744f55664a696b4a63704150634b4e7576344b52595170352f43553253384349426d5570344a63483875747a6669572f4f7941324e52696c2b68570a6c757275696c56353850484f384e72680a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:45.519 UTC [msp/identity] newIdentity -> DEBU 5d9 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:45.550 UTC [msp] SatisfiesPrincipal -> DEBU 5da Checking if identity satisfies ADMIN role for Org1MSP
2017-07-28 13:13:45.550 UTC [cauthdsl] func2 -> DEBU 5db 0x57091f98 principal matched by identity 0
2017-07-28 13:13:45.550 UTC [msp/identity] Verify -> DEBU 5dc Verify: digest = 00000000  b5 c0 59 46 ff b6 b5 54  4d 7b fd 8e 62 da 01 02  |..YF...TM{..b...|
00000010  75 e2 9f ec 0f 1b fe f8  bb 22 99 86 d6 1c ea 3a  |u........".....:|
2017-07-28 13:13:45.550 UTC [msp/identity] Verify -> DEBU 5dd Verify: sig = 00000000  30 45 02 21 00 f4 fd 95  61 eb 08 39 ca 93 10 e5  |0E.!....a..9....|
00000010  6e d1 37 50 7f 6b 75 bf  2d a9 7a ed 5b a6 67 7d  |n.7P.ku.-.z.[.g}|
00000020  4c 7b 76 8a df 02 20 0c  ba 5d 41 2f 09 57 a9 37  |L{v... ..]A/.W.7|
00000030  de c6 8e 92 42 d9 d8 3c  f5 de 20 09 67 81 45 17  |....B..<.. .g.E.|
00000040  04 a6 1c 36 9a a9 1f                              |...6...|
2017-07-28 13:13:45.581 UTC [cauthdsl] func2 -> DEBU 5de 0x57091f98 principal evaluation succeeds for identity 0
2017-07-28 13:13:45.581 UTC [cauthdsl] func1 -> DEBU 5df 0x57091f98 gate 1501247625517972231 evaluation succeeds
2017-07-28 13:13:45.581 UTC [common/configtx] processConfig -> DEBU 5e0 Beginning new config for channel mychannel
2017-07-28 13:13:45.582 UTC [common/config] NewStandardValues -> DEBU 5e1 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:45.582 UTC [common/config] initializeProtosStruct -> DEBU 5e2 Processing field: HashingAlgorithm
2017-07-28 13:13:45.582 UTC [common/config] initializeProtosStruct -> DEBU 5e3 Processing field: BlockDataHashingStructure
2017-07-28 13:13:45.582 UTC [common/config] initializeProtosStruct -> DEBU 5e4 Processing field: OrdererAddresses
2017-07-28 13:13:45.582 UTC [common/config] initializeProtosStruct -> DEBU 5e5 Processing field: Consortium
2017-07-28 13:13:45.582 UTC [policies] ProposePolicy -> DEBU 5e6 Proposed new policy Admins for Channel
2017-07-28 13:13:45.582 UTC [policies] ProposePolicy -> DEBU 5e7 Proposed new policy Readers for Channel
2017-07-28 13:13:45.582 UTC [policies] ProposePolicy -> DEBU 5e8 Proposed new policy Writers for Channel
2017-07-28 13:13:45.582 UTC [common/config] NewStandardValues -> DEBU 5e9 Initializing protos for *struct {}
2017-07-28 13:13:45.582 UTC [policies] ProposePolicy -> DEBU 5ea Proposed new policy Readers for Application
2017-07-28 13:13:45.583 UTC [policies] ProposePolicy -> DEBU 5eb Proposed new policy Admins for Application
2017-07-28 13:13:45.583 UTC [policies] ProposePolicy -> DEBU 5ec Proposed new policy Writers for Application
2017-07-28 13:13:45.583 UTC [common/config] NewStandardValues -> DEBU 5ed Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:45.583 UTC [common/config] initializeProtosStruct -> DEBU 5ee Processing field: MSP
2017-07-28 13:13:45.583 UTC [common/config] NewStandardValues -> DEBU 5ef Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:45.583 UTC [common/config] initializeProtosStruct -> DEBU 5f0 Processing field: AnchorPeers
2017-07-28 13:13:45.583 UTC [common/config] NewStandardValues -> DEBU 5f1 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:45.583 UTC [common/config] initializeProtosStruct -> DEBU 5f2 Processing field: MSP
2017-07-28 13:13:45.583 UTC [policies] ProposePolicy -> DEBU 5f3 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:45.583 UTC [policies] ProposePolicy -> DEBU 5f4 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:45.584 UTC [policies] ProposePolicy -> DEBU 5f5 Proposed new policy Writers for Org2MSP
2017-07-28 13:13:45.584 UTC [common/config] NewStandardValues -> DEBU 5f6 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:45.584 UTC [common/config] initializeProtosStruct -> DEBU 5f7 Processing field: MSP
2017-07-28 13:13:45.584 UTC [common/config] NewStandardValues -> DEBU 5f8 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:45.584 UTC [common/config] initializeProtosStruct -> DEBU 5f9 Processing field: AnchorPeers
2017-07-28 13:13:45.584 UTC [common/config] NewStandardValues -> DEBU 5fa Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:45.584 UTC [common/config] initializeProtosStruct -> DEBU 5fb Processing field: MSP
2017-07-28 13:13:45.584 UTC [policies] ProposePolicy -> DEBU 5fc Proposed new policy Readers for Org1MSP
2017-07-28 13:13:45.584 UTC [policies] ProposePolicy -> DEBU 5fd Proposed new policy Writers for Org1MSP
2017-07-28 13:13:45.584 UTC [policies] ProposePolicy -> DEBU 5fe Proposed new policy Admins for Org1MSP
2017-07-28 13:13:45.584 UTC [common/config] NewStandardValues -> DEBU 5ff Initializing protos for *config.OrdererProtos
2017-07-28 13:13:45.585 UTC [common/config] initializeProtosStruct -> DEBU 600 Processing field: ConsensusType
2017-07-28 13:13:45.585 UTC [common/config] initializeProtosStruct -> DEBU 601 Processing field: BatchSize
2017-07-28 13:13:45.585 UTC [common/config] initializeProtosStruct -> DEBU 602 Processing field: BatchTimeout
2017-07-28 13:13:45.585 UTC [common/config] initializeProtosStruct -> DEBU 603 Processing field: KafkaBrokers
2017-07-28 13:13:45.585 UTC [common/config] initializeProtosStruct -> DEBU 604 Processing field: ChannelRestrictions
2017-07-28 13:13:45.585 UTC [policies] ProposePolicy -> DEBU 605 Proposed new policy Admins for Orderer
2017-07-28 13:13:45.585 UTC [policies] ProposePolicy -> DEBU 606 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:45.585 UTC [policies] ProposePolicy -> DEBU 607 Proposed new policy Readers for Orderer
2017-07-28 13:13:45.585 UTC [policies] ProposePolicy -> DEBU 608 Proposed new policy Writers for Orderer
2017-07-28 13:13:45.585 UTC [common/config] NewStandardValues -> DEBU 609 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:45.586 UTC [common/config] initializeProtosStruct -> DEBU 60a Processing field: MSP
2017-07-28 13:13:45.586 UTC [policies] ProposePolicy -> DEBU 60b Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:45.586 UTC [policies] ProposePolicy -> DEBU 60c Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:45.586 UTC [policies] ProposePolicy -> DEBU 60d Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:45.586 UTC [common/config] Validate -> DEBU 60e Anchor peers for org Org2MSP are 
2017-07-28 13:13:45.586 UTC [common/config] validateMSP -> DEBU 60f Setting up MSP for org Org2MSP
2017-07-28 13:13:45.586 UTC [msp] NewBccspMsp -> DEBU 610 Creating BCCSP-based MSP instance
2017-07-28 13:13:45.586 UTC [msp] Setup -> DEBU 611 Setting up MSP instance Org2MSP
2017-07-28 13:13:45.588 UTC [msp/identity] newIdentity -> DEBU 612 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:45.598 UTC [orderer/common/deliver] deliverBlocks -> DEBU 613 Rejecting deliver because channel mychannel not found
2017-07-28 13:13:45.599 UTC [orderer/common/deliver] Handle -> DEBU 614 Waiting for new SeekInfo
2017-07-28 13:13:45.599 UTC [orderer/common/deliver] Handle -> DEBU 615 Attempting to read seek info message
2017-07-28 13:13:45.603 UTC [orderer/common/deliver] Handle -> WARN 616 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:45.603 UTC [orderer/server/main] func1 -> DEBU 617 Closing Deliver stream
2017-07-28 13:13:45.620 UTC [msp/identity] newIdentity -> DEBU 618 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:45.651 UTC [msp/identity] newIdentity -> DEBU 619 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:45.743 UTC [orderer/server/main] Deliver -> DEBU 61a Starting new Deliver handler
2017-07-28 13:13:45.743 UTC [orderer/common/deliver] Handle -> DEBU 61b Starting new deliver loop
2017-07-28 13:13:45.743 UTC [orderer/common/deliver] Handle -> DEBU 61c Attempting to read seek info message
2017-07-28 13:13:45.743 UTC [msp] Validate -> DEBU 61d MSP Org2MSP validating identity
2017-07-28 13:13:45.774 UTC [common/config] Validate -> DEBU 61e Anchor peers for org Org1MSP are 
2017-07-28 13:13:45.774 UTC [common/config] validateMSP -> DEBU 61f Setting up MSP for org Org1MSP
2017-07-28 13:13:45.774 UTC [msp] NewBccspMsp -> DEBU 620 Creating BCCSP-based MSP instance
2017-07-28 13:13:45.775 UTC [msp] Setup -> DEBU 621 Setting up MSP instance Org1MSP
2017-07-28 13:13:45.776 UTC [msp/identity] newIdentity -> DEBU 622 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:45.808 UTC [msp/identity] newIdentity -> DEBU 623 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:45.839 UTC [msp/identity] newIdentity -> DEBU 624 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:45.931 UTC [msp] Validate -> DEBU 625 MSP Org1MSP validating identity
2017-07-28 13:13:45.956 UTC [orderer/common/deliver] deliverBlocks -> DEBU 626 Rejecting deliver because channel mychannel not found
2017-07-28 13:13:45.957 UTC [orderer/common/deliver] Handle -> DEBU 627 Waiting for new SeekInfo
2017-07-28 13:13:45.957 UTC [orderer/common/deliver] Handle -> DEBU 628 Attempting to read seek info message
2017-07-28 13:13:45.958 UTC [orderer/common/deliver] Handle -> WARN 629 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:45.958 UTC [orderer/server/main] func1 -> DEBU 62a Closing Deliver stream
2017-07-28 13:13:45.962 UTC [common/config] validateMSP -> DEBU 62b Setting up MSP for org OrdererOrg
2017-07-28 13:13:45.962 UTC [msp] NewBccspMsp -> DEBU 62c Creating BCCSP-based MSP instance
2017-07-28 13:13:45.963 UTC [msp] Setup -> DEBU 62d Setting up MSP instance OrdererMSP
2017-07-28 13:13:45.964 UTC [msp/identity] newIdentity -> DEBU 62e Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:45.996 UTC [msp/identity] newIdentity -> DEBU 62f Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:46.027 UTC [msp/identity] newIdentity -> DEBU 630 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:46.096 UTC [orderer/server/main] Deliver -> DEBU 631 Starting new Deliver handler
2017-07-28 13:13:46.096 UTC [orderer/common/deliver] Handle -> DEBU 632 Starting new deliver loop
2017-07-28 13:13:46.097 UTC [orderer/common/deliver] Handle -> DEBU 633 Attempting to read seek info message
2017-07-28 13:13:46.120 UTC [msp] Validate -> DEBU 634 MSP OrdererMSP validating identity
2017-07-28 13:13:46.151 UTC [msp] Setup -> DEBU 635 Setting up the MSP manager (3 msps)
2017-07-28 13:13:46.151 UTC [msp] Setup -> DEBU 636 MSP manager setup complete, setup 3 msps
2017-07-28 13:13:46.151 UTC [policies] GetPolicy -> DEBU 637 Returning policy Admins for evaluation
2017-07-28 13:13:46.152 UTC [policies] CommitProposals -> DEBU 638 In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:46.152 UTC [policies] GetPolicy -> DEBU 639 Returning policy Readers for evaluation
2017-07-28 13:13:46.152 UTC [policies] CommitProposals -> DEBU 63a In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:46.152 UTC [policies] GetPolicy -> DEBU 63b Returning policy Writers for evaluation
2017-07-28 13:13:46.152 UTC [policies] CommitProposals -> DEBU 63c In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:46.152 UTC [policies] GetPolicy -> DEBU 63d Returning policy Readers for evaluation
2017-07-28 13:13:46.152 UTC [policies] CommitProposals -> DEBU 63e In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:46.152 UTC [policies] GetPolicy -> DEBU 63f Returning policy Writers for evaluation
2017-07-28 13:13:46.152 UTC [policies] CommitProposals -> DEBU 640 In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:46.152 UTC [policies] GetPolicy -> DEBU 641 Returning policy Admins for evaluation
2017-07-28 13:13:46.152 UTC [policies] CommitProposals -> DEBU 642 In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:46.153 UTC [policies] GetPolicy -> DEBU 643 Returning policy Readers for evaluation
2017-07-28 13:13:46.153 UTC [policies] GetPolicy -> DEBU 644 Returning policy Readers for evaluation
2017-07-28 13:13:46.153 UTC [policies] GetPolicy -> DEBU 645 Returning policy Admins for evaluation
2017-07-28 13:13:46.153 UTC [policies] GetPolicy -> DEBU 646 Returning policy Admins for evaluation
2017-07-28 13:13:46.153 UTC [policies] GetPolicy -> DEBU 647 Returning policy Writers for evaluation
2017-07-28 13:13:46.153 UTC [policies] GetPolicy -> DEBU 648 Returning policy Writers for evaluation
2017-07-28 13:13:46.153 UTC [policies] GetPolicy -> DEBU 649 Returning policy Readers for evaluation
2017-07-28 13:13:46.153 UTC [policies] CommitProposals -> DEBU 64a In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:46.153 UTC [policies] GetPolicy -> DEBU 64b Returning policy Writers for evaluation
2017-07-28 13:13:46.153 UTC [policies] CommitProposals -> DEBU 64c In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:46.153 UTC [policies] GetPolicy -> DEBU 64d Returning policy Admins for evaluation
2017-07-28 13:13:46.153 UTC [policies] CommitProposals -> DEBU 64e In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:46.154 UTC [policies] GetPolicy -> DEBU 64f Returning policy Admins for evaluation
2017-07-28 13:13:46.154 UTC [policies] GetPolicy -> DEBU 650 Returning policy Writers for evaluation
2017-07-28 13:13:46.154 UTC [policies] GetPolicy -> DEBU 651 Returning policy Readers for evaluation
2017-07-28 13:13:46.154 UTC [policies] GetPolicy -> DEBU 652 Returning policy Writers for evaluation
2017-07-28 13:13:46.154 UTC [policies] GetPolicy -> DEBU 653 Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:46.154 UTC [policies] CommitProposals -> DEBU 654 In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:46.154 UTC [policies] GetPolicy -> DEBU 655 Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:46.154 UTC [policies] CommitProposals -> DEBU 656 In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:46.154 UTC [policies] GetPolicy -> DEBU 657 Returning policy Readers for evaluation
2017-07-28 13:13:46.154 UTC [policies] CommitProposals -> DEBU 658 In commit adding relative sub-policy Application/Readers to Channel
2017-07-28 13:13:46.154 UTC [policies] GetPolicy -> DEBU 659 Returning policy Writers for evaluation
2017-07-28 13:13:46.154 UTC [policies] CommitProposals -> DEBU 65a In commit adding relative sub-policy Application/Writers to Channel
2017-07-28 13:13:46.155 UTC [policies] GetPolicy -> DEBU 65b Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:46.155 UTC [policies] CommitProposals -> DEBU 65c In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:46.155 UTC [policies] GetPolicy -> DEBU 65d Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:46.155 UTC [policies] CommitProposals -> DEBU 65e In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:46.155 UTC [policies] GetPolicy -> DEBU 65f Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:46.155 UTC [policies] CommitProposals -> DEBU 660 In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:46.155 UTC [policies] GetPolicy -> DEBU 661 Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:46.155 UTC [policies] CommitProposals -> DEBU 662 In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:46.155 UTC [policies] GetPolicy -> DEBU 663 Returning policy Admins for evaluation
2017-07-28 13:13:46.155 UTC [policies] CommitProposals -> DEBU 664 In commit adding relative sub-policy Application/Admins to Channel
2017-07-28 13:13:46.155 UTC [policies] GetPolicy -> DEBU 665 Returning policy BlockValidation for evaluation
2017-07-28 13:13:46.155 UTC [policies] CommitProposals -> DEBU 666 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:46.156 UTC [policies] GetPolicy -> DEBU 667 Returning policy Readers for evaluation
2017-07-28 13:13:46.156 UTC [policies] CommitProposals -> DEBU 668 In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:46.156 UTC [policies] GetPolicy -> DEBU 669 Returning policy Writers for evaluation
2017-07-28 13:13:46.156 UTC [policies] CommitProposals -> DEBU 66a In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:46.156 UTC [policies] GetPolicy -> DEBU 66b Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:46.156 UTC [policies] CommitProposals -> DEBU 66c In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:46.156 UTC [policies] GetPolicy -> DEBU 66d Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:46.156 UTC [policies] CommitProposals -> DEBU 66e In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:46.156 UTC [policies] GetPolicy -> DEBU 66f Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:46.156 UTC [policies] CommitProposals -> DEBU 670 In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:46.156 UTC [policies] GetPolicy -> DEBU 671 Returning policy Admins for evaluation
2017-07-28 13:13:46.156 UTC [policies] CommitProposals -> DEBU 672 In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:46.157 UTC [policies] GetPolicy -> DEBU 673 Returning policy Admins for evaluation
2017-07-28 13:13:46.157 UTC [policies] GetPolicy -> DEBU 674 Returning policy Admins for evaluation
2017-07-28 13:13:46.157 UTC [policies] GetPolicy -> DEBU 675 Returning policy Readers for evaluation
2017-07-28 13:13:46.157 UTC [policies] GetPolicy -> DEBU 676 Returning policy Readers for evaluation
2017-07-28 13:13:46.157 UTC [policies] GetPolicy -> DEBU 677 Returning policy Writers for evaluation
2017-07-28 13:13:46.157 UTC [policies] GetPolicy -> DEBU 678 Returning policy Writers for evaluation
2017-07-28 13:13:46.157 UTC [policies] GetPolicy -> DEBU 679 Returning policy Readers for evaluation
2017-07-28 13:13:46.157 UTC [policies] CommitProposals -> DEBU 67a As expected, current configuration has policy '/Channel/Readers'
2017-07-28 13:13:46.157 UTC [policies] GetPolicy -> DEBU 67b Returning policy Writers for evaluation
2017-07-28 13:13:46.157 UTC [policies] CommitProposals -> DEBU 67c As expected, current configuration has policy '/Channel/Writers'
2017-07-28 13:13:46.157 UTC [policies] GetPolicy -> DEBU 67d Returning policy Application/Readers for evaluation
2017-07-28 13:13:46.157 UTC [policies] CommitProposals -> DEBU 67e As expected, current configuration has policy '/Channel/Application/Readers'
2017-07-28 13:13:46.158 UTC [policies] GetPolicy -> DEBU 67f Returning policy Application/Writers for evaluation
2017-07-28 13:13:46.158 UTC [policies] CommitProposals -> DEBU 680 As expected, current configuration has policy '/Channel/Application/Writers'
2017-07-28 13:13:46.158 UTC [policies] GetPolicy -> DEBU 681 Returning policy Application/Admins for evaluation
2017-07-28 13:13:46.158 UTC [policies] CommitProposals -> DEBU 682 As expected, current configuration has policy '/Channel/Application/Admins'
2017-07-28 13:13:46.158 UTC [policies] GetPolicy -> DEBU 683 Returning policy Orderer/BlockValidation for evaluation
2017-07-28 13:13:46.158 UTC [policies] CommitProposals -> DEBU 684 As expected, current configuration has policy '/Channel/Orderer/BlockValidation'
2017-07-28 13:13:46.158 UTC [common/config] NewStandardValues -> DEBU 685 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:46.158 UTC [common/config] initializeProtosStruct -> DEBU 686 Processing field: HashingAlgorithm
2017-07-28 13:13:46.158 UTC [common/config] initializeProtosStruct -> DEBU 687 Processing field: BlockDataHashingStructure
2017-07-28 13:13:46.158 UTC [common/config] initializeProtosStruct -> DEBU 688 Processing field: OrdererAddresses
2017-07-28 13:13:46.159 UTC [common/config] initializeProtosStruct -> DEBU 689 Processing field: Consortium
2017-07-28 13:13:46.159 UTC [common/configtx] addToMap -> DEBU 68a Adding to config map: [Groups] /Channel
2017-07-28 13:13:46.160 UTC [common/configtx] addToMap -> DEBU 68b Adding to config map: [Groups] /Channel/Orderer
2017-07-28 13:13:46.160 UTC [common/configtx] addToMap -> DEBU 68c Adding to config map: [Groups] /Channel/Orderer/OrdererOrg
2017-07-28 13:13:46.160 UTC [common/configtx] addToMap -> DEBU 68d Adding to config map: [Values] /Channel/Orderer/OrdererOrg/MSP
2017-07-28 13:13:46.160 UTC [common/configtx] addToMap -> DEBU 68e Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Readers
2017-07-28 13:13:46.160 UTC [common/configtx] addToMap -> DEBU 68f Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Writers
2017-07-28 13:13:46.160 UTC [common/configtx] addToMap -> DEBU 690 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Admins
2017-07-28 13:13:46.166 UTC [common/configtx] addToMap -> DEBU 691 Adding to config map: [Values] /Channel/Orderer/BatchSize
2017-07-28 13:13:46.166 UTC [common/configtx] addToMap -> DEBU 692 Adding to config map: [Values] /Channel/Orderer/BatchTimeout
2017-07-28 13:13:46.166 UTC [common/configtx] addToMap -> DEBU 693 Adding to config map: [Values] /Channel/Orderer/ChannelRestrictions
2017-07-28 13:13:46.167 UTC [common/configtx] addToMap -> DEBU 694 Adding to config map: [Values] /Channel/Orderer/ConsensusType
2017-07-28 13:13:46.167 UTC [common/configtx] addToMap -> DEBU 695 Adding to config map: [Policy] /Channel/Orderer/BlockValidation
2017-07-28 13:13:46.167 UTC [common/configtx] addToMap -> DEBU 696 Adding to config map: [Policy] /Channel/Orderer/Readers
2017-07-28 13:13:46.168 UTC [common/configtx] addToMap -> DEBU 697 Adding to config map: [Policy] /Channel/Orderer/Writers
2017-07-28 13:13:46.168 UTC [common/configtx] addToMap -> DEBU 698 Adding to config map: [Policy] /Channel/Orderer/Admins
2017-07-28 13:13:46.169 UTC [common/configtx] addToMap -> DEBU 699 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:46.169 UTC [common/configtx] addToMap -> DEBU 69a Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:46.169 UTC [common/configtx] addToMap -> DEBU 69b Adding to config map: [Values] /Channel/Application/Org2MSP/MSP
2017-07-28 13:13:46.169 UTC [common/configtx] addToMap -> DEBU 69c Adding to config map: [Policy] /Channel/Application/Org2MSP/Writers
2017-07-28 13:13:46.169 UTC [common/configtx] addToMap -> DEBU 69d Adding to config map: [Policy] /Channel/Application/Org2MSP/Admins
2017-07-28 13:13:46.169 UTC [common/configtx] addToMap -> DEBU 69e Adding to config map: [Policy] /Channel/Application/Org2MSP/Readers
2017-07-28 13:13:46.170 UTC [common/configtx] addToMap -> DEBU 69f Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:46.170 UTC [common/configtx] addToMap -> DEBU 6a0 Adding to config map: [Values] /Channel/Application/Org1MSP/MSP
2017-07-28 13:13:46.170 UTC [common/configtx] addToMap -> DEBU 6a1 Adding to config map: [Policy] /Channel/Application/Org1MSP/Writers
2017-07-28 13:13:46.170 UTC [common/configtx] addToMap -> DEBU 6a2 Adding to config map: [Policy] /Channel/Application/Org1MSP/Admins
2017-07-28 13:13:46.170 UTC [common/configtx] addToMap -> DEBU 6a3 Adding to config map: [Policy] /Channel/Application/Org1MSP/Readers
2017-07-28 13:13:46.170 UTC [common/configtx] addToMap -> DEBU 6a4 Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:46.171 UTC [common/configtx] addToMap -> DEBU 6a5 Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:46.171 UTC [common/configtx] addToMap -> DEBU 6a6 Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:46.171 UTC [common/configtx] addToMap -> DEBU 6a7 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:46.171 UTC [common/configtx] addToMap -> DEBU 6a8 Adding to config map: [Values] /Channel/HashingAlgorithm
2017-07-28 13:13:46.171 UTC [common/configtx] addToMap -> DEBU 6a9 Adding to config map: [Values] /Channel/BlockDataHashingStructure
2017-07-28 13:13:46.171 UTC [common/configtx] addToMap -> DEBU 6aa Adding to config map: [Values] /Channel/OrdererAddresses
2017-07-28 13:13:46.172 UTC [common/configtx] addToMap -> DEBU 6ab Adding to config map: [Policy] /Channel/Admins
2017-07-28 13:13:46.172 UTC [common/configtx] addToMap -> DEBU 6ac Adding to config map: [Policy] /Channel/Readers
2017-07-28 13:13:46.172 UTC [common/configtx] addToMap -> DEBU 6ad Adding to config map: [Policy] /Channel/Writers
2017-07-28 13:13:46.172 UTC [common/configtx] processConfig -> DEBU 6ae Beginning new config for channel mychannel
2017-07-28 13:13:46.172 UTC [common/config] NewStandardValues -> DEBU 6af Initializing protos for *config.ChannelProtos
2017-07-28 13:13:46.172 UTC [common/config] initializeProtosStruct -> DEBU 6b0 Processing field: HashingAlgorithm
2017-07-28 13:13:46.172 UTC [common/config] initializeProtosStruct -> DEBU 6b1 Processing field: BlockDataHashingStructure
2017-07-28 13:13:46.172 UTC [common/config] initializeProtosStruct -> DEBU 6b2 Processing field: OrdererAddresses
2017-07-28 13:13:46.172 UTC [common/config] initializeProtosStruct -> DEBU 6b3 Processing field: Consortium
2017-07-28 13:13:46.173 UTC [policies] ProposePolicy -> DEBU 6b4 Proposed new policy Admins for Channel
2017-07-28 13:13:46.173 UTC [policies] ProposePolicy -> DEBU 6b5 Proposed new policy Readers for Channel
2017-07-28 13:13:46.173 UTC [policies] ProposePolicy -> DEBU 6b6 Proposed new policy Writers for Channel
2017-07-28 13:13:46.173 UTC [common/config] NewStandardValues -> DEBU 6b7 Initializing protos for *config.OrdererProtos
2017-07-28 13:13:46.173 UTC [common/config] initializeProtosStruct -> DEBU 6b8 Processing field: ConsensusType
2017-07-28 13:13:46.173 UTC [common/config] initializeProtosStruct -> DEBU 6b9 Processing field: BatchSize
2017-07-28 13:13:46.173 UTC [common/config] initializeProtosStruct -> DEBU 6ba Processing field: BatchTimeout
2017-07-28 13:13:46.173 UTC [common/config] initializeProtosStruct -> DEBU 6bb Processing field: KafkaBrokers
2017-07-28 13:13:46.173 UTC [common/config] initializeProtosStruct -> DEBU 6bc Processing field: ChannelRestrictions
2017-07-28 13:13:46.173 UTC [policies] ProposePolicy -> DEBU 6bd Proposed new policy Admins for Orderer
2017-07-28 13:13:46.174 UTC [policies] ProposePolicy -> DEBU 6be Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:46.174 UTC [policies] ProposePolicy -> DEBU 6bf Proposed new policy Readers for Orderer
2017-07-28 13:13:46.174 UTC [policies] ProposePolicy -> DEBU 6c0 Proposed new policy Writers for Orderer
2017-07-28 13:13:46.174 UTC [common/config] NewStandardValues -> DEBU 6c1 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.174 UTC [common/config] initializeProtosStruct -> DEBU 6c2 Processing field: MSP
2017-07-28 13:13:46.174 UTC [policies] ProposePolicy -> DEBU 6c3 Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:46.174 UTC [policies] ProposePolicy -> DEBU 6c4 Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:46.174 UTC [policies] ProposePolicy -> DEBU 6c5 Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:46.174 UTC [common/config] NewStandardValues -> DEBU 6c6 Initializing protos for *struct {}
2017-07-28 13:13:46.175 UTC [policies] ProposePolicy -> DEBU 6c7 Proposed new policy Readers for Application
2017-07-28 13:13:46.175 UTC [policies] ProposePolicy -> DEBU 6c8 Proposed new policy Admins for Application
2017-07-28 13:13:46.175 UTC [policies] ProposePolicy -> DEBU 6c9 Proposed new policy Writers for Application
2017-07-28 13:13:46.175 UTC [common/config] NewStandardValues -> DEBU 6ca Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.175 UTC [common/config] initializeProtosStruct -> DEBU 6cb Processing field: MSP
2017-07-28 13:13:46.175 UTC [common/config] NewStandardValues -> DEBU 6cc Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:46.175 UTC [common/config] initializeProtosStruct -> DEBU 6cd Processing field: AnchorPeers
2017-07-28 13:13:46.175 UTC [common/config] NewStandardValues -> DEBU 6ce Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.175 UTC [common/config] initializeProtosStruct -> DEBU 6cf Processing field: MSP
2017-07-28 13:13:46.175 UTC [policies] ProposePolicy -> DEBU 6d0 Proposed new policy Writers for Org2MSP
2017-07-28 13:13:46.175 UTC [policies] ProposePolicy -> DEBU 6d1 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:46.176 UTC [policies] ProposePolicy -> DEBU 6d2 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:46.176 UTC [common/config] NewStandardValues -> DEBU 6d3 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.176 UTC [common/config] initializeProtosStruct -> DEBU 6d4 Processing field: MSP
2017-07-28 13:13:46.176 UTC [common/config] NewStandardValues -> DEBU 6d5 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:46.176 UTC [common/config] initializeProtosStruct -> DEBU 6d6 Processing field: AnchorPeers
2017-07-28 13:13:46.176 UTC [common/config] NewStandardValues -> DEBU 6d7 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.176 UTC [common/config] initializeProtosStruct -> DEBU 6d8 Processing field: MSP
2017-07-28 13:13:46.176 UTC [policies] ProposePolicy -> DEBU 6d9 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:46.176 UTC [policies] ProposePolicy -> DEBU 6da Proposed new policy Admins for Org1MSP
2017-07-28 13:13:46.176 UTC [policies] ProposePolicy -> DEBU 6db Proposed new policy Readers for Org1MSP
2017-07-28 13:13:46.177 UTC [common/config] validateMSP -> DEBU 6dc Setting up MSP for org OrdererOrg
2017-07-28 13:13:46.177 UTC [msp] NewBccspMsp -> DEBU 6dd Creating BCCSP-based MSP instance
2017-07-28 13:13:46.177 UTC [msp] Setup -> DEBU 6de Setting up MSP instance OrdererMSP
2017-07-28 13:13:46.179 UTC [msp/identity] newIdentity -> DEBU 6df Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:46.210 UTC [msp/identity] newIdentity -> DEBU 6e0 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:46.242 UTC [msp/identity] newIdentity -> DEBU 6e1 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:46.309 UTC [orderer/common/deliver] deliverBlocks -> DEBU 6e2 Rejecting deliver because channel mychannel not found
2017-07-28 13:13:46.310 UTC [orderer/common/deliver] Handle -> DEBU 6e3 Waiting for new SeekInfo
2017-07-28 13:13:46.310 UTC [orderer/common/deliver] Handle -> DEBU 6e4 Attempting to read seek info message
2017-07-28 13:13:46.311 UTC [orderer/common/deliver] Handle -> WARN 6e5 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:46.312 UTC [orderer/server/main] func1 -> DEBU 6e6 Closing Deliver stream
2017-07-28 13:13:46.335 UTC [msp] Validate -> DEBU 6e7 MSP OrdererMSP validating identity
2017-07-28 13:13:46.368 UTC [common/config] Validate -> DEBU 6e8 Anchor peers for org Org2MSP are 
2017-07-28 13:13:46.369 UTC [common/config] validateMSP -> DEBU 6e9 Setting up MSP for org Org2MSP
2017-07-28 13:13:46.369 UTC [msp] NewBccspMsp -> DEBU 6ea Creating BCCSP-based MSP instance
2017-07-28 13:13:46.369 UTC [msp] Setup -> DEBU 6eb Setting up MSP instance Org2MSP
2017-07-28 13:13:46.371 UTC [msp/identity] newIdentity -> DEBU 6ec Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:46.404 UTC [msp/identity] newIdentity -> DEBU 6ed Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:46.436 UTC [msp/identity] newIdentity -> DEBU 6ee Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:46.455 UTC [orderer/server/main] Deliver -> DEBU 6ef Starting new Deliver handler
2017-07-28 13:13:46.456 UTC [orderer/common/deliver] Handle -> DEBU 6f0 Starting new deliver loop
2017-07-28 13:13:46.456 UTC [orderer/common/deliver] Handle -> DEBU 6f1 Attempting to read seek info message
2017-07-28 13:13:46.533 UTC [msp] Validate -> DEBU 6f2 MSP Org2MSP validating identity
2017-07-28 13:13:46.564 UTC [common/config] Validate -> DEBU 6f3 Anchor peers for org Org1MSP are 
2017-07-28 13:13:46.564 UTC [common/config] validateMSP -> DEBU 6f4 Setting up MSP for org Org1MSP
2017-07-28 13:13:46.565 UTC [msp] NewBccspMsp -> DEBU 6f5 Creating BCCSP-based MSP instance
2017-07-28 13:13:46.565 UTC [msp] Setup -> DEBU 6f6 Setting up MSP instance Org1MSP
2017-07-28 13:13:46.567 UTC [msp/identity] newIdentity -> DEBU 6f7 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:46.599 UTC [msp/identity] newIdentity -> DEBU 6f8 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:46.631 UTC [msp/identity] newIdentity -> DEBU 6f9 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:46.666 UTC [orderer/common/deliver] deliverBlocks -> DEBU 6fa Rejecting deliver because channel mychannel not found
2017-07-28 13:13:46.671 UTC [orderer/common/deliver] Handle -> DEBU 6fb Waiting for new SeekInfo
2017-07-28 13:13:46.671 UTC [orderer/common/deliver] Handle -> DEBU 6fc Attempting to read seek info message
2017-07-28 13:13:46.672 UTC [orderer/common/deliver] Handle -> WARN 6fd Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:46.673 UTC [orderer/server/main] func1 -> DEBU 6fe Closing Deliver stream
2017-07-28 13:13:46.729 UTC [msp] Validate -> DEBU 6ff MSP Org1MSP validating identity
2017-07-28 13:13:46.761 UTC [msp] Setup -> DEBU 700 Setting up the MSP manager (3 msps)
2017-07-28 13:13:46.761 UTC [msp] Setup -> DEBU 701 MSP manager setup complete, setup 3 msps
2017-07-28 13:13:46.761 UTC [policies] GetPolicy -> DEBU 702 Returning policy Writers for evaluation
2017-07-28 13:13:46.761 UTC [policies] CommitProposals -> DEBU 703 In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:46.762 UTC [policies] GetPolicy -> DEBU 704 Returning policy Admins for evaluation
2017-07-28 13:13:46.762 UTC [policies] CommitProposals -> DEBU 705 In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:46.762 UTC [policies] GetPolicy -> DEBU 706 Returning policy Readers for evaluation
2017-07-28 13:13:46.762 UTC [policies] CommitProposals -> DEBU 707 In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:46.763 UTC [policies] GetPolicy -> DEBU 708 Returning policy Admins for evaluation
2017-07-28 13:13:46.763 UTC [policies] GetPolicy -> DEBU 709 Returning policy Writers for evaluation
2017-07-28 13:13:46.763 UTC [policies] GetPolicy -> DEBU 70a Returning policy Readers for evaluation
2017-07-28 13:13:46.763 UTC [policies] GetPolicy -> DEBU 70b Returning policy Writers for evaluation
2017-07-28 13:13:46.764 UTC [policies] GetPolicy -> DEBU 70c Returning policy Writers for evaluation
2017-07-28 13:13:46.764 UTC [policies] CommitProposals -> DEBU 70d In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:46.764 UTC [policies] GetPolicy -> DEBU 70e Returning policy Admins for evaluation
2017-07-28 13:13:46.764 UTC [policies] CommitProposals -> DEBU 70f In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:46.764 UTC [policies] GetPolicy -> DEBU 710 Returning policy Readers for evaluation
2017-07-28 13:13:46.765 UTC [policies] CommitProposals -> DEBU 711 In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:46.765 UTC [policies] GetPolicy -> DEBU 712 Returning policy Admins for evaluation
2017-07-28 13:13:46.765 UTC [policies] CommitProposals -> DEBU 713 In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:46.765 UTC [policies] GetPolicy -> DEBU 714 Returning policy Readers for evaluation
2017-07-28 13:13:46.766 UTC [policies] CommitProposals -> DEBU 715 In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:46.766 UTC [policies] GetPolicy -> DEBU 716 Returning policy Writers for evaluation
2017-07-28 13:13:46.766 UTC [policies] CommitProposals -> DEBU 717 In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:46.766 UTC [policies] GetPolicy -> DEBU 718 Returning policy Readers for evaluation
2017-07-28 13:13:46.767 UTC [policies] GetPolicy -> DEBU 719 Returning policy Readers for evaluation
2017-07-28 13:13:46.767 UTC [policies] GetPolicy -> DEBU 71a Returning policy Admins for evaluation
2017-07-28 13:13:46.767 UTC [policies] GetPolicy -> DEBU 71b Returning policy Admins for evaluation
2017-07-28 13:13:46.767 UTC [policies] GetPolicy -> DEBU 71c Returning policy Writers for evaluation
2017-07-28 13:13:46.767 UTC [policies] GetPolicy -> DEBU 71d Returning policy Writers for evaluation
2017-07-28 13:13:46.768 UTC [policies] GetPolicy -> DEBU 71e Returning policy Admins for evaluation
2017-07-28 13:13:46.768 UTC [policies] CommitProposals -> DEBU 71f In commit adding relative sub-policy Application/Admins to Channel
2017-07-28 13:13:46.768 UTC [policies] GetPolicy -> DEBU 720 Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:46.768 UTC [policies] CommitProposals -> DEBU 721 In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:46.769 UTC [policies] GetPolicy -> DEBU 722 Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:46.769 UTC [policies] CommitProposals -> DEBU 723 In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:46.769 UTC [policies] GetPolicy -> DEBU 724 Returning policy Readers for evaluation
2017-07-28 13:13:46.769 UTC [policies] CommitProposals -> DEBU 725 In commit adding relative sub-policy Application/Readers to Channel
2017-07-28 13:13:46.770 UTC [policies] GetPolicy -> DEBU 726 Returning policy Writers for evaluation
2017-07-28 13:13:46.770 UTC [policies] CommitProposals -> DEBU 727 In commit adding relative sub-policy Application/Writers to Channel
2017-07-28 13:13:46.770 UTC [policies] GetPolicy -> DEBU 728 Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:46.770 UTC [policies] CommitProposals -> DEBU 729 In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:46.770 UTC [policies] GetPolicy -> DEBU 72a Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:46.771 UTC [policies] CommitProposals -> DEBU 72b In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:46.771 UTC [policies] GetPolicy -> DEBU 72c Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:46.771 UTC [policies] CommitProposals -> DEBU 72d In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:46.771 UTC [policies] GetPolicy -> DEBU 72e Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:46.772 UTC [policies] CommitProposals -> DEBU 72f In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:46.772 UTC [policies] GetPolicy -> DEBU 730 Returning policy Admins for evaluation
2017-07-28 13:13:46.772 UTC [policies] CommitProposals -> DEBU 731 In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:46.772 UTC [policies] GetPolicy -> DEBU 732 Returning policy BlockValidation for evaluation
2017-07-28 13:13:46.773 UTC [policies] CommitProposals -> DEBU 733 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:46.773 UTC [policies] GetPolicy -> DEBU 734 Returning policy Readers for evaluation
2017-07-28 13:13:46.773 UTC [policies] CommitProposals -> DEBU 735 In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:46.773 UTC [policies] GetPolicy -> DEBU 736 Returning policy Writers for evaluation
2017-07-28 13:13:46.773 UTC [policies] CommitProposals -> DEBU 737 In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:46.774 UTC [policies] GetPolicy -> DEBU 738 Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:46.774 UTC [policies] CommitProposals -> DEBU 739 In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:46.774 UTC [policies] GetPolicy -> DEBU 73a Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:46.774 UTC [policies] CommitProposals -> DEBU 73b In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:46.775 UTC [policies] GetPolicy -> DEBU 73c Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:46.775 UTC [policies] CommitProposals -> DEBU 73d In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:46.775 UTC [policies] GetPolicy -> DEBU 73e Returning policy Admins for evaluation
2017-07-28 13:13:46.775 UTC [policies] GetPolicy -> DEBU 73f Returning policy Admins for evaluation
2017-07-28 13:13:46.776 UTC [policies] GetPolicy -> DEBU 740 Returning policy Readers for evaluation
2017-07-28 13:13:46.776 UTC [policies] GetPolicy -> DEBU 741 Returning policy Readers for evaluation
2017-07-28 13:13:46.776 UTC [policies] GetPolicy -> DEBU 742 Returning policy Writers for evaluation
2017-07-28 13:13:46.776 UTC [policies] GetPolicy -> DEBU 743 Returning policy Writers for evaluation
2017-07-28 13:13:46.776 UTC [policies] GetPolicy -> DEBU 744 Returning policy Readers for evaluation
2017-07-28 13:13:46.777 UTC [policies] CommitProposals -> DEBU 745 As expected, current configuration has policy '/Channel/Readers'
2017-07-28 13:13:46.777 UTC [policies] GetPolicy -> DEBU 746 Returning policy Writers for evaluation
2017-07-28 13:13:46.777 UTC [policies] CommitProposals -> DEBU 747 As expected, current configuration has policy '/Channel/Writers'
2017-07-28 13:13:46.777 UTC [policies] GetPolicy -> DEBU 748 Returning policy Application/Readers for evaluation
2017-07-28 13:13:46.778 UTC [policies] CommitProposals -> DEBU 749 As expected, current configuration has policy '/Channel/Application/Readers'
2017-07-28 13:13:46.778 UTC [policies] GetPolicy -> DEBU 74a Returning policy Application/Writers for evaluation
2017-07-28 13:13:46.778 UTC [policies] CommitProposals -> DEBU 74b As expected, current configuration has policy '/Channel/Application/Writers'
2017-07-28 13:13:46.778 UTC [policies] GetPolicy -> DEBU 74c Returning policy Application/Admins for evaluation
2017-07-28 13:13:46.779 UTC [policies] CommitProposals -> DEBU 74d As expected, current configuration has policy '/Channel/Application/Admins'
2017-07-28 13:13:46.779 UTC [policies] GetPolicy -> DEBU 74e Returning policy Orderer/BlockValidation for evaluation
2017-07-28 13:13:46.779 UTC [policies] CommitProposals -> DEBU 74f As expected, current configuration has policy '/Channel/Orderer/BlockValidation'
2017-07-28 13:13:46.789 UTC [fsblkstorage] newBlockfileStream -> DEBU 750 newBlockfileStream(): filePath=[/var/hyperledger/production/orderer/chains/testchainid/blockfile_000000], startOffset=[0]
2017-07-28 13:13:46.789 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 751 Remaining bytes=[9057], Going to peek [8] bytes
2017-07-28 13:13:46.790 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 752 Returning blockbytes - length=[9055], placementInfo={fileNum=[0], startOffset=[0], bytesOffset=[2]}
2017-07-28 13:13:46.790 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU 753 blockbytes [9055] read from file [0]
2017-07-28 13:13:46.792 UTC [policies] GetPolicy -> DEBU 754 Returning policy Writers for evaluation
2017-07-28 13:13:46.792 UTC [cauthdsl] func1 -> DEBU 755 0x57075d98 gate 1501247626792273966 evaluation starts
2017-07-28 13:13:46.792 UTC [cauthdsl] func2 -> DEBU 756 0x57075d98 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:46.792 UTC [cauthdsl] func2 -> DEBU 757 0x57075d98 processing identity 0 with bytes of 0a0a4f7264657265724d535012eb052d2d2d2d2d424547494e202d2d2d2d2d0a4d494943437a434341624b674177494241674951534e6d526a35683146535063506f45654a777347796a414b42676771686b6a4f50515144416a42704d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a45554d4249474131554543684d4c5a586868625842735a53356a62323078467a415642674e5642414d54446d4e684c6d5634595731770a62475575593239744d423458445445334d4463794e7a49784d7a6b794e566f58445449334d4463794e5449784d7a6b794e566f775744454c4d416b47413155450a42684d4356564d78457a415242674e5642416754436b4e6862476c6d62334a7561574578466a415542674e564241635444564e6862694247636d467559326c7a0a593238784844416142674e5642414d54453239795a4756795a5849755a586868625842735a53356a623230775754415442676371686b6a4f50514942426767710a686b6a4f50514d4242774e434141535a3669464c6362476d345772464e543952417a784d673279655642654a3871427231312b706c694661454c6d3445465a770a512b676b5038715a6e2f6e346e6364673867726d727559417071776359743476334479556f303077537a414f42674e56485138424166384542414d43423441770a44415944565230544151482f424149774144417242674e5648534d454a4441696743446f4c4d55323879316937466374424f4c66424d736a534464476c4162500a515537706d7551734568697a7744414b42676771686b6a4f5051514441674e48414442454169423832787936492f5432493153333557316b6e4e577a4d3050590a494d4843656c5264764d467146727a4577414967466f7570495658663879696867634d4567516e502b2f4f6f53376f5a4a5130356d5a7335494f53654857413d0a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:46.794 UTC [msp/identity] newIdentity -> DEBU 758 Creating identity instance for ID &{OrdererMSP 373d501a27deab7aff1c08731256ff6799484e1ae836cb098108701e56368642}
2017-07-28 13:13:46.810 UTC [orderer/server/main] Deliver -> DEBU 759 Starting new Deliver handler
2017-07-28 13:13:46.810 UTC [orderer/common/deliver] Handle -> DEBU 75a Starting new deliver loop
2017-07-28 13:13:46.810 UTC [orderer/common/deliver] Handle -> DEBU 75b Attempting to read seek info message
2017-07-28 13:13:46.826 UTC [msp] SatisfiesPrincipal -> DEBU 75c Checking if identity satisfies MEMBER role for OrdererMSP
2017-07-28 13:13:46.826 UTC [msp] Validate -> DEBU 75d MSP OrdererMSP validating identity
2017-07-28 13:13:46.857 UTC [cauthdsl] func2 -> DEBU 75e 0x57075d98 principal matched by identity 0
2017-07-28 13:13:46.858 UTC [msp/identity] Verify -> DEBU 75f Verify: digest = 00000000  a9 45 ac c3 ff b4 62 e2  84 f8 94 ca 84 41 1e 17  |.E....b......A..|
00000010  96 75 dd 8f 8a e8 2d 34  41 13 3f 3d 7a 43 e6 0d  |.u....-4A.?=zC..|
2017-07-28 13:13:46.858 UTC [msp/identity] Verify -> DEBU 760 Verify: sig = 00000000  30 45 02 21 00 ff b5 db  cb 79 d0 00 61 d6 d7 e8  |0E.!.....y..a...|
00000010  4d 29 e1 89 c1 cf 66 12  50 d3 74 39 92 78 91 60  |M)....f.P.t9.x.`|
00000020  7e e2 8e e8 8f 02 20 7c  cf 42 d1 69 13 f1 0f 64  |~..... |.B.i...d|
00000030  ec 52 cd 25 cd 76 36 cf  58 82 f7 c4 90 38 0c 70  |.R.%.v6.X....8.p|
00000040  32 21 78 58 fc b1 e0                              |2!xX...|
2017-07-28 13:13:46.889 UTC [cauthdsl] func2 -> DEBU 761 0x57075d98 principal evaluation succeeds for identity 0
2017-07-28 13:13:46.889 UTC [cauthdsl] func1 -> DEBU 762 0x57075d98 gate 1501247626792273966 evaluation succeeds
2017-07-28 13:13:46.890 UTC [orderer/common/sigfilter] Apply -> DEBU 763 Forwarding validly signed message for policy &{%!s(*common.ImplicitMetaPolicy=&{Writers 0}) %!s(int=1) [Writers %!s(*policies.implicitMetaPolicy=&{0x571a5cb0 1 [0x5715d158]})]}
2017-07-28 13:13:46.891 UTC [msp] GetLocalMSP -> DEBU 764 Returning existing local MSP
2017-07-28 13:13:46.891 UTC [msp] GetDefaultSigningIdentity -> DEBU 765 Obtaining default signing identity
2017-07-28 13:13:46.892 UTC [msp] GetLocalMSP -> DEBU 766 Returning existing local MSP
2017-07-28 13:13:46.892 UTC [msp] GetDefaultSigningIdentity -> DEBU 767 Obtaining default signing identity
2017-07-28 13:13:46.893 UTC [msp/identity] Sign -> DEBU 768 Sign: plaintext: 0AB1060A1508011A06088AF1ECCB0522...07577269746572731A0641646D696E73 
2017-07-28 13:13:46.893 UTC [msp/identity] Sign -> DEBU 769 Sign: digest: E8E6FF4AD7BE18478EE5C7D205557CDA90B1258FF0EF44F685C81A45EBB02E74 
2017-07-28 13:13:46.903 UTC [common/config] NewStandardValues -> DEBU 76a Initializing protos for *config.ChannelProtos
2017-07-28 13:13:46.903 UTC [common/config] initializeProtosStruct -> DEBU 76b Processing field: HashingAlgorithm
2017-07-28 13:13:46.903 UTC [common/config] initializeProtosStruct -> DEBU 76c Processing field: BlockDataHashingStructure
2017-07-28 13:13:46.903 UTC [common/config] initializeProtosStruct -> DEBU 76d Processing field: OrdererAddresses
2017-07-28 13:13:46.903 UTC [common/config] initializeProtosStruct -> DEBU 76e Processing field: Consortium
2017-07-28 13:13:46.904 UTC [common/configtx] addToMap -> DEBU 76f Adding to config map: [Groups] /Channel
2017-07-28 13:13:46.905 UTC [common/configtx] addToMap -> DEBU 770 Adding to config map: [Groups] /Channel/Orderer
2017-07-28 13:13:46.905 UTC [common/configtx] addToMap -> DEBU 771 Adding to config map: [Groups] /Channel/Orderer/OrdererOrg
2017-07-28 13:13:46.905 UTC [common/configtx] addToMap -> DEBU 772 Adding to config map: [Values] /Channel/Orderer/OrdererOrg/MSP
2017-07-28 13:13:46.906 UTC [common/configtx] addToMap -> DEBU 773 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Readers
2017-07-28 13:13:46.906 UTC [common/configtx] addToMap -> DEBU 774 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Writers
2017-07-28 13:13:46.906 UTC [common/configtx] addToMap -> DEBU 775 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Admins
2017-07-28 13:13:46.907 UTC [common/configtx] addToMap -> DEBU 776 Adding to config map: [Values] /Channel/Orderer/BatchTimeout
2017-07-28 13:13:46.907 UTC [common/configtx] addToMap -> DEBU 777 Adding to config map: [Values] /Channel/Orderer/ChannelRestrictions
2017-07-28 13:13:46.907 UTC [common/configtx] addToMap -> DEBU 778 Adding to config map: [Values] /Channel/Orderer/ConsensusType
2017-07-28 13:13:46.907 UTC [common/configtx] addToMap -> DEBU 779 Adding to config map: [Values] /Channel/Orderer/BatchSize
2017-07-28 13:13:46.908 UTC [common/configtx] addToMap -> DEBU 77a Adding to config map: [Policy] /Channel/Orderer/BlockValidation
2017-07-28 13:13:46.908 UTC [common/configtx] addToMap -> DEBU 77b Adding to config map: [Policy] /Channel/Orderer/Readers
2017-07-28 13:13:46.908 UTC [common/configtx] addToMap -> DEBU 77c Adding to config map: [Policy] /Channel/Orderer/Writers
2017-07-28 13:13:46.909 UTC [common/configtx] addToMap -> DEBU 77d Adding to config map: [Policy] /Channel/Orderer/Admins
2017-07-28 13:13:46.909 UTC [common/configtx] addToMap -> DEBU 77e Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:46.909 UTC [common/configtx] addToMap -> DEBU 77f Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:46.909 UTC [common/configtx] addToMap -> DEBU 780 Adding to config map: [Values] /Channel/Application/Org2MSP/MSP
2017-07-28 13:13:46.910 UTC [common/configtx] addToMap -> DEBU 781 Adding to config map: [Policy] /Channel/Application/Org2MSP/Admins
2017-07-28 13:13:46.910 UTC [common/configtx] addToMap -> DEBU 782 Adding to config map: [Policy] /Channel/Application/Org2MSP/Readers
2017-07-28 13:13:46.910 UTC [common/configtx] addToMap -> DEBU 783 Adding to config map: [Policy] /Channel/Application/Org2MSP/Writers
2017-07-28 13:13:46.911 UTC [common/configtx] addToMap -> DEBU 784 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:46.911 UTC [common/configtx] addToMap -> DEBU 785 Adding to config map: [Values] /Channel/Application/Org1MSP/MSP
2017-07-28 13:13:46.911 UTC [common/configtx] addToMap -> DEBU 786 Adding to config map: [Policy] /Channel/Application/Org1MSP/Writers
2017-07-28 13:13:46.912 UTC [common/configtx] addToMap -> DEBU 787 Adding to config map: [Policy] /Channel/Application/Org1MSP/Admins
2017-07-28 13:13:46.912 UTC [common/configtx] addToMap -> DEBU 788 Adding to config map: [Policy] /Channel/Application/Org1MSP/Readers
2017-07-28 13:13:46.912 UTC [common/configtx] addToMap -> DEBU 789 Adding to config map: [Policy] /Channel/Application/ChannelCreationPolicy
2017-07-28 13:13:46.912 UTC [common/configtx] addToMap -> DEBU 78a Adding to config map: [Values] /Channel/HashingAlgorithm
2017-07-28 13:13:46.913 UTC [common/configtx] addToMap -> DEBU 78b Adding to config map: [Values] /Channel/BlockDataHashingStructure
2017-07-28 13:13:46.913 UTC [common/configtx] addToMap -> DEBU 78c Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:46.913 UTC [common/configtx] addToMap -> DEBU 78d Adding to config map: [Values] /Channel/OrdererAddresses
2017-07-28 13:13:46.913 UTC [common/configtx] addToMap -> DEBU 78e Adding to config map: [Policy] /Channel/Admins
2017-07-28 13:13:46.914 UTC [common/configtx] addToMap -> DEBU 78f Adding to config map: [Policy] /Channel/Readers
2017-07-28 13:13:46.914 UTC [common/configtx] addToMap -> DEBU 790 Adding to config map: [Policy] /Channel/Writers
2017-07-28 13:13:46.914 UTC [common/configtx] processConfig -> DEBU 791 Beginning new config for channel mychannel
2017-07-28 13:13:46.914 UTC [common/config] NewStandardValues -> DEBU 792 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:46.915 UTC [common/config] initializeProtosStruct -> DEBU 793 Processing field: HashingAlgorithm
2017-07-28 13:13:46.915 UTC [common/config] initializeProtosStruct -> DEBU 794 Processing field: BlockDataHashingStructure
2017-07-28 13:13:46.915 UTC [common/config] initializeProtosStruct -> DEBU 795 Processing field: OrdererAddresses
2017-07-28 13:13:46.915 UTC [common/config] initializeProtosStruct -> DEBU 796 Processing field: Consortium
2017-07-28 13:13:46.916 UTC [policies] ProposePolicy -> DEBU 797 Proposed new policy Admins for Channel
2017-07-28 13:13:46.916 UTC [policies] ProposePolicy -> DEBU 798 Proposed new policy Readers for Channel
2017-07-28 13:13:46.916 UTC [policies] ProposePolicy -> DEBU 799 Proposed new policy Writers for Channel
2017-07-28 13:13:46.916 UTC [common/config] NewStandardValues -> DEBU 79a Initializing protos for *struct {}
2017-07-28 13:13:46.916 UTC [policies] ProposePolicy -> DEBU 79b Proposed new policy ChannelCreationPolicy for Application
2017-07-28 13:13:46.917 UTC [common/config] NewStandardValues -> DEBU 79c Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.917 UTC [common/config] initializeProtosStruct -> DEBU 79d Processing field: MSP
2017-07-28 13:13:46.917 UTC [common/config] NewStandardValues -> DEBU 79e Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:46.917 UTC [common/config] initializeProtosStruct -> DEBU 79f Processing field: AnchorPeers
2017-07-28 13:13:46.917 UTC [common/config] NewStandardValues -> DEBU 7a0 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.918 UTC [common/config] initializeProtosStruct -> DEBU 7a1 Processing field: MSP
2017-07-28 13:13:46.918 UTC [policies] ProposePolicy -> DEBU 7a2 Proposed new policy Admins for Org1MSP
2017-07-28 13:13:46.918 UTC [policies] ProposePolicy -> DEBU 7a3 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:46.918 UTC [policies] ProposePolicy -> DEBU 7a4 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:46.919 UTC [common/config] NewStandardValues -> DEBU 7a5 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.919 UTC [common/config] initializeProtosStruct -> DEBU 7a6 Processing field: MSP
2017-07-28 13:13:46.919 UTC [common/config] NewStandardValues -> DEBU 7a7 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:46.919 UTC [common/config] initializeProtosStruct -> DEBU 7a8 Processing field: AnchorPeers
2017-07-28 13:13:46.919 UTC [common/config] NewStandardValues -> DEBU 7a9 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.920 UTC [common/config] initializeProtosStruct -> DEBU 7aa Processing field: MSP
2017-07-28 13:13:46.920 UTC [policies] ProposePolicy -> DEBU 7ab Proposed new policy Admins for Org2MSP
2017-07-28 13:13:46.920 UTC [policies] ProposePolicy -> DEBU 7ac Proposed new policy Readers for Org2MSP
2017-07-28 13:13:46.920 UTC [policies] ProposePolicy -> DEBU 7ad Proposed new policy Writers for Org2MSP
2017-07-28 13:13:46.920 UTC [common/config] NewStandardValues -> DEBU 7ae Initializing protos for *config.OrdererProtos
2017-07-28 13:13:46.921 UTC [common/config] initializeProtosStruct -> DEBU 7af Processing field: ConsensusType
2017-07-28 13:13:46.921 UTC [common/config] initializeProtosStruct -> DEBU 7b0 Processing field: BatchSize
2017-07-28 13:13:46.921 UTC [common/config] initializeProtosStruct -> DEBU 7b1 Processing field: BatchTimeout
2017-07-28 13:13:46.921 UTC [common/config] initializeProtosStruct -> DEBU 7b2 Processing field: KafkaBrokers
2017-07-28 13:13:46.921 UTC [common/config] initializeProtosStruct -> DEBU 7b3 Processing field: ChannelRestrictions
2017-07-28 13:13:46.922 UTC [policies] ProposePolicy -> DEBU 7b4 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:46.922 UTC [policies] ProposePolicy -> DEBU 7b5 Proposed new policy Readers for Orderer
2017-07-28 13:13:46.922 UTC [policies] ProposePolicy -> DEBU 7b6 Proposed new policy Writers for Orderer
2017-07-28 13:13:46.922 UTC [policies] ProposePolicy -> DEBU 7b7 Proposed new policy Admins for Orderer
2017-07-28 13:13:46.923 UTC [common/config] NewStandardValues -> DEBU 7b8 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:46.923 UTC [common/config] initializeProtosStruct -> DEBU 7b9 Processing field: MSP
2017-07-28 13:13:46.923 UTC [policies] ProposePolicy -> DEBU 7ba Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:46.923 UTC [policies] ProposePolicy -> DEBU 7bb Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:46.924 UTC [policies] ProposePolicy -> DEBU 7bc Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:46.924 UTC [common/config] Validate -> DEBU 7bd Anchor peers for org Org1MSP are 
2017-07-28 13:13:46.924 UTC [common/config] validateMSP -> DEBU 7be Setting up MSP for org Org1MSP
2017-07-28 13:13:46.924 UTC [msp] NewBccspMsp -> DEBU 7bf Creating BCCSP-based MSP instance
2017-07-28 13:13:46.924 UTC [msp] Setup -> DEBU 7c0 Setting up MSP instance Org1MSP
2017-07-28 13:13:46.926 UTC [msp/identity] newIdentity -> DEBU 7c1 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:46.957 UTC [msp/identity] newIdentity -> DEBU 7c2 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:46.989 UTC [msp/identity] newIdentity -> DEBU 7c3 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:47.021 UTC [orderer/common/deliver] deliverBlocks -> DEBU 7c4 Rejecting deliver because channel mychannel not found
2017-07-28 13:13:47.022 UTC [orderer/common/deliver] Handle -> DEBU 7c5 Waiting for new SeekInfo
2017-07-28 13:13:47.022 UTC [orderer/common/deliver] Handle -> DEBU 7c6 Attempting to read seek info message
2017-07-28 13:13:47.024 UTC [orderer/common/deliver] Handle -> WARN 7c7 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:47.024 UTC [orderer/server/main] func1 -> DEBU 7c8 Closing Deliver stream
2017-07-28 13:13:47.083 UTC [msp] Validate -> DEBU 7c9 MSP Org1MSP validating identity
2017-07-28 13:13:47.114 UTC [common/config] Validate -> DEBU 7ca Anchor peers for org Org2MSP are 
2017-07-28 13:13:47.114 UTC [common/config] validateMSP -> DEBU 7cb Setting up MSP for org Org2MSP
2017-07-28 13:13:47.114 UTC [msp] NewBccspMsp -> DEBU 7cc Creating BCCSP-based MSP instance
2017-07-28 13:13:47.114 UTC [msp] Setup -> DEBU 7cd Setting up MSP instance Org2MSP
2017-07-28 13:13:47.116 UTC [msp/identity] newIdentity -> DEBU 7ce Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:47.148 UTC [msp/identity] newIdentity -> DEBU 7cf Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:47.171 UTC [orderer/server/main] Deliver -> DEBU 7d0 Starting new Deliver handler
2017-07-28 13:13:47.171 UTC [orderer/common/deliver] Handle -> DEBU 7d1 Starting new deliver loop
2017-07-28 13:13:47.172 UTC [orderer/common/deliver] Handle -> DEBU 7d2 Attempting to read seek info message
2017-07-28 13:13:47.180 UTC [msp/identity] newIdentity -> DEBU 7d3 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:47.273 UTC [msp] Validate -> DEBU 7d4 MSP Org2MSP validating identity
2017-07-28 13:13:47.305 UTC [common/config] validateMSP -> DEBU 7d5 Setting up MSP for org OrdererOrg
2017-07-28 13:13:47.305 UTC [msp] NewBccspMsp -> DEBU 7d6 Creating BCCSP-based MSP instance
2017-07-28 13:13:47.305 UTC [msp] Setup -> DEBU 7d7 Setting up MSP instance OrdererMSP
2017-07-28 13:13:47.307 UTC [msp/identity] newIdentity -> DEBU 7d8 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:47.338 UTC [msp/identity] newIdentity -> DEBU 7d9 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:47.370 UTC [msp/identity] newIdentity -> DEBU 7da Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:47.382 UTC [orderer/common/deliver] deliverBlocks -> DEBU 7db Rejecting deliver because channel mychannel not found
2017-07-28 13:13:47.383 UTC [orderer/common/deliver] Handle -> DEBU 7dc Waiting for new SeekInfo
2017-07-28 13:13:47.383 UTC [orderer/common/deliver] Handle -> DEBU 7dd Attempting to read seek info message
2017-07-28 13:13:47.384 UTC [orderer/common/deliver] Handle -> WARN 7de Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:47.384 UTC [orderer/server/main] func1 -> DEBU 7df Closing Deliver stream
2017-07-28 13:13:47.466 UTC [msp] Validate -> DEBU 7e0 MSP OrdererMSP validating identity
2017-07-28 13:13:47.497 UTC [msp] Setup -> DEBU 7e1 Setting up the MSP manager (3 msps)
2017-07-28 13:13:47.497 UTC [msp] Setup -> DEBU 7e2 MSP manager setup complete, setup 3 msps
2017-07-28 13:13:47.497 UTC [policies] GetPolicy -> DEBU 7e3 Returning policy Writers for evaluation
2017-07-28 13:13:47.498 UTC [policies] CommitProposals -> DEBU 7e4 In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:47.498 UTC [policies] GetPolicy -> DEBU 7e5 Returning policy Admins for evaluation
2017-07-28 13:13:47.498 UTC [policies] CommitProposals -> DEBU 7e6 In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:47.498 UTC [policies] GetPolicy -> DEBU 7e7 Returning policy Readers for evaluation
2017-07-28 13:13:47.498 UTC [policies] CommitProposals -> DEBU 7e8 In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:47.498 UTC [policies] GetPolicy -> DEBU 7e9 Returning policy Admins for evaluation
2017-07-28 13:13:47.498 UTC [policies] CommitProposals -> DEBU 7ea In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:47.498 UTC [policies] GetPolicy -> DEBU 7eb Returning policy Readers for evaluation
2017-07-28 13:13:47.498 UTC [policies] CommitProposals -> DEBU 7ec In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:47.499 UTC [policies] GetPolicy -> DEBU 7ed Returning policy Writers for evaluation
2017-07-28 13:13:47.499 UTC [policies] CommitProposals -> DEBU 7ee In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:47.499 UTC [policies] GetPolicy -> DEBU 7ef Returning policy Admins for evaluation
2017-07-28 13:13:47.499 UTC [policies] GetPolicy -> DEBU 7f0 Returning policy Admins for evaluation
2017-07-28 13:13:47.499 UTC [policies] GetPolicy -> DEBU 7f1 Returning policy Writers for evaluation
2017-07-28 13:13:47.499 UTC [policies] CommitProposals -> DEBU 7f2 In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:47.499 UTC [policies] GetPolicy -> DEBU 7f3 Returning policy Admins for evaluation
2017-07-28 13:13:47.499 UTC [policies] CommitProposals -> DEBU 7f4 In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:47.499 UTC [policies] GetPolicy -> DEBU 7f5 Returning policy Readers for evaluation
2017-07-28 13:13:47.499 UTC [policies] CommitProposals -> DEBU 7f6 In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:47.500 UTC [policies] GetPolicy -> DEBU 7f7 Returning policy Writers for evaluation
2017-07-28 13:13:47.500 UTC [policies] GetPolicy -> DEBU 7f8 Returning policy Readers for evaluation
2017-07-28 13:13:47.500 UTC [policies] GetPolicy -> DEBU 7f9 Returning policy Writers for evaluation
2017-07-28 13:13:47.500 UTC [policies] GetPolicy -> DEBU 7fa Returning policy Admins for evaluation
2017-07-28 13:13:47.500 UTC [policies] GetPolicy -> DEBU 7fb Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:47.500 UTC [policies] CommitProposals -> DEBU 7fc In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:47.500 UTC [policies] GetPolicy -> DEBU 7fd Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:47.500 UTC [policies] CommitProposals -> DEBU 7fe In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:47.500 UTC [policies] GetPolicy -> DEBU 7ff Returning policy BlockValidation for evaluation
2017-07-28 13:13:47.500 UTC [policies] CommitProposals -> DEBU 800 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:47.500 UTC [policies] GetPolicy -> DEBU 801 Returning policy Readers for evaluation
2017-07-28 13:13:47.501 UTC [policies] CommitProposals -> DEBU 802 In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:47.501 UTC [policies] GetPolicy -> DEBU 803 Returning policy Writers for evaluation
2017-07-28 13:13:47.501 UTC [policies] CommitProposals -> DEBU 804 In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:47.501 UTC [policies] GetPolicy -> DEBU 805 Returning policy Admins for evaluation
2017-07-28 13:13:47.501 UTC [policies] CommitProposals -> DEBU 806 In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:47.501 UTC [policies] GetPolicy -> DEBU 807 Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:47.501 UTC [policies] CommitProposals -> DEBU 808 In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:47.501 UTC [policies] GetPolicy -> DEBU 809 Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:47.501 UTC [policies] CommitProposals -> DEBU 80a In commit adding relative sub-policy Application/ChannelCreationPolicy to Channel
2017-07-28 13:13:47.501 UTC [policies] GetPolicy -> DEBU 80b Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:47.502 UTC [policies] CommitProposals -> DEBU 80c In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:47.502 UTC [policies] GetPolicy -> DEBU 80d Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:47.502 UTC [policies] CommitProposals -> DEBU 80e In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:47.502 UTC [policies] GetPolicy -> DEBU 80f Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:47.502 UTC [policies] CommitProposals -> DEBU 810 In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:47.502 UTC [policies] GetPolicy -> DEBU 811 Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:47.502 UTC [policies] CommitProposals -> DEBU 812 In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:47.502 UTC [policies] GetPolicy -> DEBU 813 Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:47.502 UTC [policies] CommitProposals -> DEBU 814 In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:47.502 UTC [policies] GetPolicy -> DEBU 815 Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:47.502 UTC [policies] CommitProposals -> DEBU 816 In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:47.503 UTC [policies] GetPolicy -> DEBU 817 Returning dummy reject all policy because Admins could not be found in /Application/Admins
2017-07-28 13:13:47.503 UTC [policies] GetPolicy -> DEBU 818 Returning policy Admins for evaluation
2017-07-28 13:13:47.503 UTC [policies] GetPolicy -> DEBU 819 Returning dummy reject all policy because Readers could not be found in /Application/Readers
2017-07-28 13:13:47.503 UTC [policies] GetPolicy -> DEBU 81a Returning policy Readers for evaluation
2017-07-28 13:13:47.503 UTC [policies] GetPolicy -> DEBU 81b Returning dummy reject all policy because Writers could not be found in /Application/Writers
2017-07-28 13:13:47.503 UTC [policies] GetPolicy -> DEBU 81c Returning policy Writers for evaluation
2017-07-28 13:13:47.508 UTC [common/configtx] addToMap -> DEBU 81d Adding to config map: [Groups] /Channel
2017-07-28 13:13:47.508 UTC [common/configtx] addToMap -> DEBU 81e Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:47.509 UTC [common/configtx] addToMap -> DEBU 81f Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:47.509 UTC [common/configtx] addToMap -> DEBU 820 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:47.509 UTC [common/configtx] addToMap -> DEBU 821 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:47.510 UTC [common/configtx] addToMap -> DEBU 822 Adding to config map: [Groups] /Channel
2017-07-28 13:13:47.510 UTC [common/configtx] addToMap -> DEBU 823 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:47.510 UTC [common/configtx] addToMap -> DEBU 824 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:47.510 UTC [common/configtx] addToMap -> DEBU 825 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:47.511 UTC [common/configtx] addToMap -> DEBU 826 Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:47.511 UTC [common/configtx] addToMap -> DEBU 827 Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:47.511 UTC [common/configtx] addToMap -> DEBU 828 Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:47.512 UTC [common/configtx] addToMap -> DEBU 829 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:47.514 UTC [policies] GetPolicy -> DEBU 82a Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:47.514 UTC [cauthdsl] func1 -> DEBU 82b 0x57090be0 gate 1501247627514634524 evaluation starts
2017-07-28 13:13:47.514 UTC [cauthdsl] func2 -> DEBU 82c 0x57090be0 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:47.514 UTC [cauthdsl] func2 -> DEBU 82d 0x57090be0 processing identity 0 with bytes of 0a074f7267314d535012fc052d2d2d2d2d424547494e202d2d2d2d2d0a4d4949434744434341622b674177494241674951644a72426f4375372b7a5972642f5062457749554954414b42676771686b6a4f50515144416a427a4d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a455a4d4263474131554543684d5162334a6e4d53356c654746746347786c4c6d4e76625445634d426f474131554541784d54593245750a62334a6e4d53356c654746746347786c4c6d4e7662544165467730784e7a41334d6a63794d544d354d6a5661467730794e7a41334d6a55794d544d354d6a56610a4d467378437a414a42674e5642415954416c56544d524d77455159445651514945777044595778705a6d3979626d6c684d5259774641594456515148457731540a59573467526e4a68626d4e7063324e764d523877485159445651514444425a425a473170626b4276636d63784c6d56345957317762475575593239744d466b770a457759484b6f5a497a6a3043415159494b6f5a497a6a3044415163445167414572344244642b326e675345546c547042682b33736630696c4a36584a677372300a6c4241725643526f424448674d754378663359556c6834745734624a476b4b4878654b46574c346a5157676c4c47454930574d5654714e4e4d457377446759440a565230504151482f42415144416765414d41774741315564457745422f7751434d4141774b7759445652306a42435177496f41676932646d787565744c5132380a5a345431556d697a506e562f395546644d3448736170354f754561552f685977436759494b6f5a497a6a3045417749445277417752414967487864537150576f0a657442454c744f55664a696b4a63704150634b4e7576344b52595170352f43553253384349426d5570344a63483875747a6669572f4f7941324e52696c2b68570a6c757275696c56353850484f384e72680a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:47.517 UTC [msp/identity] newIdentity -> DEBU 82e Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:47.532 UTC [orderer/server/main] Deliver -> DEBU 82f Starting new Deliver handler
2017-07-28 13:13:47.533 UTC [orderer/common/deliver] Handle -> DEBU 830 Starting new deliver loop
2017-07-28 13:13:47.533 UTC [orderer/common/deliver] Handle -> DEBU 831 Attempting to read seek info message
2017-07-28 13:13:47.552 UTC [msp] SatisfiesPrincipal -> DEBU 832 Checking if identity satisfies ADMIN role for Org1MSP
2017-07-28 13:13:47.552 UTC [cauthdsl] func2 -> DEBU 833 0x57090be0 principal matched by identity 0
2017-07-28 13:13:47.552 UTC [msp/identity] Verify -> DEBU 834 Verify: digest = 00000000  b5 c0 59 46 ff b6 b5 54  4d 7b fd 8e 62 da 01 02  |..YF...TM{..b...|
00000010  75 e2 9f ec 0f 1b fe f8  bb 22 99 86 d6 1c ea 3a  |u........".....:|
2017-07-28 13:13:47.552 UTC [msp/identity] Verify -> DEBU 835 Verify: sig = 00000000  30 45 02 21 00 f4 fd 95  61 eb 08 39 ca 93 10 e5  |0E.!....a..9....|
00000010  6e d1 37 50 7f 6b 75 bf  2d a9 7a ed 5b a6 67 7d  |n.7P.ku.-.z.[.g}|
00000020  4c 7b 76 8a df 02 20 0c  ba 5d 41 2f 09 57 a9 37  |L{v... ..]A/.W.7|
00000030  de c6 8e 92 42 d9 d8 3c  f5 de 20 09 67 81 45 17  |....B..<.. .g.E.|
00000040  04 a6 1c 36 9a a9 1f                              |...6...|
2017-07-28 13:13:47.584 UTC [cauthdsl] func2 -> DEBU 836 0x57090be0 principal evaluation succeeds for identity 0
2017-07-28 13:13:47.584 UTC [cauthdsl] func1 -> DEBU 837 0x57090be0 gate 1501247627514634524 evaluation succeeds
2017-07-28 13:13:47.585 UTC [common/configtx] processConfig -> DEBU 838 Beginning new config for channel mychannel
2017-07-28 13:13:47.585 UTC [common/config] NewStandardValues -> DEBU 839 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:47.585 UTC [common/config] initializeProtosStruct -> DEBU 83a Processing field: HashingAlgorithm
2017-07-28 13:13:47.585 UTC [common/config] initializeProtosStruct -> DEBU 83b Processing field: BlockDataHashingStructure
2017-07-28 13:13:47.585 UTC [common/config] initializeProtosStruct -> DEBU 83c Processing field: OrdererAddresses
2017-07-28 13:13:47.586 UTC [common/config] initializeProtosStruct -> DEBU 83d Processing field: Consortium
2017-07-28 13:13:47.586 UTC [policies] ProposePolicy -> DEBU 83e Proposed new policy Admins for Channel
2017-07-28 13:13:47.586 UTC [policies] ProposePolicy -> DEBU 83f Proposed new policy Readers for Channel
2017-07-28 13:13:47.586 UTC [policies] ProposePolicy -> DEBU 840 Proposed new policy Writers for Channel
2017-07-28 13:13:47.586 UTC [common/config] NewStandardValues -> DEBU 841 Initializing protos for *config.OrdererProtos
2017-07-28 13:13:47.586 UTC [common/config] initializeProtosStruct -> DEBU 842 Processing field: ConsensusType
2017-07-28 13:13:47.586 UTC [common/config] initializeProtosStruct -> DEBU 843 Processing field: BatchSize
2017-07-28 13:13:47.587 UTC [common/config] initializeProtosStruct -> DEBU 844 Processing field: BatchTimeout
2017-07-28 13:13:47.587 UTC [common/config] initializeProtosStruct -> DEBU 845 Processing field: KafkaBrokers
2017-07-28 13:13:47.587 UTC [common/config] initializeProtosStruct -> DEBU 846 Processing field: ChannelRestrictions
2017-07-28 13:13:47.587 UTC [policies] ProposePolicy -> DEBU 847 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:47.587 UTC [policies] ProposePolicy -> DEBU 848 Proposed new policy Readers for Orderer
2017-07-28 13:13:47.587 UTC [policies] ProposePolicy -> DEBU 849 Proposed new policy Writers for Orderer
2017-07-28 13:13:47.587 UTC [policies] ProposePolicy -> DEBU 84a Proposed new policy Admins for Orderer
2017-07-28 13:13:47.588 UTC [common/config] NewStandardValues -> DEBU 84b Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:47.588 UTC [common/config] initializeProtosStruct -> DEBU 84c Processing field: MSP
2017-07-28 13:13:47.588 UTC [policies] ProposePolicy -> DEBU 84d Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:47.588 UTC [policies] ProposePolicy -> DEBU 84e Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:47.588 UTC [policies] ProposePolicy -> DEBU 84f Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:47.588 UTC [common/config] NewStandardValues -> DEBU 850 Initializing protos for *struct {}
2017-07-28 13:13:47.589 UTC [policies] ProposePolicy -> DEBU 851 Proposed new policy Readers for Application
2017-07-28 13:13:47.589 UTC [policies] ProposePolicy -> DEBU 852 Proposed new policy Admins for Application
2017-07-28 13:13:47.589 UTC [policies] ProposePolicy -> DEBU 853 Proposed new policy Writers for Application
2017-07-28 13:13:47.589 UTC [common/config] NewStandardValues -> DEBU 854 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:47.589 UTC [common/config] initializeProtosStruct -> DEBU 855 Processing field: MSP
2017-07-28 13:13:47.589 UTC [common/config] NewStandardValues -> DEBU 856 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:47.589 UTC [common/config] initializeProtosStruct -> DEBU 857 Processing field: AnchorPeers
2017-07-28 13:13:47.589 UTC [common/config] NewStandardValues -> DEBU 858 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:47.589 UTC [common/config] initializeProtosStruct -> DEBU 859 Processing field: MSP
2017-07-28 13:13:47.590 UTC [policies] ProposePolicy -> DEBU 85a Proposed new policy Admins for Org1MSP
2017-07-28 13:13:47.590 UTC [policies] ProposePolicy -> DEBU 85b Proposed new policy Readers for Org1MSP
2017-07-28 13:13:47.590 UTC [policies] ProposePolicy -> DEBU 85c Proposed new policy Writers for Org1MSP
2017-07-28 13:13:47.590 UTC [common/config] NewStandardValues -> DEBU 85d Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:47.590 UTC [common/config] initializeProtosStruct -> DEBU 85e Processing field: MSP
2017-07-28 13:13:47.590 UTC [common/config] NewStandardValues -> DEBU 85f Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:47.590 UTC [common/config] initializeProtosStruct -> DEBU 860 Processing field: AnchorPeers
2017-07-28 13:13:47.590 UTC [common/config] NewStandardValues -> DEBU 861 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:47.590 UTC [common/config] initializeProtosStruct -> DEBU 862 Processing field: MSP
2017-07-28 13:13:47.591 UTC [policies] ProposePolicy -> DEBU 863 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:47.591 UTC [policies] ProposePolicy -> DEBU 864 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:47.591 UTC [policies] ProposePolicy -> DEBU 865 Proposed new policy Writers for Org2MSP
2017-07-28 13:13:47.591 UTC [common/config] validateMSP -> DEBU 866 Setting up MSP for org OrdererOrg
2017-07-28 13:13:47.591 UTC [msp] NewBccspMsp -> DEBU 867 Creating BCCSP-based MSP instance
2017-07-28 13:13:47.591 UTC [msp] Setup -> DEBU 868 Setting up MSP instance OrdererMSP
2017-07-28 13:13:47.593 UTC [msp/identity] newIdentity -> DEBU 869 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:47.624 UTC [msp/identity] newIdentity -> DEBU 86a Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:47.657 UTC [msp/identity] newIdentity -> DEBU 86b Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:47.743 UTC [orderer/common/deliver] deliverBlocks -> DEBU 86c Rejecting deliver because channel mychannel not found
2017-07-28 13:13:47.745 UTC [orderer/common/deliver] Handle -> DEBU 86d Waiting for new SeekInfo
2017-07-28 13:13:47.745 UTC [orderer/common/deliver] Handle -> DEBU 86e Attempting to read seek info message
2017-07-28 13:13:47.746 UTC [orderer/common/deliver] Handle -> WARN 86f Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:47.747 UTC [orderer/server/main] func1 -> DEBU 870 Closing Deliver stream
2017-07-28 13:13:47.759 UTC [msp] Validate -> DEBU 871 MSP OrdererMSP validating identity
2017-07-28 13:13:47.790 UTC [common/config] Validate -> DEBU 872 Anchor peers for org Org1MSP are 
2017-07-28 13:13:47.790 UTC [common/config] validateMSP -> DEBU 873 Setting up MSP for org Org1MSP
2017-07-28 13:13:47.790 UTC [msp] NewBccspMsp -> DEBU 874 Creating BCCSP-based MSP instance
2017-07-28 13:13:47.790 UTC [msp] Setup -> DEBU 875 Setting up MSP instance Org1MSP
2017-07-28 13:13:47.792 UTC [msp/identity] newIdentity -> DEBU 876 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:47.824 UTC [msp/identity] newIdentity -> DEBU 877 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:47.856 UTC [msp/identity] newIdentity -> DEBU 878 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:47.887 UTC [orderer/server/main] Deliver -> DEBU 879 Starting new Deliver handler
2017-07-28 13:13:47.887 UTC [orderer/common/deliver] Handle -> DEBU 87a Starting new deliver loop
2017-07-28 13:13:47.887 UTC [orderer/common/deliver] Handle -> DEBU 87b Attempting to read seek info message
2017-07-28 13:13:47.951 UTC [msp] Validate -> DEBU 87c MSP Org1MSP validating identity
2017-07-28 13:13:47.982 UTC [common/config] Validate -> DEBU 87d Anchor peers for org Org2MSP are 
2017-07-28 13:13:47.982 UTC [common/config] validateMSP -> DEBU 87e Setting up MSP for org Org2MSP
2017-07-28 13:13:47.982 UTC [msp] NewBccspMsp -> DEBU 87f Creating BCCSP-based MSP instance
2017-07-28 13:13:47.982 UTC [msp] Setup -> DEBU 880 Setting up MSP instance Org2MSP
2017-07-28 13:13:47.984 UTC [msp/identity] newIdentity -> DEBU 881 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:48.017 UTC [msp/identity] newIdentity -> DEBU 882 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:48.049 UTC [msp/identity] newIdentity -> DEBU 883 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:48.100 UTC [orderer/common/deliver] deliverBlocks -> DEBU 884 Rejecting deliver because channel mychannel not found
2017-07-28 13:13:48.102 UTC [orderer/common/deliver] Handle -> DEBU 885 Waiting for new SeekInfo
2017-07-28 13:13:48.103 UTC [orderer/common/deliver] Handle -> DEBU 886 Attempting to read seek info message
2017-07-28 13:13:48.104 UTC [orderer/common/deliver] Handle -> WARN 887 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:48.105 UTC [orderer/server/main] func1 -> DEBU 888 Closing Deliver stream
2017-07-28 13:13:48.145 UTC [msp] Validate -> DEBU 889 MSP Org2MSP validating identity
2017-07-28 13:13:48.176 UTC [msp] Setup -> DEBU 88a Setting up the MSP manager (3 msps)
2017-07-28 13:13:48.176 UTC [msp] Setup -> DEBU 88b MSP manager setup complete, setup 3 msps
2017-07-28 13:13:48.177 UTC [common/configtx] addToMap -> DEBU 88c Adding to config map: [Groups] /Channel
2017-07-28 13:13:48.177 UTC [common/configtx] addToMap -> DEBU 88d Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:48.177 UTC [common/configtx] addToMap -> DEBU 88e Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:48.178 UTC [common/configtx] addToMap -> DEBU 88f Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:48.178 UTC [common/configtx] addToMap -> DEBU 890 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:48.178 UTC [common/configtx] addToMap -> DEBU 891 Adding to config map: [Groups] /Channel
2017-07-28 13:13:48.178 UTC [common/configtx] addToMap -> DEBU 892 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:48.178 UTC [common/configtx] addToMap -> DEBU 893 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:48.178 UTC [common/configtx] addToMap -> DEBU 894 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:48.179 UTC [common/configtx] addToMap -> DEBU 895 Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:48.179 UTC [common/configtx] addToMap -> DEBU 896 Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:48.179 UTC [common/configtx] addToMap -> DEBU 897 Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:48.179 UTC [common/configtx] addToMap -> DEBU 898 Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:48.179 UTC [policies] GetPolicy -> DEBU 899 Returning policy ChannelCreationPolicy for evaluation
2017-07-28 13:13:48.179 UTC [cauthdsl] func1 -> DEBU 89a 0x57958370 gate 1501247628179914041 evaluation starts
2017-07-28 13:13:48.180 UTC [cauthdsl] func2 -> DEBU 89b 0x57958370 signed by 0 principal evaluation starts (used [false])
2017-07-28 13:13:48.180 UTC [cauthdsl] func2 -> DEBU 89c 0x57958370 processing identity 0 with bytes of 0a074f7267314d535012fc052d2d2d2d2d424547494e202d2d2d2d2d0a4d4949434744434341622b674177494241674951644a72426f4375372b7a5972642f5062457749554954414b42676771686b6a4f50515144416a427a4d5173770a435159445651514745774a56557a45544d4245474131554543424d4b5132467361575a76636d3570595445574d4251474131554542784d4e5532467549455a790a5957356a61584e6a627a455a4d4263474131554543684d5162334a6e4d53356c654746746347786c4c6d4e76625445634d426f474131554541784d54593245750a62334a6e4d53356c654746746347786c4c6d4e7662544165467730784e7a41334d6a63794d544d354d6a5661467730794e7a41334d6a55794d544d354d6a56610a4d467378437a414a42674e5642415954416c56544d524d77455159445651514945777044595778705a6d3979626d6c684d5259774641594456515148457731540a59573467526e4a68626d4e7063324e764d523877485159445651514444425a425a473170626b4276636d63784c6d56345957317762475575593239744d466b770a457759484b6f5a497a6a3043415159494b6f5a497a6a3044415163445167414572344244642b326e675345546c547042682b33736630696c4a36584a677372300a6c4241725643526f424448674d754378663359556c6834745734624a476b4b4878654b46574c346a5157676c4c47454930574d5654714e4e4d457377446759440a565230504151482f42415144416765414d41774741315564457745422f7751434d4141774b7759445652306a42435177496f41676932646d787565744c5132380a5a345431556d697a506e562f395546644d3448736170354f754561552f685977436759494b6f5a497a6a3045417749445277417752414967487864537150576f0a657442454c744f55664a696b4a63704150634b4e7576344b52595170352f43553253384349426d5570344a63483875747a6669572f4f7941324e52696c2b68570a6c757275696c56353850484f384e72680a2d2d2d2d2d454e44202d2d2d2d2d0a
2017-07-28 13:13:48.181 UTC [msp/identity] newIdentity -> DEBU 89d Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:48.212 UTC [msp] SatisfiesPrincipal -> DEBU 89e Checking if identity satisfies ADMIN role for Org1MSP
2017-07-28 13:13:48.212 UTC [cauthdsl] func2 -> DEBU 89f 0x57958370 principal matched by identity 0
2017-07-28 13:13:48.212 UTC [msp/identity] Verify -> DEBU 8a0 Verify: digest = 00000000  b5 c0 59 46 ff b6 b5 54  4d 7b fd 8e 62 da 01 02  |..YF...TM{..b...|
00000010  75 e2 9f ec 0f 1b fe f8  bb 22 99 86 d6 1c ea 3a  |u........".....:|
2017-07-28 13:13:48.212 UTC [msp/identity] Verify -> DEBU 8a1 Verify: sig = 00000000  30 45 02 21 00 f4 fd 95  61 eb 08 39 ca 93 10 e5  |0E.!....a..9....|
00000010  6e d1 37 50 7f 6b 75 bf  2d a9 7a ed 5b a6 67 7d  |n.7P.ku.-.z.[.g}|
00000020  4c 7b 76 8a df 02 20 0c  ba 5d 41 2f 09 57 a9 37  |L{v... ..]A/.W.7|
00000030  de c6 8e 92 42 d9 d8 3c  f5 de 20 09 67 81 45 17  |....B..<.. .g.E.|
00000040  04 a6 1c 36 9a a9 1f                              |...6...|
2017-07-28 13:13:48.243 UTC [cauthdsl] func2 -> DEBU 8a2 0x57958370 principal evaluation succeeds for identity 0
2017-07-28 13:13:48.243 UTC [cauthdsl] func1 -> DEBU 8a3 0x57958370 gate 1501247628179914041 evaluation succeeds
2017-07-28 13:13:48.243 UTC [common/configtx] processConfig -> DEBU 8a4 Beginning new config for channel mychannel
2017-07-28 13:13:48.244 UTC [common/config] NewStandardValues -> DEBU 8a5 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:48.244 UTC [common/config] initializeProtosStruct -> DEBU 8a6 Processing field: HashingAlgorithm
2017-07-28 13:13:48.244 UTC [common/config] initializeProtosStruct -> DEBU 8a7 Processing field: BlockDataHashingStructure
2017-07-28 13:13:48.244 UTC [common/config] initializeProtosStruct -> DEBU 8a8 Processing field: OrdererAddresses
2017-07-28 13:13:48.244 UTC [common/config] initializeProtosStruct -> DEBU 8a9 Processing field: Consortium
2017-07-28 13:13:48.244 UTC [policies] ProposePolicy -> DEBU 8aa Proposed new policy Writers for Channel
2017-07-28 13:13:48.244 UTC [policies] ProposePolicy -> DEBU 8ab Proposed new policy Admins for Channel
2017-07-28 13:13:48.244 UTC [policies] ProposePolicy -> DEBU 8ac Proposed new policy Readers for Channel
2017-07-28 13:13:48.244 UTC [common/config] NewStandardValues -> DEBU 8ad Initializing protos for *config.OrdererProtos
2017-07-28 13:13:48.245 UTC [common/config] initializeProtosStruct -> DEBU 8ae Processing field: ConsensusType
2017-07-28 13:13:48.245 UTC [common/config] initializeProtosStruct -> DEBU 8af Processing field: BatchSize
2017-07-28 13:13:48.245 UTC [common/config] initializeProtosStruct -> DEBU 8b0 Processing field: BatchTimeout
2017-07-28 13:13:48.245 UTC [common/config] initializeProtosStruct -> DEBU 8b1 Processing field: KafkaBrokers
2017-07-28 13:13:48.245 UTC [common/config] initializeProtosStruct -> DEBU 8b2 Processing field: ChannelRestrictions
2017-07-28 13:13:48.245 UTC [policies] ProposePolicy -> DEBU 8b3 Proposed new policy Readers for Orderer
2017-07-28 13:13:48.245 UTC [policies] ProposePolicy -> DEBU 8b4 Proposed new policy Writers for Orderer
2017-07-28 13:13:48.245 UTC [policies] ProposePolicy -> DEBU 8b5 Proposed new policy Admins for Orderer
2017-07-28 13:13:48.245 UTC [policies] ProposePolicy -> DEBU 8b6 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:48.245 UTC [common/config] NewStandardValues -> DEBU 8b7 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.246 UTC [common/config] initializeProtosStruct -> DEBU 8b8 Processing field: MSP
2017-07-28 13:13:48.246 UTC [policies] ProposePolicy -> DEBU 8b9 Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:48.246 UTC [policies] ProposePolicy -> DEBU 8ba Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:48.246 UTC [policies] ProposePolicy -> DEBU 8bb Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:48.246 UTC [common/config] NewStandardValues -> DEBU 8bc Initializing protos for *struct {}
2017-07-28 13:13:48.246 UTC [policies] ProposePolicy -> DEBU 8bd Proposed new policy Readers for Application
2017-07-28 13:13:48.246 UTC [policies] ProposePolicy -> DEBU 8be Proposed new policy Admins for Application
2017-07-28 13:13:48.246 UTC [policies] ProposePolicy -> DEBU 8bf Proposed new policy Writers for Application
2017-07-28 13:13:48.246 UTC [common/config] NewStandardValues -> DEBU 8c0 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.246 UTC [common/config] initializeProtosStruct -> DEBU 8c1 Processing field: MSP
2017-07-28 13:13:48.247 UTC [common/config] NewStandardValues -> DEBU 8c2 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:48.247 UTC [common/config] initializeProtosStruct -> DEBU 8c3 Processing field: AnchorPeers
2017-07-28 13:13:48.247 UTC [common/config] NewStandardValues -> DEBU 8c4 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.247 UTC [common/config] initializeProtosStruct -> DEBU 8c5 Processing field: MSP
2017-07-28 13:13:48.247 UTC [policies] ProposePolicy -> DEBU 8c6 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:48.247 UTC [policies] ProposePolicy -> DEBU 8c7 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:48.247 UTC [policies] ProposePolicy -> DEBU 8c8 Proposed new policy Writers for Org2MSP
2017-07-28 13:13:48.247 UTC [common/config] NewStandardValues -> DEBU 8c9 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.247 UTC [common/config] initializeProtosStruct -> DEBU 8ca Processing field: MSP
2017-07-28 13:13:48.247 UTC [common/config] NewStandardValues -> DEBU 8cb Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:48.248 UTC [common/config] initializeProtosStruct -> DEBU 8cc Processing field: AnchorPeers
2017-07-28 13:13:48.248 UTC [common/config] NewStandardValues -> DEBU 8cd Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.248 UTC [common/config] initializeProtosStruct -> DEBU 8ce Processing field: MSP
2017-07-28 13:13:48.248 UTC [policies] ProposePolicy -> DEBU 8cf Proposed new policy Admins for Org1MSP
2017-07-28 13:13:48.248 UTC [policies] ProposePolicy -> DEBU 8d0 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:48.248 UTC [policies] ProposePolicy -> DEBU 8d1 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:48.248 UTC [common/config] validateMSP -> DEBU 8d2 Setting up MSP for org OrdererOrg
2017-07-28 13:13:48.248 UTC [msp] NewBccspMsp -> DEBU 8d3 Creating BCCSP-based MSP instance
2017-07-28 13:13:48.248 UTC [msp] Setup -> DEBU 8d4 Setting up MSP instance OrdererMSP
2017-07-28 13:13:48.250 UTC [msp/identity] newIdentity -> DEBU 8d5 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:48.255 UTC [orderer/server/main] Deliver -> DEBU 8d6 Starting new Deliver handler
2017-07-28 13:13:48.255 UTC [orderer/common/deliver] Handle -> DEBU 8d7 Starting new deliver loop
2017-07-28 13:13:48.255 UTC [orderer/common/deliver] Handle -> DEBU 8d8 Attempting to read seek info message
2017-07-28 13:13:48.282 UTC [msp/identity] newIdentity -> DEBU 8d9 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:48.314 UTC [msp/identity] newIdentity -> DEBU 8da Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:48.408 UTC [msp] Validate -> DEBU 8db MSP OrdererMSP validating identity
2017-07-28 13:13:48.439 UTC [common/config] Validate -> DEBU 8dc Anchor peers for org Org2MSP are 
2017-07-28 13:13:48.439 UTC [common/config] validateMSP -> DEBU 8dd Setting up MSP for org Org2MSP
2017-07-28 13:13:48.439 UTC [msp] NewBccspMsp -> DEBU 8de Creating BCCSP-based MSP instance
2017-07-28 13:13:48.439 UTC [msp] Setup -> DEBU 8df Setting up MSP instance Org2MSP
2017-07-28 13:13:48.441 UTC [msp/identity] newIdentity -> DEBU 8e0 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:48.465 UTC [orderer/common/deliver] deliverBlocks -> DEBU 8e1 Rejecting deliver because channel mychannel not found
2017-07-28 13:13:48.466 UTC [orderer/common/deliver] Handle -> DEBU 8e2 Waiting for new SeekInfo
2017-07-28 13:13:48.466 UTC [orderer/common/deliver] Handle -> DEBU 8e3 Attempting to read seek info message
2017-07-28 13:13:48.467 UTC [orderer/common/deliver] Handle -> WARN 8e4 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:48.468 UTC [orderer/server/main] func1 -> DEBU 8e5 Closing Deliver stream
2017-07-28 13:13:48.476 UTC [msp/identity] newIdentity -> DEBU 8e6 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:48.507 UTC [msp/identity] newIdentity -> DEBU 8e7 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:48.602 UTC [msp] Validate -> DEBU 8e8 MSP Org2MSP validating identity
2017-07-28 13:13:48.609 UTC [orderer/server/main] Deliver -> DEBU 8e9 Starting new Deliver handler
2017-07-28 13:13:48.609 UTC [orderer/common/deliver] Handle -> DEBU 8ea Starting new deliver loop
2017-07-28 13:13:48.610 UTC [orderer/common/deliver] Handle -> DEBU 8eb Attempting to read seek info message
2017-07-28 13:13:48.634 UTC [common/config] Validate -> DEBU 8ec Anchor peers for org Org1MSP are 
2017-07-28 13:13:48.634 UTC [common/config] validateMSP -> DEBU 8ed Setting up MSP for org Org1MSP
2017-07-28 13:13:48.634 UTC [msp] NewBccspMsp -> DEBU 8ee Creating BCCSP-based MSP instance
2017-07-28 13:13:48.635 UTC [msp] Setup -> DEBU 8ef Setting up MSP instance Org1MSP
2017-07-28 13:13:48.637 UTC [msp/identity] newIdentity -> DEBU 8f0 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:48.669 UTC [msp/identity] newIdentity -> DEBU 8f1 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:48.702 UTC [msp/identity] newIdentity -> DEBU 8f2 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:48.795 UTC [msp] Validate -> DEBU 8f3 MSP Org1MSP validating identity
2017-07-28 13:13:48.821 UTC [orderer/common/deliver] deliverBlocks -> DEBU 8f4 Rejecting deliver because channel mychannel not found
2017-07-28 13:13:48.822 UTC [orderer/common/deliver] Handle -> DEBU 8f5 Waiting for new SeekInfo
2017-07-28 13:13:48.822 UTC [orderer/common/deliver] Handle -> DEBU 8f6 Attempting to read seek info message
2017-07-28 13:13:48.824 UTC [orderer/common/deliver] Handle -> WARN 8f7 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:48.824 UTC [orderer/server/main] func1 -> DEBU 8f8 Closing Deliver stream
2017-07-28 13:13:48.829 UTC [msp] Setup -> DEBU 8f9 Setting up the MSP manager (3 msps)
2017-07-28 13:13:48.829 UTC [msp] Setup -> DEBU 8fa MSP manager setup complete, setup 3 msps
2017-07-28 13:13:48.829 UTC [policies] GetPolicy -> DEBU 8fb Returning policy Writers for evaluation
2017-07-28 13:13:48.829 UTC [policies] CommitProposals -> DEBU 8fc In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:48.829 UTC [policies] GetPolicy -> DEBU 8fd Returning policy Admins for evaluation
2017-07-28 13:13:48.830 UTC [policies] CommitProposals -> DEBU 8fe In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:48.830 UTC [policies] GetPolicy -> DEBU 8ff Returning policy Readers for evaluation
2017-07-28 13:13:48.830 UTC [policies] CommitProposals -> DEBU 900 In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:48.830 UTC [policies] GetPolicy -> DEBU 901 Returning policy Readers for evaluation
2017-07-28 13:13:48.831 UTC [policies] GetPolicy -> DEBU 902 Returning policy Writers for evaluation
2017-07-28 13:13:48.831 UTC [policies] GetPolicy -> DEBU 903 Returning policy Admins for evaluation
2017-07-28 13:13:48.831 UTC [policies] GetPolicy -> DEBU 904 Returning policy Writers for evaluation
2017-07-28 13:13:48.831 UTC [policies] GetPolicy -> DEBU 905 Returning policy Admins for evaluation
2017-07-28 13:13:48.831 UTC [policies] CommitProposals -> DEBU 906 In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:48.832 UTC [policies] GetPolicy -> DEBU 907 Returning policy Readers for evaluation
2017-07-28 13:13:48.832 UTC [policies] CommitProposals -> DEBU 908 In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:48.832 UTC [policies] GetPolicy -> DEBU 909 Returning policy Writers for evaluation
2017-07-28 13:13:48.832 UTC [policies] CommitProposals -> DEBU 90a In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:48.833 UTC [policies] GetPolicy -> DEBU 90b Returning policy Admins for evaluation
2017-07-28 13:13:48.833 UTC [policies] CommitProposals -> DEBU 90c In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:48.833 UTC [policies] GetPolicy -> DEBU 90d Returning policy Readers for evaluation
2017-07-28 13:13:48.833 UTC [policies] CommitProposals -> DEBU 90e In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:48.833 UTC [policies] GetPolicy -> DEBU 90f Returning policy Writers for evaluation
2017-07-28 13:13:48.834 UTC [policies] CommitProposals -> DEBU 910 In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:48.834 UTC [policies] GetPolicy -> DEBU 911 Returning policy Readers for evaluation
2017-07-28 13:13:48.834 UTC [policies] GetPolicy -> DEBU 912 Returning policy Readers for evaluation
2017-07-28 13:13:48.834 UTC [policies] GetPolicy -> DEBU 913 Returning policy Admins for evaluation
2017-07-28 13:13:48.835 UTC [policies] GetPolicy -> DEBU 914 Returning policy Admins for evaluation
2017-07-28 13:13:48.835 UTC [policies] GetPolicy -> DEBU 915 Returning policy Writers for evaluation
2017-07-28 13:13:48.835 UTC [policies] GetPolicy -> DEBU 916 Returning policy Writers for evaluation
2017-07-28 13:13:48.835 UTC [policies] GetPolicy -> DEBU 917 Returning policy Writers for evaluation
2017-07-28 13:13:48.835 UTC [policies] CommitProposals -> DEBU 918 In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:48.836 UTC [policies] GetPolicy -> DEBU 919 Returning policy Admins for evaluation
2017-07-28 13:13:48.836 UTC [policies] CommitProposals -> DEBU 91a In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:48.836 UTC [policies] GetPolicy -> DEBU 91b Returning policy BlockValidation for evaluation
2017-07-28 13:13:48.836 UTC [policies] CommitProposals -> DEBU 91c In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:48.836 UTC [policies] GetPolicy -> DEBU 91d Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:48.837 UTC [policies] CommitProposals -> DEBU 91e In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:48.837 UTC [policies] GetPolicy -> DEBU 91f Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:48.837 UTC [policies] CommitProposals -> DEBU 920 In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:48.837 UTC [policies] GetPolicy -> DEBU 921 Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:48.838 UTC [policies] CommitProposals -> DEBU 922 In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:48.838 UTC [policies] GetPolicy -> DEBU 923 Returning policy Readers for evaluation
2017-07-28 13:13:48.838 UTC [policies] CommitProposals -> DEBU 924 In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:48.838 UTC [policies] GetPolicy -> DEBU 925 Returning policy Admins for evaluation
2017-07-28 13:13:48.839 UTC [policies] CommitProposals -> DEBU 926 In commit adding relative sub-policy Application/Admins to Channel
2017-07-28 13:13:48.839 UTC [policies] GetPolicy -> DEBU 927 Returning policy Writers for evaluation
2017-07-28 13:13:48.839 UTC [policies] CommitProposals -> DEBU 928 In commit adding relative sub-policy Application/Writers to Channel
2017-07-28 13:13:48.839 UTC [policies] GetPolicy -> DEBU 929 Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:48.839 UTC [policies] CommitProposals -> DEBU 92a In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:48.840 UTC [policies] GetPolicy -> DEBU 92b Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:48.840 UTC [policies] CommitProposals -> DEBU 92c In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:48.840 UTC [policies] GetPolicy -> DEBU 92d Returning policy Readers for evaluation
2017-07-28 13:13:48.840 UTC [policies] CommitProposals -> DEBU 92e In commit adding relative sub-policy Application/Readers to Channel
2017-07-28 13:13:48.840 UTC [policies] GetPolicy -> DEBU 92f Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:48.841 UTC [policies] CommitProposals -> DEBU 930 In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:48.841 UTC [policies] GetPolicy -> DEBU 931 Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:48.841 UTC [policies] CommitProposals -> DEBU 932 In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:48.841 UTC [policies] GetPolicy -> DEBU 933 Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:48.842 UTC [policies] CommitProposals -> DEBU 934 In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:48.842 UTC [policies] GetPolicy -> DEBU 935 Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:48.842 UTC [policies] CommitProposals -> DEBU 936 In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:48.842 UTC [policies] GetPolicy -> DEBU 937 Returning policy Writers for evaluation
2017-07-28 13:13:48.842 UTC [policies] GetPolicy -> DEBU 938 Returning policy Writers for evaluation
2017-07-28 13:13:48.843 UTC [policies] GetPolicy -> DEBU 939 Returning policy Admins for evaluation
2017-07-28 13:13:48.843 UTC [policies] GetPolicy -> DEBU 93a Returning policy Admins for evaluation
2017-07-28 13:13:48.843 UTC [policies] GetPolicy -> DEBU 93b Returning policy Readers for evaluation
2017-07-28 13:13:48.843 UTC [policies] GetPolicy -> DEBU 93c Returning policy Readers for evaluation
2017-07-28 13:13:48.843 UTC [policies] GetPolicy -> DEBU 93d Returning policy Readers for evaluation
2017-07-28 13:13:48.844 UTC [policies] CommitProposals -> DEBU 93e As expected, current configuration has policy '/Channel/Readers'
2017-07-28 13:13:48.844 UTC [policies] GetPolicy -> DEBU 93f Returning policy Writers for evaluation
2017-07-28 13:13:48.844 UTC [policies] CommitProposals -> DEBU 940 As expected, current configuration has policy '/Channel/Writers'
2017-07-28 13:13:48.844 UTC [policies] GetPolicy -> DEBU 941 Returning policy Application/Readers for evaluation
2017-07-28 13:13:48.845 UTC [policies] CommitProposals -> DEBU 942 As expected, current configuration has policy '/Channel/Application/Readers'
2017-07-28 13:13:48.845 UTC [policies] GetPolicy -> DEBU 943 Returning policy Application/Writers for evaluation
2017-07-28 13:13:48.845 UTC [policies] CommitProposals -> DEBU 944 As expected, current configuration has policy '/Channel/Application/Writers'
2017-07-28 13:13:48.845 UTC [policies] GetPolicy -> DEBU 945 Returning policy Application/Admins for evaluation
2017-07-28 13:13:48.845 UTC [policies] CommitProposals -> DEBU 946 As expected, current configuration has policy '/Channel/Application/Admins'
2017-07-28 13:13:48.846 UTC [policies] GetPolicy -> DEBU 947 Returning policy Orderer/BlockValidation for evaluation
2017-07-28 13:13:48.846 UTC [policies] CommitProposals -> DEBU 948 As expected, current configuration has policy '/Channel/Orderer/BlockValidation'
2017-07-28 13:13:48.846 UTC [common/config] NewStandardValues -> DEBU 949 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:48.846 UTC [common/config] initializeProtosStruct -> DEBU 94a Processing field: HashingAlgorithm
2017-07-28 13:13:48.847 UTC [common/config] initializeProtosStruct -> DEBU 94b Processing field: BlockDataHashingStructure
2017-07-28 13:13:48.847 UTC [common/config] initializeProtosStruct -> DEBU 94c Processing field: OrdererAddresses
2017-07-28 13:13:48.847 UTC [common/config] initializeProtosStruct -> DEBU 94d Processing field: Consortium
2017-07-28 13:13:48.848 UTC [common/configtx] addToMap -> DEBU 94e Adding to config map: [Groups] /Channel
2017-07-28 13:13:48.848 UTC [common/configtx] addToMap -> DEBU 94f Adding to config map: [Groups] /Channel/Orderer
2017-07-28 13:13:48.849 UTC [common/configtx] addToMap -> DEBU 950 Adding to config map: [Groups] /Channel/Orderer/OrdererOrg
2017-07-28 13:13:48.849 UTC [common/configtx] addToMap -> DEBU 951 Adding to config map: [Values] /Channel/Orderer/OrdererOrg/MSP
2017-07-28 13:13:48.850 UTC [common/configtx] addToMap -> DEBU 952 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Writers
2017-07-28 13:13:48.850 UTC [common/configtx] addToMap -> DEBU 953 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Admins
2017-07-28 13:13:48.850 UTC [common/configtx] addToMap -> DEBU 954 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Readers
2017-07-28 13:13:48.851 UTC [common/configtx] addToMap -> DEBU 955 Adding to config map: [Values] /Channel/Orderer/BatchSize
2017-07-28 13:13:48.851 UTC [common/configtx] addToMap -> DEBU 956 Adding to config map: [Values] /Channel/Orderer/BatchTimeout
2017-07-28 13:13:48.851 UTC [common/configtx] addToMap -> DEBU 957 Adding to config map: [Values] /Channel/Orderer/ChannelRestrictions
2017-07-28 13:13:48.852 UTC [common/configtx] addToMap -> DEBU 958 Adding to config map: [Values] /Channel/Orderer/ConsensusType
2017-07-28 13:13:48.852 UTC [common/configtx] addToMap -> DEBU 959 Adding to config map: [Policy] /Channel/Orderer/Writers
2017-07-28 13:13:48.852 UTC [common/configtx] addToMap -> DEBU 95a Adding to config map: [Policy] /Channel/Orderer/Admins
2017-07-28 13:13:48.853 UTC [common/configtx] addToMap -> DEBU 95b Adding to config map: [Policy] /Channel/Orderer/BlockValidation
2017-07-28 13:13:48.853 UTC [common/configtx] addToMap -> DEBU 95c Adding to config map: [Policy] /Channel/Orderer/Readers
2017-07-28 13:13:48.853 UTC [common/configtx] addToMap -> DEBU 95d Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:48.853 UTC [common/configtx] addToMap -> DEBU 95e Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:48.854 UTC [common/configtx] addToMap -> DEBU 95f Adding to config map: [Values] /Channel/Application/Org2MSP/MSP
2017-07-28 13:13:48.854 UTC [common/configtx] addToMap -> DEBU 960 Adding to config map: [Policy] /Channel/Application/Org2MSP/Admins
2017-07-28 13:13:48.854 UTC [common/configtx] addToMap -> DEBU 961 Adding to config map: [Policy] /Channel/Application/Org2MSP/Readers
2017-07-28 13:13:48.855 UTC [common/configtx] addToMap -> DEBU 962 Adding to config map: [Policy] /Channel/Application/Org2MSP/Writers
2017-07-28 13:13:48.855 UTC [common/configtx] addToMap -> DEBU 963 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:48.855 UTC [common/configtx] addToMap -> DEBU 964 Adding to config map: [Values] /Channel/Application/Org1MSP/MSP
2017-07-28 13:13:48.856 UTC [common/configtx] addToMap -> DEBU 965 Adding to config map: [Policy] /Channel/Application/Org1MSP/Writers
2017-07-28 13:13:48.856 UTC [common/configtx] addToMap -> DEBU 966 Adding to config map: [Policy] /Channel/Application/Org1MSP/Admins
2017-07-28 13:13:48.856 UTC [common/configtx] addToMap -> DEBU 967 Adding to config map: [Policy] /Channel/Application/Org1MSP/Readers
2017-07-28 13:13:48.857 UTC [common/configtx] addToMap -> DEBU 968 Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:48.857 UTC [common/configtx] addToMap -> DEBU 969 Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:48.857 UTC [common/configtx] addToMap -> DEBU 96a Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:48.858 UTC [common/configtx] addToMap -> DEBU 96b Adding to config map: [Values] /Channel/OrdererAddresses
2017-07-28 13:13:48.858 UTC [common/configtx] addToMap -> DEBU 96c Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:48.858 UTC [common/configtx] addToMap -> DEBU 96d Adding to config map: [Values] /Channel/HashingAlgorithm
2017-07-28 13:13:48.859 UTC [common/configtx] addToMap -> DEBU 96e Adding to config map: [Values] /Channel/BlockDataHashingStructure
2017-07-28 13:13:48.859 UTC [common/configtx] addToMap -> DEBU 96f Adding to config map: [Policy] /Channel/Readers
2017-07-28 13:13:48.859 UTC [common/configtx] addToMap -> DEBU 970 Adding to config map: [Policy] /Channel/Writers
2017-07-28 13:13:48.859 UTC [common/configtx] addToMap -> DEBU 971 Adding to config map: [Policy] /Channel/Admins
2017-07-28 13:13:48.860 UTC [common/configtx] processConfig -> DEBU 972 Beginning new config for channel mychannel
2017-07-28 13:13:48.860 UTC [common/config] NewStandardValues -> DEBU 973 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:48.860 UTC [common/config] initializeProtosStruct -> DEBU 974 Processing field: HashingAlgorithm
2017-07-28 13:13:48.860 UTC [common/config] initializeProtosStruct -> DEBU 975 Processing field: BlockDataHashingStructure
2017-07-28 13:13:48.861 UTC [common/config] initializeProtosStruct -> DEBU 976 Processing field: OrdererAddresses
2017-07-28 13:13:48.861 UTC [common/config] initializeProtosStruct -> DEBU 977 Processing field: Consortium
2017-07-28 13:13:48.861 UTC [policies] ProposePolicy -> DEBU 978 Proposed new policy Admins for Channel
2017-07-28 13:13:48.861 UTC [policies] ProposePolicy -> DEBU 979 Proposed new policy Readers for Channel
2017-07-28 13:13:48.862 UTC [policies] ProposePolicy -> DEBU 97a Proposed new policy Writers for Channel
2017-07-28 13:13:48.862 UTC [common/config] NewStandardValues -> DEBU 97b Initializing protos for *config.OrdererProtos
2017-07-28 13:13:48.862 UTC [common/config] initializeProtosStruct -> DEBU 97c Processing field: ConsensusType
2017-07-28 13:13:48.862 UTC [common/config] initializeProtosStruct -> DEBU 97d Processing field: BatchSize
2017-07-28 13:13:48.863 UTC [common/config] initializeProtosStruct -> DEBU 97e Processing field: BatchTimeout
2017-07-28 13:13:48.863 UTC [common/config] initializeProtosStruct -> DEBU 97f Processing field: KafkaBrokers
2017-07-28 13:13:48.863 UTC [common/config] initializeProtosStruct -> DEBU 980 Processing field: ChannelRestrictions
2017-07-28 13:13:48.863 UTC [policies] ProposePolicy -> DEBU 981 Proposed new policy Admins for Orderer
2017-07-28 13:13:48.863 UTC [policies] ProposePolicy -> DEBU 982 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:48.864 UTC [policies] ProposePolicy -> DEBU 983 Proposed new policy Readers for Orderer
2017-07-28 13:13:48.864 UTC [policies] ProposePolicy -> DEBU 984 Proposed new policy Writers for Orderer
2017-07-28 13:13:48.864 UTC [common/config] NewStandardValues -> DEBU 985 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.864 UTC [common/config] initializeProtosStruct -> DEBU 986 Processing field: MSP
2017-07-28 13:13:48.865 UTC [policies] ProposePolicy -> DEBU 987 Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:48.865 UTC [policies] ProposePolicy -> DEBU 988 Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:48.865 UTC [policies] ProposePolicy -> DEBU 989 Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:48.865 UTC [common/config] NewStandardValues -> DEBU 98a Initializing protos for *struct {}
2017-07-28 13:13:48.866 UTC [policies] ProposePolicy -> DEBU 98b Proposed new policy Readers for Application
2017-07-28 13:13:48.866 UTC [policies] ProposePolicy -> DEBU 98c Proposed new policy Admins for Application
2017-07-28 13:13:48.866 UTC [policies] ProposePolicy -> DEBU 98d Proposed new policy Writers for Application
2017-07-28 13:13:48.866 UTC [common/config] NewStandardValues -> DEBU 98e Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.867 UTC [common/config] initializeProtosStruct -> DEBU 98f Processing field: MSP
2017-07-28 13:13:48.867 UTC [common/config] NewStandardValues -> DEBU 990 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:48.867 UTC [common/config] initializeProtosStruct -> DEBU 991 Processing field: AnchorPeers
2017-07-28 13:13:48.867 UTC [common/config] NewStandardValues -> DEBU 992 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.867 UTC [common/config] initializeProtosStruct -> DEBU 993 Processing field: MSP
2017-07-28 13:13:48.868 UTC [policies] ProposePolicy -> DEBU 994 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:48.868 UTC [policies] ProposePolicy -> DEBU 995 Proposed new policy Admins for Org1MSP
2017-07-28 13:13:48.868 UTC [policies] ProposePolicy -> DEBU 996 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:48.869 UTC [common/config] NewStandardValues -> DEBU 997 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.869 UTC [common/config] initializeProtosStruct -> DEBU 998 Processing field: MSP
2017-07-28 13:13:48.869 UTC [common/config] NewStandardValues -> DEBU 999 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:48.869 UTC [common/config] initializeProtosStruct -> DEBU 99a Processing field: AnchorPeers
2017-07-28 13:13:48.869 UTC [common/config] NewStandardValues -> DEBU 99b Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:48.870 UTC [common/config] initializeProtosStruct -> DEBU 99c Processing field: MSP
2017-07-28 13:13:48.870 UTC [policies] ProposePolicy -> DEBU 99d Proposed new policy Writers for Org2MSP
2017-07-28 13:13:48.870 UTC [policies] ProposePolicy -> DEBU 99e Proposed new policy Admins for Org2MSP
2017-07-28 13:13:48.870 UTC [policies] ProposePolicy -> DEBU 99f Proposed new policy Readers for Org2MSP
2017-07-28 13:13:48.871 UTC [common/config] validateMSP -> DEBU 9a0 Setting up MSP for org OrdererOrg
2017-07-28 13:13:48.871 UTC [msp] NewBccspMsp -> DEBU 9a1 Creating BCCSP-based MSP instance
2017-07-28 13:13:48.871 UTC [msp] Setup -> DEBU 9a2 Setting up MSP instance OrdererMSP
2017-07-28 13:13:48.873 UTC [msp/identity] newIdentity -> DEBU 9a3 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:48.905 UTC [msp/identity] newIdentity -> DEBU 9a4 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:48.937 UTC [msp/identity] newIdentity -> DEBU 9a5 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:48.974 UTC [orderer/server/main] Deliver -> DEBU 9a6 Starting new Deliver handler
2017-07-28 13:13:48.974 UTC [orderer/common/deliver] Handle -> DEBU 9a7 Starting new deliver loop
2017-07-28 13:13:48.974 UTC [orderer/common/deliver] Handle -> DEBU 9a8 Attempting to read seek info message
2017-07-28 13:13:49.031 UTC [msp] Validate -> DEBU 9a9 MSP OrdererMSP validating identity
2017-07-28 13:13:49.063 UTC [common/config] Validate -> DEBU 9aa Anchor peers for org Org1MSP are 
2017-07-28 13:13:49.063 UTC [common/config] validateMSP -> DEBU 9ab Setting up MSP for org Org1MSP
2017-07-28 13:13:49.063 UTC [msp] NewBccspMsp -> DEBU 9ac Creating BCCSP-based MSP instance
2017-07-28 13:13:49.063 UTC [msp] Setup -> DEBU 9ad Setting up MSP instance Org1MSP
2017-07-28 13:13:49.065 UTC [msp/identity] newIdentity -> DEBU 9ae Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:49.097 UTC [msp/identity] newIdentity -> DEBU 9af Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:49.129 UTC [msp/identity] newIdentity -> DEBU 9b0 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:49.175 UTC [orderer/common/deliver] Handle -> WARN 9b1 Error reading from stream: rpc error: code = Canceled desc = context canceled
2017-07-28 13:13:49.175 UTC [orderer/server/main] func1 -> DEBU 9b2 Closing Deliver stream
2017-07-28 13:13:49.227 UTC [msp] Validate -> DEBU 9b3 MSP Org1MSP validating identity
2017-07-28 13:13:49.258 UTC [common/config] Validate -> DEBU 9b4 Anchor peers for org Org2MSP are 
2017-07-28 13:13:49.258 UTC [common/config] validateMSP -> DEBU 9b5 Setting up MSP for org Org2MSP
2017-07-28 13:13:49.258 UTC [msp] NewBccspMsp -> DEBU 9b6 Creating BCCSP-based MSP instance
2017-07-28 13:13:49.258 UTC [msp] Setup -> DEBU 9b7 Setting up MSP instance Org2MSP
2017-07-28 13:13:49.260 UTC [msp/identity] newIdentity -> DEBU 9b8 Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:49.292 UTC [msp/identity] newIdentity -> DEBU 9b9 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:49.323 UTC [msp/identity] newIdentity -> DEBU 9ba Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:49.415 UTC [msp] Validate -> DEBU 9bb MSP Org2MSP validating identity
2017-07-28 13:13:49.446 UTC [msp] Setup -> DEBU 9bc Setting up the MSP manager (3 msps)
2017-07-28 13:13:49.446 UTC [msp] Setup -> DEBU 9bd MSP manager setup complete, setup 3 msps
2017-07-28 13:13:49.446 UTC [policies] GetPolicy -> DEBU 9be Returning policy Readers for evaluation
2017-07-28 13:13:49.446 UTC [policies] CommitProposals -> DEBU 9bf In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:49.446 UTC [policies] GetPolicy -> DEBU 9c0 Returning policy Writers for evaluation
2017-07-28 13:13:49.446 UTC [policies] CommitProposals -> DEBU 9c1 In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:49.446 UTC [policies] GetPolicy -> DEBU 9c2 Returning policy Admins for evaluation
2017-07-28 13:13:49.446 UTC [policies] CommitProposals -> DEBU 9c3 In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:49.446 UTC [policies] GetPolicy -> DEBU 9c4 Returning policy Admins for evaluation
2017-07-28 13:13:49.446 UTC [policies] GetPolicy -> DEBU 9c5 Returning policy Writers for evaluation
2017-07-28 13:13:49.447 UTC [policies] GetPolicy -> DEBU 9c6 Returning policy Readers for evaluation
2017-07-28 13:13:49.447 UTC [policies] GetPolicy -> DEBU 9c7 Returning policy Writers for evaluation
2017-07-28 13:13:49.447 UTC [policies] GetPolicy -> DEBU 9c8 Returning policy Admins for evaluation
2017-07-28 13:13:49.447 UTC [policies] CommitProposals -> DEBU 9c9 In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:49.447 UTC [policies] GetPolicy -> DEBU 9ca Returning policy Readers for evaluation
2017-07-28 13:13:49.447 UTC [policies] CommitProposals -> DEBU 9cb In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:49.447 UTC [policies] GetPolicy -> DEBU 9cc Returning policy Writers for evaluation
2017-07-28 13:13:49.447 UTC [policies] CommitProposals -> DEBU 9cd In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:49.447 UTC [policies] GetPolicy -> DEBU 9ce Returning policy Writers for evaluation
2017-07-28 13:13:49.447 UTC [policies] CommitProposals -> DEBU 9cf In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:49.447 UTC [policies] GetPolicy -> DEBU 9d0 Returning policy Admins for evaluation
2017-07-28 13:13:49.447 UTC [policies] CommitProposals -> DEBU 9d1 In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:49.448 UTC [policies] GetPolicy -> DEBU 9d2 Returning policy Readers for evaluation
2017-07-28 13:13:49.448 UTC [policies] CommitProposals -> DEBU 9d3 In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:49.448 UTC [policies] GetPolicy -> DEBU 9d4 Returning policy Readers for evaluation
2017-07-28 13:13:49.448 UTC [policies] GetPolicy -> DEBU 9d5 Returning policy Readers for evaluation
2017-07-28 13:13:49.448 UTC [policies] GetPolicy -> DEBU 9d6 Returning policy Admins for evaluation
2017-07-28 13:13:49.448 UTC [policies] GetPolicy -> DEBU 9d7 Returning policy Admins for evaluation
2017-07-28 13:13:49.448 UTC [policies] GetPolicy -> DEBU 9d8 Returning policy Writers for evaluation
2017-07-28 13:13:49.448 UTC [policies] GetPolicy -> DEBU 9d9 Returning policy Writers for evaluation
2017-07-28 13:13:49.448 UTC [policies] GetPolicy -> DEBU 9da Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:49.448 UTC [policies] CommitProposals -> DEBU 9db In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:49.448 UTC [policies] GetPolicy -> DEBU 9dc Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:49.448 UTC [policies] CommitProposals -> DEBU 9dd In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:49.449 UTC [policies] GetPolicy -> DEBU 9de Returning policy Admins for evaluation
2017-07-28 13:13:49.449 UTC [policies] CommitProposals -> DEBU 9df In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:49.449 UTC [policies] GetPolicy -> DEBU 9e0 Returning policy BlockValidation for evaluation
2017-07-28 13:13:49.449 UTC [policies] CommitProposals -> DEBU 9e1 In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:49.449 UTC [policies] GetPolicy -> DEBU 9e2 Returning policy Readers for evaluation
2017-07-28 13:13:49.449 UTC [policies] CommitProposals -> DEBU 9e3 In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:49.449 UTC [policies] GetPolicy -> DEBU 9e4 Returning policy Writers for evaluation
2017-07-28 13:13:49.449 UTC [policies] CommitProposals -> DEBU 9e5 In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:49.449 UTC [policies] GetPolicy -> DEBU 9e6 Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:49.449 UTC [policies] CommitProposals -> DEBU 9e7 In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:49.449 UTC [policies] GetPolicy -> DEBU 9e8 Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:49.449 UTC [policies] CommitProposals -> DEBU 9e9 In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:49.450 UTC [policies] GetPolicy -> DEBU 9ea Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:49.450 UTC [policies] CommitProposals -> DEBU 9eb In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:49.450 UTC [policies] GetPolicy -> DEBU 9ec Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:49.450 UTC [policies] CommitProposals -> DEBU 9ed In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:49.450 UTC [policies] GetPolicy -> DEBU 9ee Returning policy Admins for evaluation
2017-07-28 13:13:49.450 UTC [policies] CommitProposals -> DEBU 9ef In commit adding relative sub-policy Application/Admins to Channel
2017-07-28 13:13:49.450 UTC [policies] GetPolicy -> DEBU 9f0 Returning policy Writers for evaluation
2017-07-28 13:13:49.450 UTC [policies] CommitProposals -> DEBU 9f1 In commit adding relative sub-policy Application/Writers to Channel
2017-07-28 13:13:49.450 UTC [policies] GetPolicy -> DEBU 9f2 Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:49.450 UTC [policies] CommitProposals -> DEBU 9f3 In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:49.450 UTC [policies] GetPolicy -> DEBU 9f4 Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:49.451 UTC [policies] CommitProposals -> DEBU 9f5 In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:49.451 UTC [policies] GetPolicy -> DEBU 9f6 Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:49.451 UTC [policies] CommitProposals -> DEBU 9f7 In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:49.451 UTC [policies] GetPolicy -> DEBU 9f8 Returning policy Readers for evaluation
2017-07-28 13:13:49.451 UTC [policies] CommitProposals -> DEBU 9f9 In commit adding relative sub-policy Application/Readers to Channel
2017-07-28 13:13:49.451 UTC [policies] GetPolicy -> DEBU 9fa Returning policy Admins for evaluation
2017-07-28 13:13:49.451 UTC [policies] GetPolicy -> DEBU 9fb Returning policy Admins for evaluation
2017-07-28 13:13:49.451 UTC [policies] GetPolicy -> DEBU 9fc Returning policy Readers for evaluation
2017-07-28 13:13:49.451 UTC [policies] GetPolicy -> DEBU 9fd Returning policy Readers for evaluation
2017-07-28 13:13:49.451 UTC [policies] GetPolicy -> DEBU 9fe Returning policy Writers for evaluation
2017-07-28 13:13:49.451 UTC [policies] GetPolicy -> DEBU 9ff Returning policy Writers for evaluation
2017-07-28 13:13:49.451 UTC [policies] GetPolicy -> DEBU a00 Returning policy Readers for evaluation
2017-07-28 13:13:49.451 UTC [policies] CommitProposals -> DEBU a01 As expected, current configuration has policy '/Channel/Readers'
2017-07-28 13:13:49.452 UTC [policies] GetPolicy -> DEBU a02 Returning policy Writers for evaluation
2017-07-28 13:13:49.452 UTC [policies] CommitProposals -> DEBU a03 As expected, current configuration has policy '/Channel/Writers'
2017-07-28 13:13:49.452 UTC [policies] GetPolicy -> DEBU a04 Returning policy Application/Readers for evaluation
2017-07-28 13:13:49.452 UTC [policies] CommitProposals -> DEBU a05 As expected, current configuration has policy '/Channel/Application/Readers'
2017-07-28 13:13:49.452 UTC [policies] GetPolicy -> DEBU a06 Returning policy Application/Writers for evaluation
2017-07-28 13:13:49.452 UTC [policies] CommitProposals -> DEBU a07 As expected, current configuration has policy '/Channel/Application/Writers'
2017-07-28 13:13:49.452 UTC [policies] GetPolicy -> DEBU a08 Returning policy Application/Admins for evaluation
2017-07-28 13:13:49.452 UTC [policies] CommitProposals -> DEBU a09 As expected, current configuration has policy '/Channel/Application/Admins'
2017-07-28 13:13:49.452 UTC [policies] GetPolicy -> DEBU a0a Returning policy Orderer/BlockValidation for evaluation
2017-07-28 13:13:49.452 UTC [policies] CommitProposals -> DEBU a0b As expected, current configuration has policy '/Channel/Orderer/BlockValidation'
2017-07-28 13:13:49.461 UTC [common/config] NewStandardValues -> DEBU a0c Initializing protos for *config.ChannelProtos
2017-07-28 13:13:49.461 UTC [common/config] initializeProtosStruct -> DEBU a0d Processing field: HashingAlgorithm
2017-07-28 13:13:49.462 UTC [common/config] initializeProtosStruct -> DEBU a0e Processing field: BlockDataHashingStructure
2017-07-28 13:13:49.462 UTC [common/config] initializeProtosStruct -> DEBU a0f Processing field: OrdererAddresses
2017-07-28 13:13:49.462 UTC [common/config] initializeProtosStruct -> DEBU a10 Processing field: Consortium
2017-07-28 13:13:49.470 UTC [common/configtx] addToMap -> DEBU a11 Adding to config map: [Groups] /Channel
2017-07-28 13:13:49.470 UTC [common/configtx] addToMap -> DEBU a12 Adding to config map: [Groups] /Channel/Orderer
2017-07-28 13:13:49.471 UTC [common/configtx] addToMap -> DEBU a13 Adding to config map: [Groups] /Channel/Orderer/OrdererOrg
2017-07-28 13:13:49.471 UTC [common/configtx] addToMap -> DEBU a14 Adding to config map: [Values] /Channel/Orderer/OrdererOrg/MSP
2017-07-28 13:13:49.471 UTC [common/configtx] addToMap -> DEBU a15 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Admins
2017-07-28 13:13:49.472 UTC [common/configtx] addToMap -> DEBU a16 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Readers
2017-07-28 13:13:49.472 UTC [common/configtx] addToMap -> DEBU a17 Adding to config map: [Policy] /Channel/Orderer/OrdererOrg/Writers
2017-07-28 13:13:49.472 UTC [common/configtx] addToMap -> DEBU a18 Adding to config map: [Values] /Channel/Orderer/BatchSize
2017-07-28 13:13:49.473 UTC [common/configtx] addToMap -> DEBU a19 Adding to config map: [Values] /Channel/Orderer/BatchTimeout
2017-07-28 13:13:49.473 UTC [common/configtx] addToMap -> DEBU a1a Adding to config map: [Values] /Channel/Orderer/ChannelRestrictions
2017-07-28 13:13:49.473 UTC [common/configtx] addToMap -> DEBU a1b Adding to config map: [Values] /Channel/Orderer/ConsensusType
2017-07-28 13:13:49.474 UTC [common/configtx] addToMap -> DEBU a1c Adding to config map: [Policy] /Channel/Orderer/Admins
2017-07-28 13:13:49.475 UTC [common/configtx] addToMap -> DEBU a1d Adding to config map: [Policy] /Channel/Orderer/BlockValidation
2017-07-28 13:13:49.475 UTC [common/configtx] addToMap -> DEBU a1e Adding to config map: [Policy] /Channel/Orderer/Readers
2017-07-28 13:13:49.475 UTC [common/configtx] addToMap -> DEBU a1f Adding to config map: [Policy] /Channel/Orderer/Writers
2017-07-28 13:13:49.475 UTC [common/configtx] addToMap -> DEBU a20 Adding to config map: [Groups] /Channel/Application
2017-07-28 13:13:49.475 UTC [common/configtx] addToMap -> DEBU a21 Adding to config map: [Groups] /Channel/Application/Org2MSP
2017-07-28 13:13:49.476 UTC [common/configtx] addToMap -> DEBU a22 Adding to config map: [Values] /Channel/Application/Org2MSP/MSP
2017-07-28 13:13:49.476 UTC [common/configtx] addToMap -> DEBU a23 Adding to config map: [Policy] /Channel/Application/Org2MSP/Writers
2017-07-28 13:13:49.476 UTC [common/configtx] addToMap -> DEBU a24 Adding to config map: [Policy] /Channel/Application/Org2MSP/Admins
2017-07-28 13:13:49.476 UTC [common/configtx] addToMap -> DEBU a25 Adding to config map: [Policy] /Channel/Application/Org2MSP/Readers
2017-07-28 13:13:49.476 UTC [common/configtx] addToMap -> DEBU a26 Adding to config map: [Groups] /Channel/Application/Org1MSP
2017-07-28 13:13:49.476 UTC [common/configtx] addToMap -> DEBU a27 Adding to config map: [Values] /Channel/Application/Org1MSP/MSP
2017-07-28 13:13:49.476 UTC [common/configtx] addToMap -> DEBU a28 Adding to config map: [Policy] /Channel/Application/Org1MSP/Writers
2017-07-28 13:13:49.477 UTC [common/configtx] addToMap -> DEBU a29 Adding to config map: [Policy] /Channel/Application/Org1MSP/Admins
2017-07-28 13:13:49.477 UTC [common/configtx] addToMap -> DEBU a2a Adding to config map: [Policy] /Channel/Application/Org1MSP/Readers
2017-07-28 13:13:49.477 UTC [common/configtx] addToMap -> DEBU a2b Adding to config map: [Policy] /Channel/Application/Readers
2017-07-28 13:13:49.477 UTC [common/configtx] addToMap -> DEBU a2c Adding to config map: [Policy] /Channel/Application/Admins
2017-07-28 13:13:49.477 UTC [common/configtx] addToMap -> DEBU a2d Adding to config map: [Policy] /Channel/Application/Writers
2017-07-28 13:13:49.477 UTC [common/configtx] addToMap -> DEBU a2e Adding to config map: [Values] /Channel/OrdererAddresses
2017-07-28 13:13:49.478 UTC [common/configtx] addToMap -> DEBU a2f Adding to config map: [Values] /Channel/Consortium
2017-07-28 13:13:49.478 UTC [common/configtx] addToMap -> DEBU a30 Adding to config map: [Values] /Channel/HashingAlgorithm
2017-07-28 13:13:49.478 UTC [common/configtx] addToMap -> DEBU a31 Adding to config map: [Values] /Channel/BlockDataHashingStructure
2017-07-28 13:13:49.478 UTC [common/configtx] addToMap -> DEBU a32 Adding to config map: [Policy] /Channel/Readers
2017-07-28 13:13:49.478 UTC [common/configtx] addToMap -> DEBU a33 Adding to config map: [Policy] /Channel/Writers
2017-07-28 13:13:49.478 UTC [common/configtx] addToMap -> DEBU a34 Adding to config map: [Policy] /Channel/Admins
2017-07-28 13:13:49.478 UTC [common/configtx] processConfig -> DEBU a35 Beginning new config for channel mychannel
2017-07-28 13:13:49.479 UTC [common/config] NewStandardValues -> DEBU a36 Initializing protos for *config.ChannelProtos
2017-07-28 13:13:49.479 UTC [common/config] initializeProtosStruct -> DEBU a37 Processing field: HashingAlgorithm
2017-07-28 13:13:49.479 UTC [common/config] initializeProtosStruct -> DEBU a38 Processing field: BlockDataHashingStructure
2017-07-28 13:13:49.479 UTC [common/config] initializeProtosStruct -> DEBU a39 Processing field: OrdererAddresses
2017-07-28 13:13:49.479 UTC [common/config] initializeProtosStruct -> DEBU a3a Processing field: Consortium
2017-07-28 13:13:49.479 UTC [policies] ProposePolicy -> DEBU a3b Proposed new policy Readers for Channel
2017-07-28 13:13:49.479 UTC [policies] ProposePolicy -> DEBU a3c Proposed new policy Writers for Channel
2017-07-28 13:13:49.479 UTC [policies] ProposePolicy -> DEBU a3d Proposed new policy Admins for Channel
2017-07-28 13:13:49.479 UTC [common/config] NewStandardValues -> DEBU a3e Initializing protos for *config.OrdererProtos
2017-07-28 13:13:49.480 UTC [common/config] initializeProtosStruct -> DEBU a3f Processing field: ConsensusType
2017-07-28 13:13:49.480 UTC [common/config] initializeProtosStruct -> DEBU a40 Processing field: BatchSize
2017-07-28 13:13:49.480 UTC [common/config] initializeProtosStruct -> DEBU a41 Processing field: BatchTimeout
2017-07-28 13:13:49.480 UTC [common/config] initializeProtosStruct -> DEBU a42 Processing field: KafkaBrokers
2017-07-28 13:13:49.480 UTC [common/config] initializeProtosStruct -> DEBU a43 Processing field: ChannelRestrictions
2017-07-28 13:13:49.480 UTC [policies] ProposePolicy -> DEBU a44 Proposed new policy Writers for Orderer
2017-07-28 13:13:49.480 UTC [policies] ProposePolicy -> DEBU a45 Proposed new policy Admins for Orderer
2017-07-28 13:13:49.480 UTC [policies] ProposePolicy -> DEBU a46 Proposed new policy BlockValidation for Orderer
2017-07-28 13:13:49.480 UTC [policies] ProposePolicy -> DEBU a47 Proposed new policy Readers for Orderer
2017-07-28 13:13:49.480 UTC [common/config] NewStandardValues -> DEBU a48 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:49.480 UTC [common/config] initializeProtosStruct -> DEBU a49 Processing field: MSP
2017-07-28 13:13:49.481 UTC [policies] ProposePolicy -> DEBU a4a Proposed new policy Writers for OrdererOrg
2017-07-28 13:13:49.481 UTC [policies] ProposePolicy -> DEBU a4b Proposed new policy Admins for OrdererOrg
2017-07-28 13:13:49.481 UTC [policies] ProposePolicy -> DEBU a4c Proposed new policy Readers for OrdererOrg
2017-07-28 13:13:49.481 UTC [common/config] NewStandardValues -> DEBU a4d Initializing protos for *struct {}
2017-07-28 13:13:49.481 UTC [policies] ProposePolicy -> DEBU a4e Proposed new policy Readers for Application
2017-07-28 13:13:49.481 UTC [policies] ProposePolicy -> DEBU a4f Proposed new policy Admins for Application
2017-07-28 13:13:49.481 UTC [policies] ProposePolicy -> DEBU a50 Proposed new policy Writers for Application
2017-07-28 13:13:49.481 UTC [common/config] NewStandardValues -> DEBU a51 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:49.481 UTC [common/config] initializeProtosStruct -> DEBU a52 Processing field: MSP
2017-07-28 13:13:49.482 UTC [common/config] NewStandardValues -> DEBU a53 Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:49.482 UTC [common/config] initializeProtosStruct -> DEBU a54 Processing field: AnchorPeers
2017-07-28 13:13:49.482 UTC [common/config] NewStandardValues -> DEBU a55 Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:49.482 UTC [common/config] initializeProtosStruct -> DEBU a56 Processing field: MSP
2017-07-28 13:13:49.482 UTC [policies] ProposePolicy -> DEBU a57 Proposed new policy Writers for Org2MSP
2017-07-28 13:13:49.482 UTC [policies] ProposePolicy -> DEBU a58 Proposed new policy Admins for Org2MSP
2017-07-28 13:13:49.482 UTC [policies] ProposePolicy -> DEBU a59 Proposed new policy Readers for Org2MSP
2017-07-28 13:13:49.482 UTC [common/config] NewStandardValues -> DEBU a5a Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:49.482 UTC [common/config] initializeProtosStruct -> DEBU a5b Processing field: MSP
2017-07-28 13:13:49.482 UTC [common/config] NewStandardValues -> DEBU a5c Initializing protos for *config.ApplicationOrgProtos
2017-07-28 13:13:49.482 UTC [common/config] initializeProtosStruct -> DEBU a5d Processing field: AnchorPeers
2017-07-28 13:13:49.483 UTC [common/config] NewStandardValues -> DEBU a5e Initializing protos for *config.OrganizationProtos
2017-07-28 13:13:49.483 UTC [common/config] initializeProtosStruct -> DEBU a5f Processing field: MSP
2017-07-28 13:13:49.483 UTC [policies] ProposePolicy -> DEBU a60 Proposed new policy Writers for Org1MSP
2017-07-28 13:13:49.483 UTC [policies] ProposePolicy -> DEBU a61 Proposed new policy Admins for Org1MSP
2017-07-28 13:13:49.483 UTC [policies] ProposePolicy -> DEBU a62 Proposed new policy Readers for Org1MSP
2017-07-28 13:13:49.483 UTC [common/config] validateMSP -> DEBU a63 Setting up MSP for org OrdererOrg
2017-07-28 13:13:49.483 UTC [msp] NewBccspMsp -> DEBU a64 Creating BCCSP-based MSP instance
2017-07-28 13:13:49.483 UTC [msp] Setup -> DEBU a65 Setting up MSP instance OrdererMSP
2017-07-28 13:13:49.485 UTC [msp/identity] newIdentity -> DEBU a66 Creating identity instance for ID &{OrdererMSP 98e11d25eaac4d6613785e1c379470fa3bd6554317ee85d46af8a4e86d5e0f31}
2017-07-28 13:13:49.520 UTC [msp/identity] newIdentity -> DEBU a67 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:49.552 UTC [msp/identity] newIdentity -> DEBU a68 Creating identity instance for ID &{OrdererMSP 9cc20016ae1a75ea643d8f4f79f913abaf917b2b121c9833e92362fe2d79e8c0}
2017-07-28 13:13:49.645 UTC [msp] Validate -> DEBU a69 MSP OrdererMSP validating identity
2017-07-28 13:13:49.676 UTC [common/config] Validate -> DEBU a6a Anchor peers for org Org2MSP are 
2017-07-28 13:13:49.677 UTC [common/config] validateMSP -> DEBU a6b Setting up MSP for org Org2MSP
2017-07-28 13:13:49.677 UTC [msp] NewBccspMsp -> DEBU a6c Creating BCCSP-based MSP instance
2017-07-28 13:13:49.677 UTC [msp] Setup -> DEBU a6d Setting up MSP instance Org2MSP
2017-07-28 13:13:49.679 UTC [msp/identity] newIdentity -> DEBU a6e Creating identity instance for ID &{Org2MSP 4231ce70454d306e3c56b0b3c7dd848a9ae538a91534bff4c5bb296c4a28cf69}
2017-07-28 13:13:49.710 UTC [msp/identity] newIdentity -> DEBU a6f Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:49.742 UTC [msp/identity] newIdentity -> DEBU a70 Creating identity instance for ID &{Org2MSP ab187f7c626348f932b343ed0dfd9d63189517ecb67140ec8f7af08a98d60792}
2017-07-28 13:13:49.835 UTC [msp] Validate -> DEBU a71 MSP Org2MSP validating identity
2017-07-28 13:13:49.866 UTC [common/config] Validate -> DEBU a72 Anchor peers for org Org1MSP are 
2017-07-28 13:13:49.866 UTC [common/config] validateMSP -> DEBU a73 Setting up MSP for org Org1MSP
2017-07-28 13:13:49.866 UTC [msp] NewBccspMsp -> DEBU a74 Creating BCCSP-based MSP instance
2017-07-28 13:13:49.866 UTC [msp] Setup -> DEBU a75 Setting up MSP instance Org1MSP
2017-07-28 13:13:49.868 UTC [msp/identity] newIdentity -> DEBU a76 Creating identity instance for ID &{Org1MSP f8d2ba7e7be95dc612497866ac78889b44f9248e350a0f6f6680ae04798d41f7}
2017-07-28 13:13:49.900 UTC [msp/identity] newIdentity -> DEBU a77 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:49.931 UTC [msp/identity] newIdentity -> DEBU a78 Creating identity instance for ID &{Org1MSP 6b9755af495c968ff1b48851072db077bfa112de78188d5764d62d7fa3da973b}
2017-07-28 13:13:50.024 UTC [msp] Validate -> DEBU a79 MSP Org1MSP validating identity
2017-07-28 13:13:50.055 UTC [msp] Setup -> DEBU a7a Setting up the MSP manager (3 msps)
2017-07-28 13:13:50.055 UTC [msp] Setup -> DEBU a7b MSP manager setup complete, setup 3 msps
2017-07-28 13:13:50.055 UTC [policies] GetPolicy -> DEBU a7c Returning policy Writers for evaluation
2017-07-28 13:13:50.055 UTC [policies] CommitProposals -> DEBU a7d In commit adding relative sub-policy OrdererOrg/Writers to Orderer
2017-07-28 13:13:50.056 UTC [policies] GetPolicy -> DEBU a7e Returning policy Admins for evaluation
2017-07-28 13:13:50.056 UTC [policies] CommitProposals -> DEBU a7f In commit adding relative sub-policy OrdererOrg/Admins to Orderer
2017-07-28 13:13:50.056 UTC [policies] GetPolicy -> DEBU a80 Returning policy Readers for evaluation
2017-07-28 13:13:50.056 UTC [policies] CommitProposals -> DEBU a81 In commit adding relative sub-policy OrdererOrg/Readers to Orderer
2017-07-28 13:13:50.056 UTC [policies] GetPolicy -> DEBU a82 Returning policy Writers for evaluation
2017-07-28 13:13:50.056 UTC [policies] GetPolicy -> DEBU a83 Returning policy Admins for evaluation
2017-07-28 13:13:50.056 UTC [policies] GetPolicy -> DEBU a84 Returning policy Writers for evaluation
2017-07-28 13:13:50.056 UTC [policies] GetPolicy -> DEBU a85 Returning policy Readers for evaluation
2017-07-28 13:13:50.056 UTC [policies] GetPolicy -> DEBU a86 Returning policy Readers for evaluation
2017-07-28 13:13:50.056 UTC [policies] CommitProposals -> DEBU a87 In commit adding relative sub-policy Org2MSP/Readers to Application
2017-07-28 13:13:50.056 UTC [policies] GetPolicy -> DEBU a88 Returning policy Writers for evaluation
2017-07-28 13:13:50.057 UTC [policies] CommitProposals -> DEBU a89 In commit adding relative sub-policy Org2MSP/Writers to Application
2017-07-28 13:13:50.057 UTC [policies] GetPolicy -> DEBU a8a Returning policy Admins for evaluation
2017-07-28 13:13:50.057 UTC [policies] CommitProposals -> DEBU a8b In commit adding relative sub-policy Org2MSP/Admins to Application
2017-07-28 13:13:50.057 UTC [policies] GetPolicy -> DEBU a8c Returning policy Readers for evaluation
2017-07-28 13:13:50.057 UTC [policies] CommitProposals -> DEBU a8d In commit adding relative sub-policy Org1MSP/Readers to Application
2017-07-28 13:13:50.057 UTC [policies] GetPolicy -> DEBU a8e Returning policy Writers for evaluation
2017-07-28 13:13:50.057 UTC [policies] CommitProposals -> DEBU a8f In commit adding relative sub-policy Org1MSP/Writers to Application
2017-07-28 13:13:50.057 UTC [policies] GetPolicy -> DEBU a90 Returning policy Admins for evaluation
2017-07-28 13:13:50.057 UTC [policies] CommitProposals -> DEBU a91 In commit adding relative sub-policy Org1MSP/Admins to Application
2017-07-28 13:13:50.057 UTC [policies] GetPolicy -> DEBU a92 Returning policy Readers for evaluation
2017-07-28 13:13:50.057 UTC [policies] GetPolicy -> DEBU a93 Returning policy Readers for evaluation
2017-07-28 13:13:50.057 UTC [policies] GetPolicy -> DEBU a94 Returning policy Admins for evaluation
2017-07-28 13:13:50.058 UTC [policies] GetPolicy -> DEBU a95 Returning policy Admins for evaluation
2017-07-28 13:13:50.058 UTC [policies] GetPolicy -> DEBU a96 Returning policy Writers for evaluation
2017-07-28 13:13:50.058 UTC [policies] GetPolicy -> DEBU a97 Returning policy Writers for evaluation
2017-07-28 13:13:50.058 UTC [policies] GetPolicy -> DEBU a98 Returning policy Org1MSP/Readers for evaluation
2017-07-28 13:13:50.058 UTC [policies] CommitProposals -> DEBU a99 In commit adding relative sub-policy Application/Org1MSP/Readers to Channel
2017-07-28 13:13:50.058 UTC [policies] GetPolicy -> DEBU a9a Returning policy Org1MSP/Writers for evaluation
2017-07-28 13:13:50.058 UTC [policies] CommitProposals -> DEBU a9b In commit adding relative sub-policy Application/Org1MSP/Writers to Channel
2017-07-28 13:13:50.058 UTC [policies] GetPolicy -> DEBU a9c Returning policy Org1MSP/Admins for evaluation
2017-07-28 13:13:50.058 UTC [policies] CommitProposals -> DEBU a9d In commit adding relative sub-policy Application/Org1MSP/Admins to Channel
2017-07-28 13:13:50.058 UTC [policies] GetPolicy -> DEBU a9e Returning policy Readers for evaluation
2017-07-28 13:13:50.058 UTC [policies] CommitProposals -> DEBU a9f In commit adding relative sub-policy Application/Readers to Channel
2017-07-28 13:13:50.059 UTC [policies] GetPolicy -> DEBU aa0 Returning policy Writers for evaluation
2017-07-28 13:13:50.059 UTC [policies] CommitProposals -> DEBU aa1 In commit adding relative sub-policy Application/Writers to Channel
2017-07-28 13:13:50.059 UTC [policies] GetPolicy -> DEBU aa2 Returning policy Org2MSP/Readers for evaluation
2017-07-28 13:13:50.059 UTC [policies] CommitProposals -> DEBU aa3 In commit adding relative sub-policy Application/Org2MSP/Readers to Channel
2017-07-28 13:13:50.059 UTC [policies] GetPolicy -> DEBU aa4 Returning policy Org2MSP/Writers for evaluation
2017-07-28 13:13:50.059 UTC [policies] CommitProposals -> DEBU aa5 In commit adding relative sub-policy Application/Org2MSP/Writers to Channel
2017-07-28 13:13:50.059 UTC [policies] GetPolicy -> DEBU aa6 Returning policy Org2MSP/Admins for evaluation
2017-07-28 13:13:50.059 UTC [policies] CommitProposals -> DEBU aa7 In commit adding relative sub-policy Application/Org2MSP/Admins to Channel
2017-07-28 13:13:50.059 UTC [policies] GetPolicy -> DEBU aa8 Returning policy Admins for evaluation
2017-07-28 13:13:50.059 UTC [policies] CommitProposals -> DEBU aa9 In commit adding relative sub-policy Application/Admins to Channel
2017-07-28 13:13:50.059 UTC [policies] GetPolicy -> DEBU aaa Returning policy BlockValidation for evaluation
2017-07-28 13:13:50.059 UTC [policies] CommitProposals -> DEBU aab In commit adding relative sub-policy Orderer/BlockValidation to Channel
2017-07-28 13:13:50.060 UTC [policies] GetPolicy -> DEBU aac Returning policy Readers for evaluation
2017-07-28 13:13:50.060 UTC [policies] CommitProposals -> DEBU aad In commit adding relative sub-policy Orderer/Readers to Channel
2017-07-28 13:13:50.060 UTC [policies] GetPolicy -> DEBU aae Returning policy OrdererOrg/Writers for evaluation
2017-07-28 13:13:50.060 UTC [policies] CommitProposals -> DEBU aaf In commit adding relative sub-policy Orderer/OrdererOrg/Writers to Channel
2017-07-28 13:13:50.060 UTC [policies] GetPolicy -> DEBU ab0 Returning policy OrdererOrg/Admins for evaluation
2017-07-28 13:13:50.060 UTC [policies] CommitProposals -> DEBU ab1 In commit adding relative sub-policy Orderer/OrdererOrg/Admins to Channel
2017-07-28 13:13:50.060 UTC [policies] GetPolicy -> DEBU ab2 Returning policy OrdererOrg/Readers for evaluation
2017-07-28 13:13:50.060 UTC [policies] CommitProposals -> DEBU ab3 In commit adding relative sub-policy Orderer/OrdererOrg/Readers to Channel
2017-07-28 13:13:50.060 UTC [policies] GetPolicy -> DEBU ab4 Returning policy Writers for evaluation
2017-07-28 13:13:50.060 UTC [policies] CommitProposals -> DEBU ab5 In commit adding relative sub-policy Orderer/Writers to Channel
2017-07-28 13:13:50.060 UTC [policies] GetPolicy -> DEBU ab6 Returning policy Admins for evaluation
2017-07-28 13:13:50.060 UTC [policies] CommitProposals -> DEBU ab7 In commit adding relative sub-policy Orderer/Admins to Channel
2017-07-28 13:13:50.061 UTC [policies] GetPolicy -> DEBU ab8 Returning policy Readers for evaluation
2017-07-28 13:13:50.061 UTC [policies] GetPolicy -> DEBU ab9 Returning policy Readers for evaluation
2017-07-28 13:13:50.061 UTC [policies] GetPolicy -> DEBU aba Returning policy Writers for evaluation
2017-07-28 13:13:50.061 UTC [policies] GetPolicy -> DEBU abb Returning policy Writers for evaluation
2017-07-28 13:13:50.061 UTC [policies] GetPolicy -> DEBU abc Returning policy Admins for evaluation
2017-07-28 13:13:50.061 UTC [policies] GetPolicy -> DEBU abd Returning policy Admins for evaluation
2017-07-28 13:13:50.061 UTC [policies] GetPolicy -> DEBU abe Returning policy Readers for evaluation
2017-07-28 13:13:50.061 UTC [policies] CommitProposals -> DEBU abf As expected, current configuration has policy '/Channel/Readers'
2017-07-28 13:13:50.061 UTC [policies] GetPolicy -> DEBU ac0 Returning policy Writers for evaluation
2017-07-28 13:13:50.061 UTC [policies] CommitProposals -> DEBU ac1 As expected, current configuration has policy '/Channel/Writers'
2017-07-28 13:13:50.061 UTC [policies] GetPolicy -> DEBU ac2 Returning policy Application/Readers for evaluation
2017-07-28 13:13:50.061 UTC [policies] CommitProposals -> DEBU ac3 As expected, current configuration has policy '/Channel/Application/Readers'
2017-07-28 13:13:50.062 UTC [policies] GetPolicy -> DEBU ac4 Returning policy Application/Writers for evaluation
2017-07-28 13:13:50.062 UTC [policies] CommitProposals -> DEBU ac5 As expected, current configuration has policy '/Channel/Application/Writers'
2017-07-28 13:13:50.062 UTC [policies] GetPolicy -> DEBU ac6 Returning policy Application/Admins for evaluation
2017-07-28 13:13:50.062 UTC [policies] CommitProposals -> DEBU ac7 As expected, current configuration has policy '/Channel/Application/Admins'
2017-07-28 13:13:50.062 UTC [policies] GetPolicy -> DEBU ac8 Returning policy Orderer/BlockValidation for evaluation
2017-07-28 13:13:50.062 UTC [policies] CommitProposals -> DEBU ac9 As expected, current configuration has policy '/Channel/Orderer/BlockValidation'
2017-07-28 13:13:50.062 UTC [fsblkstorage] newBlockfileMgr -> DEBU aca newBlockfileMgr() initializing file-based block storage for ledger: mychannel 
2017-07-28 13:13:50.062 UTC [kvledger.util] CreateDirIfMissing -> DEBU acb CreateDirIfMissing [/var/hyperledger/production/orderer/chains/mychannel/]
2017-07-28 13:13:50.062 UTC [kvledger.util] logDirStatus -> DEBU acc Before creating dir - [/var/hyperledger/production/orderer/chains/mychannel/] does not exist
2017-07-28 13:13:50.063 UTC [kvledger.util] logDirStatus -> DEBU acd After creating dir - [/var/hyperledger/production/orderer/chains/mychannel/] exists
2017-07-28 13:13:50.070 UTC [fsblkstorage] syncCPInfoFromFS -> DEBU ace Starting checkpoint=latestFileChunkSuffixNum=[0], latestFileChunksize=[0], isChainEmpty=[true], lastBlockNumber=[0]
2017-07-28 13:13:50.070 UTC [fsblkstorage] syncCPInfoFromFS -> DEBU acf status of file [/var/hyperledger/production/orderer/chains/mychannel/blockfile_000000]: exists=[false], size=[0]
2017-07-28 13:13:50.071 UTC [fsblkstorage] newBlockIndex -> DEBU ad0 newBlockIndex() - indexItems:[[BlockNum]]
2017-07-28 13:13:50.071 UTC [fsblkstorage] newBlockfileStream -> DEBU ad1 newBlockfileStream(): filePath=[/var/hyperledger/production/orderer/chains/mychannel/blockfile_000000], startOffset=[0]
2017-07-28 13:13:50.071 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU ad2 Finished reading file number [0]
2017-07-28 13:13:50.071 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU ad3 blockbytes [0] read from file [0]
2017-07-28 13:13:50.078 UTC [fsblkstorage] indexBlock -> DEBU ad4 Indexing block [blockNum=0, blockHash=[]byte{0xa9, 0xdb, 0x91, 0x17, 0x15, 0x65, 0xdd, 0x36, 0x3a, 0x60, 0xc3, 0x12, 0x7b, 0x4d, 0x85, 0x3a, 0x20, 0x11, 0x6c, 0x4c, 0x9a, 0x11, 0x20, 0x1f, 0x51, 0xea, 0xac, 0xbd, 0x65, 0xcf, 0x57, 0x7} txOffsets=
txId= locPointer=offset=38, bytesLength=11859
]
2017-07-28 13:13:50.078 UTC [fsblkstorage] updateCheckpoint -> DEBU ad5 Broadcasting about update checkpointInfo: latestFileChunkSuffixNum=[0], latestFileChunksize=[11902], isChainEmpty=[false], lastBlockNumber=[0]
2017-07-28 13:13:50.078 UTC [fsblkstorage] newBlockfileStream -> DEBU ad6 newBlockfileStream(): filePath=[/var/hyperledger/production/orderer/chains/mychannel/blockfile_000000], startOffset=[0]
2017-07-28 13:13:50.079 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU ad7 Remaining bytes=[11902], Going to peek [8] bytes
2017-07-28 13:13:50.079 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU ad8 Returning blockbytes - length=[11900], placementInfo={fileNum=[0], startOffset=[0], bytesOffset=[2]}
2017-07-28 13:13:50.079 UTC [fsblkstorage] nextBlockBytesAndPlacementInfo -> DEBU ad9 blockbytes [11900] read from file [0]
2017-07-28 13:13:50.079 UTC [orderer/multichannel] newChainSupport -> DEBU ada [channel: mychannel] Retrieved metadata for tip of chain (blockNumber=0, lastConfig=0, lastConfigSeq=1): 
2017-07-28 13:13:50.079 UTC [orderer/multichannel] newChain -> INFO adb Created and starting new chain mychannel
2017-07-28 13:13:50.079 UTC [orderer/multichannel] addBlockSignature -> DEBU adc &{ledgerResources:0x57171c10 chain:0x57171f90 cutter:0x570967b0 filters:0x57171c40 signer:0xaeb1d8 lastConfig:0 lastConfigSeq:0}
2017-07-28 13:13:50.080 UTC [orderer/multichannel] addBlockSignature -> DEBU add &{}
2017-07-28 13:13:50.080 UTC [msp] GetLocalMSP -> DEBU ade Returning existing local MSP
2017-07-28 13:13:50.080 UTC [msp] GetDefaultSigningIdentity -> DEBU adf Obtaining default signing identity
2017-07-28 13:13:50.080 UTC [msp] GetLocalMSP -> DEBU ae0 Returning existing local MSP
2017-07-28 13:13:50.080 UTC [msp] GetDefaultSigningIdentity -> DEBU ae1 Obtaining default signing identity
2017-07-28 13:13:50.080 UTC [msp/identity] Sign -> DEBU ae2 Sign: plaintext: 0AFA050A0A4F7264657265724D535012...D2F9E09E5540946F2A68E69E3003CAA9 
2017-07-28 13:13:50.080 UTC [msp/identity] Sign -> DEBU ae3 Sign: digest: E92EC9A456F2F8DA451EF958084F406472B8B68CC981FDD9D0CA441C803DBA1F 
2017-07-28 13:13:50.089 UTC [msp] GetLocalMSP -> DEBU ae4 Returning existing local MSP
2017-07-28 13:13:50.090 UTC [msp] GetDefaultSigningIdentity -> DEBU ae5 Obtaining default signing identity
2017-07-28 13:13:50.090 UTC [orderer/multichannel] addLastConfigSignature -> DEBU ae6 [channel: testchainid] About to write block, setting its LAST_CONFIG to 0
2017-07-28 13:13:50.090 UTC [msp] GetLocalMSP -> DEBU ae7 Returning existing local MSP
2017-07-28 13:13:50.090 UTC [msp] GetDefaultSigningIdentity -> DEBU ae8 Obtaining default signing identity
2017-07-28 13:13:50.090 UTC [msp/identity] Sign -> DEBU ae9 Sign: plaintext: 0AFA050A0A4F7264657265724D535012...D2F9E09E5540946F2A68E69E3003CAA9 
2017-07-28 13:13:50.090 UTC [msp/identity] Sign -> DEBU aea Sign: digest: A771224188F6539CE8079458B63EA4A8747FAC26211B4742E679817B8B58CC60 
2017-07-28 13:13:50.108 UTC [fsblkstorage] indexBlock -> DEBU aeb Indexing block [blockNum=1, blockHash=[]byte{0xd2, 0x19, 0xb1, 0xd, 0x5a, 0x2e, 0x7d, 0x22, 0x86, 0x9a, 0x53, 0xd2, 0xca, 0xe8, 0xc6, 0x2e, 0x89, 0x2e, 0xf7, 0xb0, 0xe6, 0xad, 0x95, 0xd, 0x37, 0x58, 0xfb, 0xd0, 0xaf, 0x3a, 0x84, 0x2d} txOffsets=
txId= locPointer=offset=70, bytesLength=12760
]
2017-07-28 13:13:50.108 UTC [fsblkstorage] updateCheckpoint -> DEBU aec Broadcasting about update checkpointInfo: latestFileChunkSuffixNum=[0], latestFileChunksize=[23633], isChainEmpty=[false], lastBlockNumber=[1]
2017-07-28 13:13:50.109 UTC [orderer/multichannel] WriteBlock -> DEBU aed [channel: testchainid] Wrote block 1
```