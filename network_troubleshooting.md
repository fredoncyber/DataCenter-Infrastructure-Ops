# Network Troubleshooting Guide

1. Verify link & errors
```bash
ip -s link
```
2. DNS resolution
```bash
dig +trace google.com || nslookup google.com
```
3. Latency & packet loss
```bash
ping -c 20 8.8.8.8
mtr -rw 8.8.8.8
```
4. Routing
```bash
ip route
traceroute google.com
```
