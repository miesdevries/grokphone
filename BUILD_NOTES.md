# Build Notes

## Host Recommendation

Use Linux or WSL2 Ubuntu 24.04. Native Windows PowerShell is useful for Git, ADB, APK work, and documentation, but not for full Android ROM builds.

Recommended host resources:

- 16 GB RAM minimum, 32 GB preferred.
- 250 GB free disk minimum, 400 GB preferred.
- Source tree stored inside the Linux filesystem, not under `/mnt/c`.
- Laptop connected to power during builds.

## Expected Source Layout

Example Linux layout:

```bash
mkdir -p ~/android/lineage
cd ~/android/lineage
```

This repository should end up at:

```text
device/nothing/asteroids
```

Stay4S integration files live under:

```text
device/nothing/asteroids/vendor/nothing/stay4s
```

## Build Target

The Stay4S product target is:

```bash
lunch stay4s_asteroids-userdebug
```

Baseline target remains:

```bash
lunch lineage_asteroids-userdebug
```

## First Build Checks

Run from the Android source root:

```bash
source build/envsetup.sh
lunch stay4s_asteroids-userdebug
m product-graph
```

If that passes, proceed to a larger build:

```bash
mka bacon 2>&1 | tee build_$(date +%Y%m%d_%H%M%S).log
```

## Known Local Limitation

The current Windows folder at `C:\Users\Gebruiker\Stay4S_Rom` is not a full Android source tree. It contains only partial `device/` and `vendor/` content, so `source build/envsetup.sh`, `lunch`, `m`, and `mka` cannot run there yet.
