# Cadence Manager

A customized build of [ReVanced Manager](https://github.com/ReVanced/revanced-manager), developed by **netherish** (https://github.com/netherish).

## Licensing & credit

This project remains **GPL-3.0**, as required by the upstream code and the ReVanced Patcher library. The original LICENSE and all source copyright notices are preserved.

- **Developed by netherish** — shown in the About screen with a link to https://github.com/netherish
- **Based on ReVanced Manager** — shown in the About screen with a link to https://github.com/ReVanced
- The About description explicitly credits ReVanced Patcher as the patching engine
- The upstream launcher/branding artwork was replaced with **original Cadence equalizer artwork** designed for this build, so no third-party branded assets are used

## Changes from upstream

- App name: **Cadence Manager**
- Original teal/violet equalizer app icon and notification icon (replaces upstream branded artwork)
- About screen includes developer credit (netherish) and upstream credit (ReVanced team)
- `minSdk` set to **26** (Android 8.0)
- Material 3 Expressive dark theme with teal/violet accents retained and polished

## Supported Android versions

- **Minimum:** Android 8.0 (API 26)
- **Target:** Android 16 (API 36)

## Root vs non-root flows

The manager detects root at runtime and offers the appropriate install method.

### Non-root device

1. Install official YouTube Music (or YouTube) from the Play Store.
2. In Cadence: **Patcher → Select app → YouTube Music**.
3. Select patches (ads, background playback, spoof video streams, etc.).
4. Patch, then **Install**.
5. Install **ReVanced GmsCore (MicroG)** and exempt it from battery optimization.
6. Log in with your own Google account if needed.

Patched app is installed as a **standalone APK** with a renamed package, so the official app stays installed.

### Rooted device

Two modes are available:

**A. Mount over official app (recommended)**
1. Grant root access to Cadence.
2. Patch YouTube Music / YouTube.
3. Choose **Mount** — the patched APK is overlaid on top of the official app via Magisk/KernelSU.
4. Both the original and patched versions remain present; you can unmount from the manager.

**B. Standalone install**
1. Uninstall the official app (or keep it under a renamed package).
2. Install the patched APK directly as a separate app.
3. Useful if you want both apps side by side with distinct packages.

## Building

```powershell
# Java 17 and Android SDK 36 must be installed
.\gradlew.bat assembleRelease
```

Output: `app\build\outputs\apk\release\app-release.apk`

GitHub Packages credentials are required in `~/.gradle/gradle.properties` with `read:packages` scope.
