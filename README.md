## Alchemist Blockchain in Go

Alchemist Go client is a modified blockchain based on Ethereum protocol in Go language.

## Building the source

Building galc(go-alchemist) requires both a Go and a C compiler. You'll need Go version 1.7 or above. You can install them using your favorite package manager. Once the dependencies are installed, run:

`make all`

## Run Alchemist client(galc)

`galc console`

A common error is that galc is not executable. Please do chmod +x <path-to-galc> to avoid this.

If you want to run with RPC, please add more flags accordingly:

`galc --rpc --rpcapi="db,eth,net,web3,personal" --rpcport "8545" --rpcaddr "127.0.0.1" --rpccorsdomain "localhost" console`



## Can't find peers to sync?

Alchemist has set up some default nodes that you can try to connect as bootstrap nodes. Once connected, the console will start syncing automatically. In case you can't see syncing after a long time, you may have to add peer(s) manually.

In GALC console, add knowing peer with its enode information:

`> admin.addPeer("{enode info}")`
