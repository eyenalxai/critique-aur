#!/usr/bin/env -S sh
set -euo pipefail
exec bun run /usr/lib/critique/src/cli.tsx "$@"
