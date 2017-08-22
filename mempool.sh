#!/bin/bash

BITCOINCLI=/usr/bin/hush-cli
MEMPOOLHOME=/home/madbuda/mempool

cd $MEMPOOLHOME
$BITCOINCLI getrawmempool true | perl mempool-sql.pl

./mkdata.sh
