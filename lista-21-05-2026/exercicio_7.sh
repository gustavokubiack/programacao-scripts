#!/bin/bash
echo "Endereços IP das interfaces de rede:"
ip addr 2>/dev/null | grep "inet " | awk '{print $2}' || \
ifconfig 2>/dev/null | grep "inet " | awk '{print $2}'