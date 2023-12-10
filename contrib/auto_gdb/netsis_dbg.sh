#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.netsis/netsisd.pid file instead
export LC_ALL=C

netsis_pid=$(<~/.netsis/testnet3/netsisd.pid)
sudo gdb -batch -ex "source debug.gdb" netsisd ${netsis_pid}
