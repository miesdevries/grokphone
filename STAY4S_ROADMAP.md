# Stay4S Roadmap

## Current State

- Nothing asteroids device tree has a `stay4s_asteroids-userdebug` lunch target.
- Stay4S is integrated as a product privileged prebuilt app.
- Stay4S declares Shizuku API permission and includes a Shizuku UserService backend.
- Current Shizuku device controls are read-only: shell status, device info, selected props, and service list.
- ROM permission XML files are wired through the Stay4S Soong module.

## Near Term

1. Set up a full Linux/WSL2 Android build environment.
2. Clone a complete Lineage/AOSP source tree.
3. Add this device tree on branch `stay4s-integration`.
4. Run `lunch stay4s_asteroids-userdebug`.
5. Build enough targets to validate Soong/Make integration before a full ROM build.
6. Verify Stay4S package install path and permissions in generated product image.

## App Work

- Add boot receiver for ROM-installed mode.
- Add persistent foreground service startup policy.
- Keep Shizuku actions behind explicit UI or command confirmations.
- Add structured command output and diagnostic export.
- Keep privileged write actions disabled until read-only diagnostics are stable.

## ROM Work

- Validate `Stay4S` prebuilt module in a full source tree.
- Validate `privapp-permissions-stay4s.xml` and `default-permissions-stay4s.xml` placement.
- Confirm `ro.stay4s.*` properties appear after boot.
- Add SELinux policy only after actual denials are observed.

## Safety Rules

- No destructive shell commands without a matching rollback plan.
- No root-only assumptions while using Shizuku ADB mode.
- No broad privileged permissions unless the APK declares and uses them.
- No flashing until build artifacts, partitions, and recovery path are verified.
