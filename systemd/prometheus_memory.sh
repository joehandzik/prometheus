#!/bin/bash

MEMORY=$(awk '/MemTotal/{printf "%.0f", $2*1024*2/3}' /proc/meminfo)

sed -i "1s/.*/MEMORY=${MEMORY}/" /etc/sysconfig/prometheus
