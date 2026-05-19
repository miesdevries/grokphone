# Test Log

## 2026-05-18

### Shizuku Activation

- Shizuku was started through Wireless Debugging and ADB.
- Verified running processes:
  - `shizuku_server`
  - `moe.shizuku.privileged.api`

### Stay4S Debug APK

- Package ID changed to:

```text
com.stay4safe.stay4s
```

- APK built successfully with Gradle.
- APK installed on the Nothing Phone.
- Granted permissions:
  - `android.permission.POST_NOTIFICATIONS`
  - `moe.shizuku.manager.permission.API_V23`

### Foreground Service

- `GrokAgentService` verified running as a foreground service.
- Direct ADB start was blocked because the service is not exported, which is expected.
- Service starts through the app UI.

### Shizuku Backend

- Shizuku SDK added to the app.
- Shizuku provider and API permission added to the manifest.
- Shizuku UserService backend added.
- Safe read-only commands added:
  - `@grok shell-status`
  - `@grok device-info`
  - `@grok props`
  - `@grok services`

### ROM Integration

- Stay4S added as product privileged prebuilt app.
- ROM permission XML added.
- `stay4s_asteroids-userdebug` lunch target added.
- Branch pushed to:

```text
https://github.com/miesdevries/grokphone/tree/stay4s-integration
```

## Open Test Items

- Validate `lunch stay4s_asteroids-userdebug` in a full Linux Android source tree.
- Validate generated product image contains Stay4S APK.
- Validate `ro.stay4s.*` props on a flashed ROM.
- Validate boot behavior after Stay4S is installed as ROM app.
