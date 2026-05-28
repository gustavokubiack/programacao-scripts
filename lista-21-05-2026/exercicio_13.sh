#!/bin/bash
total=$(netstat -tn 2>/dev/null | grep "ESTABLISHED" | wc -l)
echo "Conexões com estado ESTABLISHED: $total"