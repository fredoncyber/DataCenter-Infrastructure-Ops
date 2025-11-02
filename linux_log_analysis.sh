#!/usr/bin/env bash
set -euo pipefail

echo "== Recent Critical Kernel Messages =="
dmesg --level=err,crit,alert,emerg | tail -n 100 || true
echo

echo "== Systemd Journal (Last 2 Hours, Errors) =="
command -v journalctl >/dev/null && journalctl -p 3 -S -2h || true
echo

echo "== SSH and Auth Issues (Last 24h) =="
command -v journalctl >/dev/null && journalctl -u ssh -S -24h | egrep -i "fail|denied|error" || true
command -v journalctl >/dev/null && journalctl -S -24h | egrep -i "segfault|oom-killer|i/o error" || true
echo

echo "== Disk & Filesystem Errors (Last 24h) =="
command -v journalctl >/dev/null && journalctl -S -24h | egrep -i "ext4|xfs|btrfs|read error|write error" || true
