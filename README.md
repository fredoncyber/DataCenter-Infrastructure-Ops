# Data Center Infrastructure Operations — Hands-on Labs

A collection of simple labs for **Linux troubleshooting, network operations, hardware procedures, secure media handling, and basic cloud monitoring**.

> **Scope:** Educational portfolio and runbooks, not evidence of production data-center deployment.

## Why this project exists

Infrastructure teams need consistent procedures for diagnosing problems and maintaining equipment securely. This repository provides scripts and checklists to practice those skills.

## Explore the files

| Topic | Start here |
| --- | --- |
| Hardware and safety | [Server assembly checklist](server_assembly_checklist.md), [ESD and safety](esd_and_safety_checklist.md) |
| Linux diagnostics | [Server health check](server_health_check.sh), [Log analysis](linux_log_analysis.sh) |
| Network troubleshooting | [Baseline capture](net_baseline_capture.sh), [Troubleshooting guide](network_troubleshooting.md) |
| Asset protection | [Sanitization procedure](data_sanitization_procedure.md), [Decommissioning form](asset_decommissioning_form.md) |
| Cloud and backups | [GCP VM monitor](gcp_vm_status_monitor.py), [Backup schedule](backup_schedule_cron.yaml) |
| Incident response | [Response playbook](incident_response_playbook.md) |

## How the labs fit together

```text
Observe a problem → Collect evidence → Follow the runbook → Document results
```

## Quick start

```bash
git clone https://github.com/fredoncyber/DataCenter-Infrastructure-Ops.git
cd DataCenter-Infrastructure-Ops

# Review each script before running it:
cat server_health_check.sh
cat net_baseline_capture.sh
```

**Note:** Scripts are in the repository root, not in a `labs/` directory. Run commands only on systems you own or are authorized to manage. Some commands may need platform-specific tools or additional permissions.

## Skills illustrated

Linux and shell scripting, network baseline collection, infrastructure troubleshooting, operational documentation, and secure asset handling.

## Limitations

These are learning resources. Hardware checks, sanitization steps, incident procedures, and backup schedules require testing and approval before organizational use.

## License

See [LICENSE](LICENSE).
