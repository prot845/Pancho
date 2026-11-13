# Video clipping skill research

Date: 2026-11-13. Request: find written skills that turn supplied long videos into potentially viral clips. Sources inspected online; no installation or video processing was performed.

## Recommendation
Start with social-media-skills/video-to-shorts-skill: explicitly documents Codex support, local files, transcript-based candidate scoring, FFmpeg rendering, vertical framing and captions. Local transcription avoids a required paid API. Performance and virality have not been independently tested.

## Primary sources
- https://github.com/social-media-skills/video-to-shorts-skill
- https://github.com/social-media-skills/video-to-shorts-skill/blob/main/skills/video-to-shorts-skill/SKILL.md
- https://github.com/eligapris/viral-clip-editor-skill/blob/main/SKILL.md — rendering scripts; adapt agent instructions and dependency installation.
- https://github.com/EJVision/codex-shorts/blob/main/SKILL.md — despite repository name, instructions are Claude-specific; faster-whisper and Remotion rendering.
- https://github.com/maykbrito/skill-viral-moment-extractor/blob/main/SKILL.md — YouTube-oriented selection report and FFmpeg cut script; not a full captioned vertical-edit pipeline.
- https://github.com/Upload-Post/skill-autoshorts/blob/main/SKILL.md — Whisper plus Gemini multimodal and Upload-Post; external APIs and harness assumptions.
- https://github.com/jnakagawa/zero-skills/blob/main/longform-video-clipper/SKILL.md — local and paid Zero paths; branding and captions.
- https://github.com/phillipalcock/viral-clip-finder/blob/main/SKILL.md — editorial scoring/planning; not by itself a complete rendering solution.

## Limits
Documentation verifies intended workflows, not successful operation. Transcript scoring is editorial ranking, not a validated probability of going viral. Speech-heavy footage is the clearest fit for transcript-led systems. No new changes pushed to GitHub as part of this research.
