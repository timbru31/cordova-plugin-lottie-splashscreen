"use strict";
var cordova_1 = require("cordova");
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
    LottieSplashScreen.on = function (event) {
        return new Promise(function (resolve, _) {
            document.addEventListener(event, resolve);
        });
    };
    return LottieSplashScreen;
}());
module.exports = LottieSplashScreen;
