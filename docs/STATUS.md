# Native Status

Confirmed local bring-up milestones:

- Disc metadata and main DOL extraction work for the USA GameCube disc image.
- Generated app scaffolding builds under the GCGlue native host.
- Native execution reaches real frontend and match gameplay states.
- Live input plumbing can drive boot/menu/match flow.
- GX frame capture/replay produces recognizable in-game match frames.
- Current safe runtime path keeps CPU external interrupt delivery gated while PI/VI/DSP causes are modeled.

Known open work:

- Replace remaining DVD/thread scheduler shims with stronger device-backed scheduling.
- Make CPU external interrupt delivery frame-producing before enabling it by default.
- Improve live VI/GX presentation and remaining match-scene rendering accuracy.
- Improve DSP/audio behavior.
- Keep public repos free of commercial game data and local machine paths.
