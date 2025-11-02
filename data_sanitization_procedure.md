# Data Sanitization Procedure (Non-Destructive Demo)

> For **demo** use only. Replace with approved tooling for production (e.g., `nwipe`, vendor secure erase).

1. Validate media ownership and ticket reference.
2. Capture current asset identifiers and SMART data.
3. For demo: overwrite a test file or loop device; record command and hash.
4. Verify no sensitive data remains; update CMDB and `media_tracking_log.csv`.
5. Securely store or dispose media per policy.
