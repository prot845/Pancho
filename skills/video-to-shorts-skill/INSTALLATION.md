# Project-local installation

Source: https://github.com/social-media-skills/video-to-shorts-skill
Upstream revision: 2e20fb008b584f3927798f36f580401d75318600
Installed: 2026-11-13. Upstream skill, scripts, fonts, examples, references and license copied locally.

The managed .agents/ directory is read-only. AGENTS.md points to this skill explicitly; it is not registered as a global or built-in skill.

Python environment: work/video-shorts-venv (relative to project root). Dependencies: Pillow, faster-whisper, opencv-python-headless. FFmpeg/ffprobe must be on PATH.

From the project root:

```bash
skills/video-to-shorts-skill/run-python.sh skills/video-to-shorts-skill/scripts/check_setup.py
skills/video-to-shorts-skill/run-python.sh skills/video-to-shorts-skill/scripts/transcribe.py input.mp4 --engine local --out work/transcription
```

The wrapper keeps model downloads in work/model-cache/huggingface. The first use of a new Whisper model downloads it. Use --engine local explicitly; upstream auto mode can select an available cloud API key. No publishing services are connected by this installation.

To recreate the environment, create a Python venv at work/video-shorts-venv and install requirements.lock.txt from this directory. Virtual environments and model caches should remain local and should not be committed.

## Recreate after cloning

```bash
python3 -m venv work/video-shorts-venv
work/video-shorts-venv/bin/python -m pip install -r skills/video-to-shorts-skill/requirements.lock.txt
skills/video-to-shorts-skill/run-python.sh skills/video-to-shorts-skill/scripts/check_setup.py
```

Install FFmpeg with the host's package manager if it is missing. The lock file records the verified Python 3.12 Linux environment; other platforms may require compatible package versions. Bundled example videos, showcase images and rendered outputs are omitted from the committed installation; example configuration/transcript and attribution are retained.
