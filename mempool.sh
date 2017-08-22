#!/bin/bash

BITCOINCLI=/usr/bin/zcash-cli
MEMPOOLHOME=/home/explorer/mempool

cd $MEMPOOLHOME
$BITCOINCLI getrawmempool true | perl mempool-sql.pl

./mkdata.sh
