# cordova-plugin-lottie-splashscreen

[![Build Status](https://travis-ci.org/timbru31/cordova-plugin-lottie-splashscreen.svg?branch=master)](https://travis-ci.org/timbru31/cordova-plugin-lottie-splashscreen)

[![Dependency Status](https://david-dm.org/timbru31/cordova-plugin-lottie-splashscreen.svg)](https://david-dm.org/timbru31/cordova-plugin-lottie-splashscreen)
[![devDependency Status](https://david-dm.org/timbru31/cordova-plugin-lottie-splashscreen/dev-status.svg)](https://david-dm.org/timbru31/cordova-plugin-lottie-splashscreen#info=devDependencies)
[![Known Vulnerabilities](https://snyk.io/test/github/timbru31/cordova-plugin-lottie-splashscreen/badge.svg)](https://snyk.io/test/github/timbru31/cordova-plugin-lottie-splashscreen)

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](https://commitizen.github.io/cz-cli/)
[![Dependabot Status](https://api.dependabot.com/badges/status?host=github&repo=timbru31/cordova-plugin-lottie-splashscreen)](https://dependabot.com)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![npm](https://img.shields.io/npm/v/cordova-plugin-lottie-splashscreen.svg)](https://www.npmjs.com/package/cordova-plugin-lottie-splashscreen)

#### Cordova plugin to show bodymovin/Lottie animations as the splash screen with [Airbnb's Lottie](https://airbnb.io/lottie/) wrapper

### Supported platforms

-   **iOS (10+) (with cordova-ios >= 5.0.0 only)**
-   **Android (with cordova-android >= 8.0.0 only)**

### Planned platforms

-   **macOS** (currently on hold until cordova-osx has a better Swift and CocoaPods support)

#### Prerequisites/Warnings

#### iOS

You need to have [CocoaPods](https://cocoapods.org/) installed because [lottie-ios](https://cocoapods.org/pods/lottie-ios) is fetched from there.

```sh
$ sudo gem install cocoapods
$ pod setup
```

##### Caveats

Only **cordova >= 9.0.0** and **cordova-ios >= 5.0.0** are supported.  
You need to specify a valid SwiftVersion (minimum is 4.2) in your `config.xml` (see https://cordova.apache.org/docs/en/latest/config_ref/)

#### Android

AndroidX support is required for lottie-android >= 2.8.0.  
In order to use version >= v0.7.0 you need to configure AndroidX support.  
In case you do not manually build the project and edit the files in Android Studio, these two plugins might be required: https://github.com/dpa99c/cordova-plugin-androidx and https://github.com/dpa99c/cordova-plugin-androidx-adapter.  
In the [FAQ](FAQ.md) are some examples with common error messages and how to fix them.

### Installation

#### from npm (recommended)

`$ cordova plugin add cordova-plugin-lottie-splashscreen`

#### from git (unstable)

`$ cordova plugin add https://github.com/timbru31/cordova-plugin-cordova-plugin-lottie-splashscreen.git`

### Usage

This Cordova plugin is meant as a replacement for the stock [cordova-plugin-splashscreen](https://github.com/apache/cordova-plugin-splashscreen).  
An example project can be found in the `example` folder.

#### Methods

-   lottie.splashscreen.hide
-   lottie.splashscreen.show
-   lottie.splashscreen.on
-   lottie.splashscreen.once

##### lottie.splashscreen.hide

This methods hides the current active Lottie splashscreen and destroys the views. Returns a Promise which is resolved with "OK" in the success case or the error message when it's failed.

```js
await lottie.splashscreen.hide();
```

##### lottie.splashscreen.show

This method shows a Lottie splash screen. If no arguments are given, it defaults to the `config.xml` values, however you can pass (new) options here to change the behavior on runtime. Returns a Promise which is resolved with "OK" in the success case or the error message when it's failed. (For easier reading the TypeScript notation is used)

```ts
await lottie.splashscreen.show(location?: string, remote?: boolean, width?: number, height?: number)
```

##### lottie.splashscreen.on

This method listens to custom lottie events that are dispatched from the native side and invokes a configured callback function. If the `event` parameter is a falsy value, such as `null` or `""`, the method will listen to all Lottie events. (For easier reading the TypeScript notation is used)

```ts
type LottieEvent = 'lottieAnimationStart' | 'lottieAnimationEnd' | 'lottieAnimationCancel' | 'lottieAnimationRepeat';

lottie.splashscreen.on(event: LottieEvent, callback: (ev: Event) => void);
```

##### lottie.splashscreen.once

This method listens to a custom lottie event once and resolves the Promise once the event has been called. (For easier reading the TypeScript notation is used)

```ts
type LottieEvent = 'lottieAnimationStart' | 'lottieAnimationEnd' | 'lottieAnimationCancel' | 'lottieAnimationRepeat';

await lottie.splashscreen.once(event: LottieEvent).then(event => console.log(event));
```

### Preferences

-   `LottieRemoteEnabled` (Boolean, default `false`). Toggles Lottie's remote mode which allows files to be downloaded/displayed from URLs. Example:

```xml
    <preference name="LottieRemoteEnabled" value="true" />
```

-   `LottieAnimationLocation` (String, default `""`). Location of the Lottie JSON file that should be loaded. Can either be a URL (if `LottieRemoteEnabled` is `true`) or a local JSON or ZIP file (e.g. `www/lottie/error.json`).

```xml
    <preference name="LottieAnimationLocation" value="https://assets.lottiefiles.com/datafiles/99nA1a7mkSF3Oz8/data.json" />
```

-   `LottieImagesLocation` (String, default `path of LottieAnimationLocation`). **Android only!** Location of the Lottie images folder specified by the JSON.

```xml
    <preference name="LottieImagesLocation" value="www/lottie/images" />
```

-   `LottieCancelOnTap` (Boolean, default `false`). Immediately cancels the Lottie animation when the user taps on the screen.

```xml
    <preference name="LottieCancelOnTap" value="true" />
```

-   `LottieHideTimeout` (Double for iOS and Integer for Android, default `0`). Duration after which the Lottie animation should be hidden. **CAUTION:** iOS reads this value in **SECONDS**, but e.g., `0.5` is supported. Android reads this value in **MILLISECONDS**!

```xml
    <preference name="LottieHideTimeout" value="?" /> <!-- CAUTION: iOS reads this value in **SECONDS**, Android reads this value in **MILLISECONDS**>
```

-   `LottieBackgroundColor` (String, default `#ffffff`). Background color of the overlay. Can be used with alpha values, too. (For more information see the [8 digits notation of RGB notation](https://drafts.csswg.org/css-color/#hex-notation))

```xml
    <preference name="LottieBackgroundColor" value="#fff000a3" />
```

-   `LottieWidth` (Integer, default `200`). Width of the container that's rendering the Lottie animation

```xml
    <preference name="LottieWidth" value="750" />
```

-   `LottieHeight` (Integer, default `200`). Height of the container that's rendering the Lottie animation

```xml
    <preference name="LottieHeight" value="750" />
```

-   `LottieRelativeSize` (Boolean, default `false`). Uses width and height values as relative values. Specify them as e.g. `0.3` to have 30%.

```xml
    <preference name="LottieRelativeSize" value="true" />
```

-   `LottieFullScreen` (Boolean, default `false`). Renders the animation in full screen. Ignores properties above.

```xml
    <preference name="LottieFullScreen" value="true" />
```

-   `LottieLoopAnimation` (Boolean, default `false`). Loops the animation

```xml
    <preference name="LottieLoopAnimation" value="true" />
```

-   `LottieAutoHideSplashScreen` (Boolean, default `false`). Hides the Lottie splash screen when the `pageDidLoad` event fired

```xml
    <preference name="LottieAutoHideSplashScreen" value="true" />
```

-   `LottieEnableHardwareAcceleration` (Boolean, default `false`). **Android only!** Enables hardware acceleration for the animation view. Not really recommended since Lottie decides automatically whether the hardware mode should be used or not.

```xml
    <preference name="LottieEnableHardwareAcceleration" value="true" />
```

-   `LottieScaleType` (String, default `FIT_CENTER`). **Android only!** Scale type of the view. Can be one of the following: https://developer.android.com/reference/android/widget/ImageView.ScaleType

```xml
    <preference name="LottieScaleType" value="CENTER_CROP" />
```

-   `LottieFadeOutDuration` (Double for iOS and Integer for Android, default `0`). Duration for the fade out animation. **CAUTION:** iOS reads this value in **SECONDS**, but e.g., `0.5` is supported. Android reads this value in **MILLISECONDS**! the Set to `0` disable the fade out animation.

```xml
    <preference name="LottieFadeOutDuration" value="?" /> <!-- CAUTION: iOS reads this value in **SECONDS**, Android reads this value in **MILLISECONDS**>
```

-   `LottieHideAfterAnimationEnd` (Boolean, default `false`). Hides the Lottie splash screen after the animation has been played. Do not use together with `LottieAutoHideSplashScreen` or `LottieLoopAnimation`

```xml
    <preference name="LottieHideAfterAnimationEnd" value="true" />
```

-   `LottieCacheDisabled` (Boolean, default `false`). Disables caching of animations.

```xml
    <preference name="LottieCacheDisabled" value="true" />
```

---

Built by (c) Tim Brust and contributors. Released under the MIT license.
