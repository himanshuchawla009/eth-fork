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
	"enode://d14bb9145b79069a28ad6c841b23d4614508f0d14be4ab1eba9ffb148094e850f641f905ed53a24925fd814f5802ef6b35e2e7b8d2a6b8e0fd39803b5558d211@54.169.144.165:30303",
}

// TestnetBootnodes are the enode URLs of the P2P bootstrap nodes running on the .
var TestnetBootnodes = []string{}
var RinkebyBootnodes = []string{}
var RinkebyV5Bootnodes = []string{}
var DiscoveryV5Bootnodes = []string{}
