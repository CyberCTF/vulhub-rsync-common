# Rsync Unauthorized Access

[Vulhub](https://vulhub.org)'s [`rsync/common`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/rsync/common) environment, by
phith0n and the Vulhub contributors: an rsync daemon exporting the whole file system, writable and without authentication. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine is built by Vulhub's own Dockerfile for this environment (vendored unchanged in [`app/`](app)), from `vulhub/rsync:3.1.2`, whose Dockerfile is in [`base/`](base).

| Machine | Service |
| --- | --- |
| rsync | rsync 3.1.2 daemon on port 873 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then list the modules with `rsync rsync://127.0.0.1:873/`. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/rsync/common/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
