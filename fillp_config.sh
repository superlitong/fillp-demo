#!/bin/sh
sysctl -w net.ipv4.udp_mem="98304 16777216 33554432"
sysctl -w net.core.wmem_max=33554432
