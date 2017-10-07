// Copyright 2017 The go-ethereum Authors
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

package core

// Constants containing the genesis allocation of built-in genesis blocks.
// Their content is an RLP-encoded list of (address, balance) tuples.
// Use mkalloc.go to create/update them.

const testnetAllocData = "\xc0"
const rinkebyAllocData = "\xc0"
const devAllocData = "\xc0"
const mainnetAllocData = "\xf8F\xe3\x94e\xb8\x8a\x06\xa0rC\xc3\xdddH-UWK\u03b2\x96\x87m\x8d~7\xbe \"\xc0\x91K&\x80\x00\x00\x00\xe1\x94\xc1\xfb-|\x96\xc3\u014b*\xc2\xc2\b4\xec^i\xfcbS\xe8\x8bR\xb7\xd2\xdc\xc8\f\xd2\xe4\x00\x00\x00"
