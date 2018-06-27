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
	"enode://1e88ba7eca1f60d2b2859b4085f676cd9c646179184ee73836e16e4994ca011350d62cbb5880b2b980429130906954b7cba02ac9c1c069faec03bb61214f41a8@54.169.164.110:30303",
}

// TestnetBootnodes are the enode URLs of the P2P bootstrap nodes running on the .
var TestnetBootnodes = []string{}
var RinkebyBootnodes = []string{}
var RinkebyV5Bootnodes = []string{}
var DiscoveryV5Bootnodes = []string{}
