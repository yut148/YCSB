#!/bin/bash
BIN_HOME=./../../bin

. $BIN_HOME/utils.sh
. ./workload-env.sh

workloads=("profile=hbase-${HBASE_VERSION}-c.workload target=0 operationcount=100000"

           "profile=hbase-${HBASE_VERSION}-c.workload target=100 operationcount=10000"
           "profile=hbase-${HBASE_VERSION}-c.workload target=500 operationcount=50000"
           "profile=hbase-${HBASE_VERSION}-c.workload target=800 operationcount=80000"
           "profile=hbase-${HBASE_VERSION}-c.workload target=1000 operationcount=100000"
           "profile=hbase-${HBASE_VERSION}-c.workload target=1200 operationcount=100000"
           "profile=hbase-${HBASE_VERSION}-c.workload target=1500 operationcount=100000"
           "profile=hbase-${HBASE_VERSION}-c.workload target=2000 operationcount=200000"
           "profile=hbase-${HBASE_VERSION}-c.workload target=2500 operationcount=200000"
           "profile=hbase-${HBASE_VERSION}-c.workload target=3000 operationcount=200000")

workloads=$(array_join "${workloads[@]}")

$BIN_HOME/run-workload.sh -w "$workloads"