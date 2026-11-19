# Cadence Manager

A smooth, advanced Android app for patching YouTube and YouTube Music — developed by **netherish**.

[![GPL-3.0](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](LICENSE)

## About

Cadence Manager is a customized build of [ReVanced Manager](https://github.com/ReVanced/revanced-manager). It uses [ReVanced Patcher](https://github.com/revanced/revanced-patcher) to download and apply patches to Android apps, with a fresh Cadence identity, original artwork, and a polished Material 3 Expressive UI.

**Developed by [netherish](https://github.com/netherish)** · Based on [ReVanced Manager](https://github.com/ReVanced) · Licensed under GPL-3.0.

## Features

- ⬇️ **Download** — fetch apps through configurable downloader sources
- 💉 **Patch** — select and apply patches to YouTube, YouTube Music, and other apps
- 🛠️ **Customize** — manage patches, signing, themes, updates, and advanced settings
- 📱 **Root & non-root** — mount over the official app on rooted devices, or install standalone
- 🎨 **Original Cadence artwork** — teal/violet equalizer identity, no third-party branded assets

## Download

**[⬇️ Download Cadence Manager APK (v2.6.1)](https://github.com/netherish/cadence-manager/releases/download/v2.6.1/cadence-manager.apk)**

Or browse [all releases](https://github.com/netherish/cadence-manager/releases/latest).

Requires **Android 8.0 (API 26)** or newer.

## Build from source

You need JDK 17 and Android SDK (platform 36, build-tools 35/36, NDK 27, CMake 3.22.1). GitHub Packages credentials with `read:packages` are required in `~/.gradle/gradle.properties`:

```properties
githubPackagesUsername=YOUR_USERNAME
githubPackagesPassword=YOUR_TOKEN_WITH_read:packages
```

```powershell
.\gradlew.bat assembleRelease
```

The output APK is at `app\build\outputs\apk\release\`.

See [CADENCE.md](CADENCE.md) for full details, root/non-root flows, and customization notes.

## Documentation

- [CADENCE.md](CADENCE.md) — build, features, and credits
- [docs/](docs) — upstream documentation

## License

Cadence Manager is licensed under **GPL-3.0** — see [LICENSE](LICENSE). This is required by the upstream ReVanced code and patcher library. All original copyright notices are preserved, and credit is given to the ReVanced team in the app and here.
