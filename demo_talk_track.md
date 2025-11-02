# Interview Demo Talk Track (2–3 minutes)

**Context (10s):** 
This repo is a hands-on lab showing how I work as a Data Center Technician—hardware, Linux, networking, and GCP.

**Flow (60–90s):**
1) *Hardware (Lab 01):* Rack assembly checklist and cable management; emphasize labeling and CMDB updates.
2) *Diagnostics (Lab 02):* Run `make diag` and `make logs`; check CPU/mem/disk/SMART, sensors, and `journalctl` errors.
3) *Networking (Lab 03):* Capture baseline with `make net-baseline`; diff baselines to isolate faults.
4) *Data Security (Lab 04):* Sanitization SOP and decommissioning form—chain of custody and verifiable wipe steps.
5) *Automation (Lab 05):* GCP script to list VM status; simple scripts for repeatable checks.

**Close (30s):**
Tie each lab back to JD responsibilities (deploy infra, troubleshoot, maintain data integrity, EoL disassembly, PM). Mention shift-readiness and safety discipline.
