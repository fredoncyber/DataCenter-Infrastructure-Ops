#!/usr/bin/env bash
set -euo pipefail

OUT="net_baseline_$(hostname)_$(date +%F_%H%M%S).txt"

{
  echo "== Interfaces =="
  ip -s link

  echo
  echo "== Addresses =="
  ip -br addr

  echo
  echo "== Routes =="
  ip route

  echo
  echo "== DNS =="
  cat /etc/resolv.conf

} > "$OUT"

echo "Saved baseline to $OUT"
