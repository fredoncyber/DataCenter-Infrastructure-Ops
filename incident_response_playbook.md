# Incident Response (IR) – Minimal Playbook for Data Center Events

1. **Detect & Log** – Capture `dmesg`, `journalctl -xe`, `ip -s link`, `smartctl` outputs.
2. **Stabilize** – Isolate affected host/port/VLAN. Document change ticket.
3. **Diagnose** – Use Lab 02 diagnostics and Lab 03 network baseline diff.
4. **Remediate** – Replace component, re‑terminate cable, or roll back config.
5. **Validate** – Health checks pass; application SLOs back to normal.
6. **Close Out** – Update PM schedule and asset records.
