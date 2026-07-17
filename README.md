# SocialSense

SocialSense is a Flutter app that turns an Instagram JSON data export into local follower, engagement, activity, and messaging insights.

<p align="center">
  <img src="assets/logo/socialsense_logo.png" alt="SocialSense logo" width="140">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.38.3-02569B?logo=flutter&logoColor=white" alt="Flutter 3.38.3">
  <img src="https://img.shields.io/badge/Dart-%5E3.10.1-0175C2?logo=dart&logoColor=white" alt="Dart ^3.10.1">
  <img src="https://img.shields.io/badge/Version-1.0.3%2B7-5B5CFF" alt="Version 1.0.3+7">
  <img src="https://img.shields.io/badge/License-MIT-2ECC71" alt="MIT License">
</p>

---

## 📖 Overview

SocialSense analyzes the JSON ZIP archive available through Instagram's data download tools. It is designed for Instagram users who want to inspect account relationships and interaction patterns without signing in through the app.

The archive is selected from the device, parsed in a background isolate, and saved in the app's local documents directory. Parsed account data is not uploaded by the analysis flow; links opened outside the app may still use network access.

---

## ✨ Features

- **Data import and storage** — selects Instagram ZIP exports, rejects HTML or unrelated archives, parses supported JSON files, restores the last analysis on launch, and supports reloading or deleting stored data.
- **Follower analysis** — shows mutual followers, accounts that do not follow back, followers the user does not follow, and estimated ghost followers based on recent likes and comments.
- **Engagement insights** — ranks top fans and the most liked, commented, and saved accounts; calculates a recent engagement estimate; and links account rows to Instagram profiles.
- **Activity reports** — summarizes active hours, monthly like activity, weekday versus weekend activity, and morning, afternoon, evening, and night distribution.
- **Messages and sharing** — counts conversations and sent or received messages, then ranks accounts by direct-message and Reels sharing volume.
- **Additional reports** — displays story likes, close friends, sent and received follow requests, saved content, and categorized interests when those files exist in the export.
- **Alerts** — creates data-driven alerts for non-reciprocal follows, estimated ghost followers, and pending follow requests, with persisted read state.
- **Guided experience** — includes a four-step Instagram export tutorial, Turkish and English localization, and persisted light or dark themes.

---

## 🛠 Tech Stack

| Category | Technologies |
| --- | --- |
| Application | Flutter, Dart, Material Design |
| Platforms | Android, iOS |
| State management | Provider, `ChangeNotifier`, `MultiProvider` |
| Data processing | `archive`, `dart:convert`, Flutter `compute` |
| Local storage | Application documents directory, Shared Preferences |
| File and link integration | File Picker, Path Provider, URL Launcher |
| Localization | Flutter Localizations, custom Turkish and English dictionaries |
| Tooling | Flutter Test, Flutter Lints, Flutter Launcher Icons, Gradle, CocoaPods |

---

## 🏗 Architecture

The app uses a lightweight layered architecture split between reusable core logic and the presentation layer.

| Layer | Responsibility |
| --- | --- |
| `core/models` | Represents imported Instagram users, likes, comments, messages, interests, saved items, and aggregate data. |
| `core/services` | Decodes ZIP archives and parses supported JSON structures. |
| `core/providers` | Owns imported data, loading and error state, computed analytics, and local persistence. |
| `presentation/providers` | Stores UI settings and alert read state. |
| `presentation/screens` | Implements onboarding, upload, dashboard, analysis, report, and settings flows. |
| `presentation/widgets` | Provides reusable dashboard, report, tutorial, settings, and alert components. |

`MultiProvider` creates the shared `InstagramDataProvider`, `AppSettingsProvider`, and `AlertsProvider` instances at startup. Widgets subscribe to these `ChangeNotifier` objects and rebuild when imported data or preferences change.

Navigation uses `MaterialPageRoute`. The splash screen restores local data and routes to either onboarding or the dashboard. The dashboard contains four in-page destinations: Home, Reports, Alerts, and Settings.

```text
Instagram JSON ZIP
        |
        v
File Picker -> InstagramDataParser -> InstagramDataProvider
                                         |
                         +---------------+---------------+
                         |                               |
                         v                               v
                 Local JSON storage              Provider consumers
                                                        |
                                                        v
                                      Dashboard, reports, and alerts
```

The parser runs through `compute` to keep ZIP decoding away from the UI isolate. Parsed models are serialized to the app documents directory, while theme, language, alert state, and update metadata are stored with Shared Preferences. Dependency injection is limited to Provider registration, and parsing helpers are static.

---

## 📂 Project Structure

```text
socialsense/
├── lib/
│   ├── core/
│   │   ├── constants/       # Shared colors
│   │   ├── localization/    # Turkish and English UI strings
│   │   ├── models/          # Imported data models and analytics
│   │   ├── providers/       # Instagram data state and persistence
│   │   ├── services/        # ZIP parser
│   │   ├── theme/           # Light and dark Material themes
│   │   └── utils/           # Instagram profile and content launchers
│   ├── presentation/
│   │   ├── providers/       # Settings and alert state
│   │   ├── screens/         # User-facing flows and detail pages
│   │   └── widgets/         # Reusable cards and controls
│   └── main.dart            # App bootstrap and provider registration
├── assets/                  # App logo and bilingual tutorial images
├── demo/ss/                 # Repository screenshots
├── android/                 # Android runner and Gradle configuration
├── ios/                     # iOS runner and CocoaPods configuration
├── test/                    # Flutter widget tests
└── pubspec.yaml             # Package metadata, dependencies, and assets
```

Flutter runner scaffolding also exists for web, macOS, Linux, and Windows. The current ad service and native ad configuration are implemented for Android and iOS.

---

## 🚀 Getting Started

### Requirements

- Flutter stable compatible with Dart `^3.10.1`; the project metadata currently records Flutter `3.38.3`.
- Android Studio or the Android SDK and JDK 17 for Android development.
- macOS, Xcode, and CocoaPods for iOS development.

### Installation

```bash
git clone https://github.com/Atarapa0/socialsense-insta.git
cd socialsense-insta
flutter pub get
```

### Configuration

The project does not read environment variables. Android release signing uses local files that are excluded by `.gitignore`:

| File | Required configuration |
| --- | --- |
| `android/key.properties` | Points Gradle to the release keystore and supplies its alias and credentials. |
| `android/app/*.jks` | Contains the Android release signing key referenced by `key.properties`. |

Production signing credentials should remain outside version control.

### Run

```bash
flutter run
```

Choose a target explicitly when multiple devices are available:

```bash
flutter devices
flutter run -d <device-id>
```

### Build

```bash
# Android APK
flutter build apk

# Android App Bundle
flutter build appbundle

# iOS archive input; requires macOS and Xcode signing configuration
flutter build ios
```

### Quality Checks

```bash
flutter analyze
flutter test
```

Regenerate launcher icons after changing the source logo:

```bash
dart run flutter_launcher_icons
```

---

## 📸 Screenshots

| Home — Dark | Reports — Dark | Messages and Reels — Dark |
| :---: | :---: | :---: |
| <img src="demo/ss/home_tr.jpg" alt="SocialSense home screen in dark mode" width="240"> | <img src="demo/ss/reports_tr.jpg" alt="SocialSense reports screen in dark mode" width="240"> | <img src="demo/ss/messenges_reels_tr.jpg" alt="SocialSense messages and Reels report in dark mode" width="240"> |

| Home — Light | Alerts — Light | Messages and Reels — Light |
| :---: | :---: | :---: |
| <img src="demo/ss/white_home_tr.jpg" alt="SocialSense home screen in light mode" width="240"> | <img src="demo/ss/alert%20en.jpg" alt="SocialSense alerts screen in light mode" width="240"> | <img src="demo/ss/messenges_reels_en.jpg" alt="SocialSense messages and Reels report in light mode" width="240"> |

---

## 🗺 Roadmap

- Implement alert dismissal and clear-all behavior.
- Replace the comment activity placeholder with a computed time series.
- Connect the cache-clearing setting to stored cache data.
- Use the packaged logo on the welcome screen.

---

## 🤝 Contributing

1. Fork the repository and create a focused branch.
2. Keep changes consistent with the existing `core` and `presentation` boundaries.
3. Run `flutter analyze` and `flutter test`.
4. Submit a pull request describing the behavior and verification performed.

Do not commit Instagram exports, ZIP archives, ad credentials, or signing keys.

---
## Copyright

Copyright © 2026 Furkan Erdoğan. All rights reserved.

This repository is published for portfolio purposes only.
Unauthorized copying, modification, redistribution, or commercial use of this source code is prohibited without prior written permission.
