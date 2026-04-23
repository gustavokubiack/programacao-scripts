#!/bin/bash

LOG="sistema.log"
DIR="historicos"

mkdir -p "$DIR"

while true
do
  if [ -f "$LOG" ]; then
    TAM=$(stat -c%s "$LOG")
    if [ "$TAM" -gt $((100*1024*1024)) ]; then
      DEST="$DIR/$(date +%Y%m%d%H%M%S).log"
      mv "$LOG" "$DEST" || break
      : > "$LOG"
    fi
  fi
  sleep 5
done