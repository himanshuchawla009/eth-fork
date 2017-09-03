// Copyright 2015 The go-ethereum Authors
// This file is part of the go-ethereum library.
//
// The go-ethereum library is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// The go-ethereum library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with the go-ethereum library. If not, see <http://www.gnu.org/licenses/>.

package params

// MainnetBootnodes are the enode URLs of the P2P bootstrap nodes running on
// the main Ethereum network.
var MainnetBootnodes = []string{

	// Alchemist Foundation Go Bootnodes
	"enode://c2b3287ac8d4d4a16fa7f0c12609b157f01225de55208e58446c991ac0d92691d895800691394d8c696ce3ac17dc111594347f7893945bbbfff511ce3bceb8b1@192.169.216.103:30303",
}

// TestnetBootnodes are the enode URLs of the P2P bootstrap nodes running on the .
var TestnetBootnodes = []string{}
var RinkebyBootnodes = []string{}
var RinkebyV5Bootnodes = []string{}
var DiscoveryV5Bootnodes = []string{}
