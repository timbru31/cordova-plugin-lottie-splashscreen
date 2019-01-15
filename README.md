# cordova-plugin-lottie-splashscreen
[![Build Status](https://travis-ci.org/timbru31/cordova-plugin-lottie-splashscreen.svg?branch=master)](https://travis-ci.org/timbru31/cordova-plugin-lottie-splashscreen)

[![Dependency Status](https://david-dm.org/timbru31/cordova-plugin-lottie-splashscreen.svg)](https://david-dm.org/timbru31/cordova-plugin-lottie-splashscreen)
[![devDependency Status](https://david-dm.org/timbru31/cordova-plugin-lottie-splashscreen/dev-status.svg)](https://david-dm.org/timbru31/cordova-plugin-lottie-splashscreen#info=devDependencies)
[![Known Vulnerabilities](https://snyk.io/test/github/timbru31/cordova-plugin-lottie-splashscreen/badge.svg)](https://snyk.io/test/github/timbru31/cordova-plugin-lottie-splashscreen)

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![Dependabot Status](https://api.dependabot.com/badges/status?host=github&repo=timbru31/cordova-plugin-lottie-splashscreen)](https://dependabot.com)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![npm](https://img.shields.io/npm/v/cordova-plugin-lottie-splashscreen.svg)](https://www.npmjs.com/package/cordova-plugin-lottie-splashscreen)

#### Cordova plugin to show bodymovin/Lottie animations as the splash screen with [Airbnb's Lottie](http://airbnb.io/lottie/) wrapper

### Supported platforms

* **iOS (8+)**
* **Android**

### Planned platforms

* **macOS**

#### Prerequisites

#### iOS
You need to have [CocoaPods](https://cocoapods.org/) installed because the [lottie-ios](https://cocoapods.org/pods/lottie-ios) is fetched from there.  
`$ sudo gem install cocoapods`

#### Android
You need to modify the `target=android-27` to `target=android-28` in `platforms/android/project.properties` because AndroidX support is required.  
Once Cordova has bumped the target SDK version, this is no longer needed. (This will be the case with cordova-android v8)

### Installation

#### from npm (recommended)
`$ cordova plugin add cordova-plugin-cordova-plugin-lottie-splashscreen`

#### from git (unstable)
`$ cordova plugin add https://github.com/timbru31/cordova-plugin-cordova-plugin-lottie-splashscreen.git`

### Usage

This Cordova plugin is meant as a replacement for the stock [cordova-plugin-splashscreen](https://github.com/apache/cordova-plugin-splashscreen).

#### Methods

* lottie.splashscreen.hide
* lottie.splashscreen.show

##### lottie.splashscreen.hide

This methods hides the current active Lottie splashscreen and destroys the views.
```js
lottie.splashscreen.hide()
```

##### lottie.splashscreen.show

This method shows a Lottie splash screen. If no arguments are given, it defaults to the `config.xml` values, however you can pass (new) options here to change the behavior on runtime. (For easier reading the TypeScript notation is used)

```ts
lottie.splashscreen.show(location?: string, remote?: boolean, width?: number, height?: number)
```

### Preferences

* `LottieRemoteEnabled` (Boolean, default `false`). Toggles Lottie's remote mode which allows files to be downloaded/displayed from URLs. Example:
```xml
    <preference name="LottieRemoteEnabled" value="true" />
```

* `LottieAnimationLocation` (String, default `""`). Location of the Lottie JSON file that should be loaded. Can either be a URL (if `LottieRemoteEnabled` is `true`) or a local JSON file (e.g. `www/lottie/error.json`).
```xml
    <preference name="LottieAnimationLocation" value="https://assets.lottiefiles.com/datafiles/99nA1a7mkSF3Oz8/data.json" />
```

* `LottieCancelOnTap` (Boolean, default `false`). Immediately cancels the Lottie animation when the user taps on the screen.
```xml
    <preference name="LottieCancelOnTap" value="true" />
```

* `LottieHideTimeout` (Double, default `0`). Duration in seconds after which the Lottie animation should be hidden.
```xml
    <preference name="LottieHideTimeout" value="10" />
```

* `LottieBackgroundColor` (String, default `#ffffff`). Background color of the overlay. Can be used with alpha values, too. (For more information see the [8 digits notation of RGB notation](https://drafts.csswg.org/css-color/#hex-notation))
```xml
    <preference name="LottieBackgroundColor" value="#fff000a3" />
```

* `LottieWidth` (Integer, default `200`). Width of the container that's rendering the Lottie animation
```xml
    <preference name="LottieWidth" value="750" />
```

* `LottieHeight` (Integer, default `200`). Height of the container that's rendering the Lottie animation
```xml
    <preference name="LottieHeight" value="750" />
```

* `LottieLoopAnimation` (Boolean, default `false`). Loops the animation
```xml
    <preference name="LottieLoopAnimation" value="true" />
```

* `AutoHideSplashScreen` (Boolean, default `false`). Hides the Lottie splash screen when the `pageDidLoad` event fired
```xml
    <preference name="AutoHideSplashScreen" value="true" />
```

---
Built by (c) Tim Brust and contributors. Released under the MIT license.
