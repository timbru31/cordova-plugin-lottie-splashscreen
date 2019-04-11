#!/usr/bin/env node

var fs = require('fs');

var pluginLocation = 'plugins/cordova-plugin-lottie-splashscreen/hooks/android';

var buildGradle = fs.readFileSync(`platforms/android/build.gradle`);
if (buildGradle.indexOf('classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"') === -1) {
    fs.appendFileSync('platforms/android/build.gradle', fs.readFileSync(`${pluginLocation}/android-build-extras.gradle`));
}

var buildExtrasGradle = fs.existsSync(`platforms/android/app/build-extras.gradle`);
if (!buildExtrasGradle || fs.readFileSync(`platforms/android/app/build-extras.gradle`).indexOf("apply plugin: 'kotlin-android'") === -1) {
    fs.appendFileSync('platforms/android/app/build-extras.gradle', fs.readFileSync(`${pluginLocation}/app-build-extras.gradle`));
}
