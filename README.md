# cordova-plugin-lottie-splashscreen

[![Run a security audit](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/workflows/Run%20a%20security%20audit/badge.svg)](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/actions?query=workflow%3A%22Run+a+security+audit%22)
[![Linting](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/workflows/Linting/badge.svg)](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/actions?query=workflow%3ALinting)
[![Smoke test on Ubuntu (Apache Cordova)](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/actions/workflows/smoke-test-ubuntu.yml/badge.svg)](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/actions/workflows/smoke-test-ubuntu.yml)
[![Smoke test on Ubuntu (Ionic)](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/actions/workflows/smoke-test-ubuntu-ionic.yml/badge.svg)](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/actions/workflows/smoke-test-ubuntu-ionic.yml)
[![Smoke test on macOS](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/workflows/Smoke%20test%20on%20macOS/badge.svg)](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/actions?query=workflow%3A%22Smoke+test+on+macOS%22)
[![Smoke test on Windows](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/workflows/Smoke%20test%20on%20Windows/badge.svg)](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/actions?query=workflow%3A%22Smoke+test+on+Windows%22)

[![dependency Status](https://img.shields.io/librariesio/release/npm/cordova-plugin-lottie-splashscreen)](https://github.com/timbru31/cordova-plugin-lottie-splashscreen/network/dependencies)
[![Known Vulnerabilities](https://snyk.io/test/github/timbru31/cordova-plugin-lottie-splashscreen/badge.svg)](https://snyk.io/test/github/timbru31/cordova-plugin-lottie-splashscreen)

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](https://commitizen.github.io/cz-cli/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![npm](https://img.shields.io/npm/v/cordova-plugin-lottie-splashscreen.svg)](https://www.npmjs.com/package/cordova-plugin-lottie-splashscreen)

#### Apache Cordova plugin to show bodymovin/Lottie animations as the splash screen with [Airbnb's Lottie](https://airbnb.io/lottie/) wrapper

### Supported platforms

-   **iOS (11+) (with cordova-ios >= 5.0.0 only)**
-   **Android (with cordova-android >= 10.0.0 only)**

### Planned platforms

-   **macOS** (currently on hold until cordova-osx has a better Swift and CocoaPods support or cordova-ios gains Catalyst support)

#### Prerequisites/Warnings

#### iOS

You need to have [CocoaPods](https://cocoapods.org/) installed because [lottie-ios](https://cocoapods.org/pods/lottie-ios) is fetched from there.

```sh
$ sudo gem install cocoapods
$ pod setup
```

##### Caveats

Only **cordova >= 9.0.0** and **cordova-ios >= 5.0.0** are supported.  
You need to specify a valid `SwiftVersion` (minimum is 5.5) in your `config.xml`. (see https://cordova.apache.org/docs/en/latest/config_ref/)

#### Android

AndroidX and Kotlin support is required. Therefore only **cordova-android >= 9.0.0** is supported.  
If you use `cordova-android` <10.0.0 then you need to enable Kotlin and AndroidX in your `config.xml` by setting `GradlePluginKotlinEnabled` **and** `AndroidXEnabled` to `true`.  
In the [FAQ](FAQ.md) are some examples with common error messages and how to fix them.

### Installation

#### from npm (recommended)

`$ cordova plugin add cordova-plugin-lottie-splashscreen`

#### from git (unstable)

`$ cordova plugin add https://github.com/timbru31/cordova-plugin-lottie-splashscreen.git`

### Usage

This Apache Cordova plugin is meant as a replacement for the stock [cordova-plugin-splashscreen](https://github.com/apache/cordova-plugin-splashscreen).  
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

-   `LottieAnimationLocationLight` (String, default `""`). Location of the Lottie JSON file that should be loaded in light mode. Can either be a URL (if `LottieRemoteEnabled` is `true`) or a local JSON or ZIP file (e.g. `www/lottie/error.json`).

```xml
    <preference name="LottieAnimationLocationLight" value="https://assets.lottiefiles.com/datafiles/99nA1a7mkSF3Oz8/data.json" />
```

-   `LottieAnimationLocationDark` (String, default `""`). Location of the Lottie JSON file that should be loaded in dark mode. Can either be a URL (if `LottieRemoteEnabled` is `true`) or a local JSON or ZIP file (e.g. `www/lottie/error.json`).

```xml
    <preference name="LottieAnimationLocationDark" value="https://assets.lottiefiles.com/datafiles/99nA1a7mkSF3Oz8/data.json" />
```

-   `LottieAnimationLocation` (String, default `""`). Location of the Lottie JSON file that should be loaded as a fallback if there are no dark or light mode animations defined or if one of them is an invalid location. Can either be a URL (if `LottieRemoteEnabled` is `true`) or a local JSON or ZIP file (e.g. `www/lottie/error.json`).

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

-   `LottieBackgroundColorLight` (String, default `#ffffff`). Background color of the overlay in light. Can be used with alpha values, too. (For more information see the [8 digits notation of RGB notation](https://drafts.csswg.org/css-color/#hex-notation))

```xml
    <preference name="LottieBackgroundColorLight" value="#fff000a3" />
```

-   `LottieBackgroundColorDark` (String, default `#ffffff`). Background color of the overlay in dark mode. Can be used with alpha values, too. (For more information see the [8 digits notation of RGB notation](https://drafts.csswg.org/css-color/#hex-notation))

```xml
    <preference name="LottieBackgroundColorDark" value="#fff000a3" />
```

-   `LottieBackgroundColor` (String, default `#ffffff`). Background color of the overlay as a fallback if there are no dark or light mode colors defined. Can be used with alpha values, too. (For more information see the [8 digits notation of RGB notation](https://drafts.csswg.org/css-color/#hex-notation))

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
