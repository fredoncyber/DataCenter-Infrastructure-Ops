#!/usr/bin/env bash
set -euo pipefail

echo "== System Summary =="
hostnamectl || true
echo

echo "== Uptime & Load =="
uptime
cat /proc/loadavg
echo

echo "== CPU =="
lscpu | egrep 'Model name|CPU\(s\)|Thread|Core|Socket' || true
command -v mpstat >/dev/null && mpstat 1 3 || true
echo

echo "== Memory =="
free -h
command -v vmstat >/dev/null && vmstat 1 3 || true
echo

echo "== Disk Usage =="
df -hT | sort -k6
echo

echo "== SMART Health (disks) =="
for d in /dev/sd? /dev/nvme?n1; do
  if [ -e "$d" ]; then
    echo "-- $d --"
    sudo smartctl -H -A "$d" || true
  fi
done
echo

echo "== Top I/O Wait =="
command -v iostat >/dev/null && iostat -xz 1 3 || true
echo

echo "== Network Interfaces =="
ip -br link
ip -br addr
for nic in $(ls /sys/class/net | grep -v lo | head -n1); do
  command -v ethtool >/dev/null && ethtool -S "$nic" 2>/dev/null | head -n50 || true
done
echo

echo "== Temperature Sensors =="
command -v sensors >/dev/null && sensors || echo "no sensors tool"
echo

echo "== Processes =="
ps aux --sort=-%cpu | head -n 15
ps aux --sort=-%mem | head -n 15
