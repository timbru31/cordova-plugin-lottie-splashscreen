"use strict";
var cordova_1 = require("cordova");
var lottieEvents = ['lottieAnimationStart', 'lottieAnimationEnd', 'lottieAnimationRepeat', 'lottieAnimationCancel'];
var LottieSplashScreen = (function () {
    function LottieSplashScreen() {
    }
    LottieSplashScreen.hide = function () {
        this.animationEnded = true;
        return new Promise(function (resolve, reject) {
            cordova_1.exec(resolve, reject, 'LottieSplashScreen', 'hide', []);
        });
    };
    LottieSplashScreen.show = function (location, remote, width, height) {
        this.animationEnded = false;
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
LottieSplashScreen.on('lottieAnimationStart', function () { return (LottieSplashScreen.animationEnded = false); });
LottieSplashScreen.on('lottieAnimationCancel', function () { return (LottieSplashScreen.animationEnded = true); });
LottieSplashScreen.on('lottieAnimationEnd', function () { return (LottieSplashScreen.animationEnded = true); });
document.addEventListener('deviceready', function () {
    cordova_1.exec(function (data) {
        var payload = Boolean(data);
        if (!LottieSplashScreen.animationEnded && payload) {
            document.dispatchEvent(new Event('lottieAnimationEnd'));
        }
        LottieSplashScreen.animationEnded = payload;
    }, console.error, 'LottieSplashScreen', 'initialAnimationEnded', []);
});
module.exports = LottieSplashScreen;
