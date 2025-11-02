#!/usr/bin/env python3
"""List Compute Engine VM instances and their status.
For demo in portfolio; uses service account credentials or ADC.
"""
import argparse
from googleapiclient import discovery
from google.oauth2 import service_account

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--project", required=True)
    parser.add_argument("--zone", required=True)
    parser.add_argument("--creds", default=None, help="Path to service account JSON (optional if env var set)")
    args = parser.parse_args()

    creds = None
    if args.creds:
        creds = service_account.Credentials.from_service_account_file(args.creds)

    service = discovery.build("compute", "v1", credentials=creds)
    req = service.instances().list(project=args.project, zone=args.zone)
    result = req.execute()
    for inst in result.get("items", []):
        print(f"{inst["name"]}: {inst["status"]}")

if __name__ == "__main__":
    main()
