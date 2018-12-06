#!/bin/bash
lspci | egrep -i --color 'network|ethernet'
