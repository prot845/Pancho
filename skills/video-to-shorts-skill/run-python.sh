#!/usr/bin/env bash
set -euo pipefail
skill_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
project_root="$(cd -- "$skill_root/../.." && pwd)"
export HF_HOME="$project_root/work/model-cache/huggingface"
export XDG_CACHE_HOME="$project_root/work/cache"
exec "$project_root/work/video-shorts-venv/bin/python" "$@"
