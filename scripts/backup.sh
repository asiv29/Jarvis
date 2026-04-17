#!/bin/bash
set -e

BACKUP_DIR="./backups"
DATE=$(date +%Y-%m-%d_%H-%M)
BACKUP_FILE="$BACKUP_DIR/kai-backup-$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

echo "Backing up Kai's memory and config..."

tar -czf "$BACKUP_FILE" \
  workspace/MEMORY.md \
  workspace/memory/ \
  workspace/SOUL.md \
  workspace/IDENTITY.md \
  workspace/AGENTS.md \
  config/ \
  skills/ \
  .env 2>/dev/null || true

echo "Backup saved to: $BACKUP_FILE"

# Keep only the last 30 backups
ls -t "$BACKUP_DIR"/kai-backup-*.tar.gz 2>/dev/null | tail -n +31 | xargs rm -f 2>/dev/null || true

echo "Done."
