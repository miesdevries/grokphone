# Flash Checklist

## Before Building

- Confirm exact device: Nothing Phone (3a), model A059.
- Confirm branch:

```bash
git -C device/nothing/asteroids status --short --branch
```

- Confirm build target:

```bash
lunch stay4s_asteroids-userdebug
```

- Confirm Stay4S files are present:

```bash
ls device/nothing/asteroids/stay4s_asteroids.mk
ls device/nothing/asteroids/vendor/nothing/stay4s/Android.bp
ls device/nothing/asteroids/vendor/nothing/stay4s/Stay4S.apk
```

## Before Flashing

- Back up user data.
- Confirm bootloader state and unlock requirements.
- Confirm recovery/fastboot access works.
- Confirm battery is above 60 percent.
- Confirm exact image names and partition targets.
- Keep stock/recovery rollback files available.

## First Boot Checks

After flashing, verify:

```bash
adb shell getprop ro.stay4s.enabled
adb shell getprop ro.stay4s.grokphone.enabled
adb shell getprop ro.stay4s.target_device
adb shell getprop ro.stay4s.product
```

Expected values:

```text
true
true
asteroids
stay4s_asteroids
```

Verify Stay4S package:

```bash
adb shell pm list packages com.stay4safe
adb shell dumpsys package com.stay4safe.stay4s
```

## Stop Conditions

Stop and investigate before continuing if:

- Device is not detected by ADB or fastboot.
- Build target differs from the intended device.
- Generated image paths are unclear.
- Privapp permission errors appear during boot.
- SELinux denial blocks Stay4S startup.
- Boot loop occurs.
