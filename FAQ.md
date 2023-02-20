# Table of Contents

1. [Hook failed with error code 127](#hook-failed-with-error-code-127)
2. [Manifest merger failed](#manifest-merger-failed)
3. [error: cannot find symbol](#error-cannot-find-symbol)
4. [error: Value for SWIFT_VERSION cannot be empty](#error-value-for-swift_version-cannot-be-empty)
5. [error: SWIFT_VERSION '5.0' is unsupported, supported versions are: 3.0, 4.0, 4.2. (in target 'lottie-ios')](#error-swift_version-50-is-unsupported-supported-versions-are-30-40-42-in-target-lottie-ios)
6. [Error: pod: Command failed with exit code 1 Error output:](#error-pod-command-failed-with-exit-code-1-error-output)
7. [Hook failed with error code 1](#error-hook-failed-with-error-code-1)
8. [FAILURE: Build failed with an exception.](#failure-build-failed-with-an-exception)
9. [E/AndroidRuntime: FATAL EXCEPTION: main](#eandroidruntime-fatal-exception-main)
10. [Help my background color is not displayed correctly on Android](#help-my-background-color-is-not-displayed-correctly-on-android)
11. [xcode-select is a command line tools instance](#xcode-select-is-a-command-line-tools-instance)

---

## Hook failed with error code 127

The following error message appeared:

```sh
➜ cordova plugin add cordova-plugin-lottie-splashscreen
Installing "cordova-plugin-lottie-splashscreen" for ios
Running command: /Users/timbru31/work/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh /Users/timbru31/work/hello
/Users/timbru/work/ume/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh: line 2: pod: command not found
/Users/timbru/work/ume/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh: line 3: pod: command not found
Failed to install 'cordova-plugin-lottie-splashscreen': Error: Hook failed with error code 127: /Users/timbru31/work/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh
    at /usr/local/lib/node_modules/cordova/node_modules/cordova-lib/src/hooks/HooksRunner.js:224:23
    at _rejected (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:864:24)
    at /usr/local/lib/node_modules/cordova/node_modules/q/q.js:890:30
    at Promise.when (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:1142:31)
    at Promise.promise.promiseDispatch (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:808:41)
    at /usr/local/lib/node_modules/cordova/node_modules/q/q.js:624:44
    at runSingle (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:137:13)
    at flush (/usr/local/lib/node_modules/cordova/node_modules/q/q.js:125:13)
    at processTicksAndRejections (internal/process/task_queues.js:79:9)
Hook failed with error code 127: /Users/timbru31/work/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh
```

### Answer

It seems that the `pod` gem (the [package manager for Swift and Objective-C](https://cocoapods.org/) projects) is not installed. Fix it with:

```sh
$ sudo gem install cocoapods
$ cordova plugin add cordova-plugin-lottie-splashscreen
```

## Manifest merger failed

```
> Manifest merger failed : Attribute application@appComponentFactory value=(android.support.v4.app.CoreComponentFactory) from [com.android.support:support-compat:28.0.0] AndroidManifest.xml:22:18-91
  	is also present at [androidx.core:core:1.0.0] AndroidManifest.xml:22:18-86 value=(androidx.core.app.CoreComponentFactory).
  	Suggestion: add 'tools:replace="android:appComponentFactory"' to <application> element at AndroidManifest.xml:5:5-12:19 to override.
```

### Answer

Install the add cordova-plugin-androidx and cordova-plugin-androidx-adapter plugins.

```sh
$ cordova plugin add cordova-plugin-androidx
$ cordova plugin add cordova-plugin-androidx-adapter
```

## error: cannot find symbol

```
/Users/timbrust/Coding/cordova-hello-world/platforms/android/app/src/main/java/cordova/plugins/Diagnostic_Notifications.java:35: error: cannot find symbol
import android.support.v4.app.NotificationManagerCompat;
```

### Answer

Install the add cordova-plugin-androidx and cordova-plugin-androidx-adapter plugins.

```sh
$ cordova plugin add cordova-plugin-androidx
$ cordova plugin add cordova-plugin-androidx-adapter
```

## error: Value for SWIFT_VERSION cannot be empty

```
error: Value for SWIFT_VERSION cannot be empty. (in target 'HelloCordova')

** BUILD FAILED **

xcodebuild: Command failed with exit code 65
```

### Answer

Add the following preference to the `config.xml` iOS section: `<preference name="SwiftVersion" value="5" />`.

## error: SWIFT_VERSION '5.0' is unsupported, supported versions are: 3.0, 4.0, 4.2. (in target 'lottie-ios')

```
error: SWIFT_VERSION '5.0' is unsupported, supported versions are: 3.0, 4.0, 4.2. (in target 'lottie-ios')
```

### Answer

Make sure to set a valid `SwiftVersion` value. For Swift 5 it is `5` and not `5.0`. Please make sure to use a recent Xcode version that supports the desired Swift version, too.

## Error: pod: Command failed with exit code 1 Error output:

```
Running command: pod install --verbose
  Cloning into 'cocoapods-'...

  fatal: repository 'https://cdn.cocoapods.org/' not found

Failed to install 'cordova-plugin-lottie-splashscreen': Error: pod: Command failed with exit code 1 Error output:
Cloning into 'cocoapods-'...
  fatal: repository 'https://cdn.cocoapods.org/' not found
    at ChildProcess.whenDone (/Users/timbrust/Coding/cordova-plugin-lottie-splashscreen/example/node_modules/cordova-common/src/superspawn.js:135:23)
    at ChildProcess.emit (events.js:305:20)
    at maybeClose (internal/child_process.js:1028:16)
    at Socket.<anonymous> (internal/child_process.js:443:11)
    at Socket.emit (events.js:305:20)
    at Pipe.<anonymous> (net.js:667:12)
Failed to restore plugin "cordova-plugin-lottie-splashscreen" from config.xml. You might need to try adding it again. Error: Error: pod: Command failed with exit code 1 Error output:
Cloning into 'cocoapods-'...
  fatal: repository 'https://cdn.cocoapods.org/' not found
```

### Answer

Your CocoaPods installation is outdated and can't use the much faster CDN. Update it with: `sudo gem install cocoapods`.

## error: Hook failed with error code 1

```
Running command: /Users/tim.brust/Coding/ume/cordova-plugin-lottie-splashscreen/example/plugins/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh /Users/tim.brust/Coding/ume/cordova-plugin-lottie-splashscreen/example
/System/Library/Frameworks/Ruby.framework/Versions/2.3/usr/lib/ruby/2.3.0/rubygems.rb:241:in `bin_path': can't find gem cocoapods (>= 0.a) (Gem::GemNotFoundException) from /usr/local/bin/pod:22:in`<main>'
Hook failed with error code 1: /Users/tim.brust/Coding/ume/cordova-plugin-lottie-splashscreen/example/plugins/cordova-plugin-lottie-splashscreen/hooks/ios/update_pod_repo.sh
```

### Answer

It seems that the `pod` gem (the [package manager for Swift and Objective-C](https://cocoapods.org/) projects) is not installed. Fix it with:

```sh
$ sudo gem install cocoapods
$ cordova plugin add cordova-plugin-lottie-splashscreen
```

## FAILURE: Build failed with an exception.

```
FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':app:mergeDebugResources'.
> This project uses AndroidX dependencies, but the 'android.useAndroidX' property is not enabled. Set this property to true in the gradle.properties file and retry.
```

### Answer

Use cordova-android >=9.0.0. Set `AndroidXEnabled` to `true` in your config.xml.

## E/AndroidRuntime: FATAL EXCEPTION: main

```
2020-06-29 11:20:54.578 10355-10355/de.dustplanet.lottie E/AndroidRuntime: FATAL EXCEPTION: main
    Process: de.dustplanet.lottie, PID: 10355
    java.lang.RuntimeException: Unable to start activity ComponentInfo{de.dustplanet.lottie/de.dustplanet.lottie.MainActivity}: java.lang.NullPointerException: Attempt to invoke virtual method 'void org.apache.cordova.CordovaPlugin.privateInitialize(java.lang.String, org.apache.cordova.CordovaInterface, org.apache.cordova.CordovaWebView, org.apache.cordova.CordovaPreferences)' on a null object reference
```

### Answer

Use cordova-android >=9.0.0. Set `GradlePluginKotlinEnabled` to `true` in your config.xml.

## Help my background color is not displayed correctly on Android

If you experience wrong background colors on Android, especially with leading zeros, you've probably ran into an internal Android issue (AAPT2 parsing bug) that _swallows_ leading zeros and changes the color value.

### Answer

You can add a `build-extras.gradle` file in the `platforms/android` folder with the following content to workaround the issue:

```gradle
android {
    aaptOptions {
        additionalParameters "--keep-raw-values"
    }
}
```

## xcode-select is a command line tools instance

```
xcodebuild: Command failed with exit code 1 Error output:
xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance
```

### Answer

You need to make sure to install Xcode and re-link the command line tools: `sudo xcode-select -s /Applications/Xcode.app/Contents/Developer`
