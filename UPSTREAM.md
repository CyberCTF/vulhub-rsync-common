# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `rsync/common` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `app/` | [`rsync/common`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/rsync/common) |
| `base/rsync/3.1.2/` | [`base/rsync/3.1.2`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/rsync/3.1.2): the Dockerfile of `vulhub/rsync:3.1.2` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published image `vulhub/rsync:3.1.2`,
pinned by tag (as Vulhub's own compose file does); its Dockerfile is vendored under `base/`
to show how it is built. Building from `base/` instead would download the vulnerable software from its
original sources, some of which are gone.

`app/Dockerfile` (Vulhub's) builds the machine as is: `docker: { build: app }`. It installs cron from a dated Debian snapshot, so the build needs the internet.

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
