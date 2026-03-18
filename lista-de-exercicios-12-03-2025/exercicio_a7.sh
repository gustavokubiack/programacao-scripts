#!/bin/bash
ls a >> /dev/null 2>&1
echo "Código de retorno do último comando: $?"