#!/bin/bash
#flash nic interface on the back of a server
#$1 = ethernet device (eth0)
seconds=120

sudo ethtool -p $1 $seconds
