"use strict";
var cordova_1 = require("cordova");
var lottieEvents = ['lottieAnimationStart', 'lottieAnimationEnd', 'lottieAnimationRepeat', 'lottieAnimationCancel'];
var LottieSplashScreen = (function () {
    function LottieSplashScreen() {
    }
    LottieSplashScreen.hide = function () {
        return new Promise(function (resolve, reject) {
            cordova_1.exec(resolve, reject, 'LottieSplashScreen', 'hide', []);
        });
    };
    LottieSplashScreen.show = function (location, remote, width, height) {
        return new Promise(function (resolve, reject) {
            cordova_1.exec(resolve, reject, 'LottieSplashScreen', 'show', [location, remote, width, height]);
        });
    };
    LottieSplashScreen.on = function (event, callback) {
        if (event) {
            document.addEventListener(event, callback);
        }
        else {
            for (var _i = 0, lottieEvents_1 = lottieEvents; _i < lottieEvents_1.length; _i++) {
                var lottieEvent = lottieEvents_1[_i];
                document.addEventListener(lottieEvent, callback);
            }
        }
    };
    LottieSplashScreen.once = function (event) {
        return new Promise(function (resolve, _) {
            document.addEventListener(event, resolve);
        });
    };
    return LottieSplashScreen;
}());
module.exports = LottieSplashScreen;
